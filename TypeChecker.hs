{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}

module TypeChecker where

import Data.Maybe
import AbsGo
import ErrM
import qualified Data.Map as M
import qualified Data.Set as St
import Data.Maybe
import Data.List
import Control.Monad.State as S

type Var = CIdent
type FName = CIdent
type EnvV = M.Map Var TCBasicType
type EnvF = M.Map FName Func
type CheckedFun = St.Set Var
type Env = (EnvV,EnvF,CheckedFun)

data Func = F (TCBasicType, [(Var, TCBasicType)], Block) | P ([(Var, TCBasicType)], Block)

data TCBasicType = T BasicType | A TCBasicType | R TCBasicType | None
   deriving (Eq, Ord)

instance Show TCBasicType where
   show (T BasicType_bool)   = "Bool"
   show (T BasicType_int)    = "Int"
   show (T BasicType_float)  = "Float"
   show (T BasicType_char)   = "Char"
   show (T BasicType_string) = "String"
   show (R t) = "&" ++ show t
   show (A t) = (show t) ++ "[]"
   show None = "None"

type TState = S.State Env

-- ERRORS
errorExpected t1 t2 f1 f2 = error $ concat ["Type error: expected: ",show t1,",",show t2,", found: ",show f1,",",show f2]
errorExpected2 t f = error $ concat ["Type error: expected: ",show t,", found: ",show f]
errorExpected3 t = error $ concat ["Type error: expected: numeric, found: ",show t]
errorExpected4 t1 t2 = error $ concat ["Type error: expected: numeric, found: ",show t1," and ",show t2]
errorExpected5 t1 t2 = error $ concat ["Type error: expected comparable types, found ",show t1," and ",show t2]
errorExpected6 t1 t2 = error $ concat ["Type error: mod operator expects 2 Int, found ",show t1," and ",show t2]
undefVar (CIdent x) = error $ "Name error: undefined variable: " ++ (show x)
undefFunc (CIdent f) = error $ "Name error: undefined function: " ++ (show f)
notArray = error $ "Type error: not an array"
notValidArrSub x = error $ "Type error: not valid array subscript: " ++ (show x)
wrongDimensions = error "Type error on array: incorrect number of dimensions"
argsNoMatch l1 l2 = let
                        l1' = concat ["(",intercalate "," (map show l1),")"]
                        l2' = concat ["(",intercalate "," (map show l2),")"]
                    in error $ concat ["Type error: mismatched function parameters. Expected: ",l1', ", found: ", l2']
arrayElemsError = error "Type error: array elements must be of same type"
invRetType = error "Type error: different return types in function declaration"
wrongRetType t1 t2 = error $ concat ["Type error: type of return value is ", (show t2), " while function type is ", (show t1)]
missingReturn = error "Missing return statement"
foundReturn = error "Found return statement in procedure declaration"
refTypeError = error "Type error: expected type, found reference"
errorMultAssign l1 l2 = error $ concat ["Error in multiple assign: ", "expected: ", show l1 , " values, found: ", show l2]
procAssign = error "Error: trying to initialize a variable with the output of a procedure"
errorRef = error "Type error: expected reference after dereference operator"
errorPostInc t = error $ "Type error: expected Int on post-increment, found " ++ show t
errorPostDecr t = error $ "Type error: expected Int on post-decrement, found " ++ show t

emptyEnv = (M.empty, M.empty, St.empty)

-- HELPER FUNCTIONS
newVar x t = modify (\(ev,ef,cf) -> (M.insert x t ev,ef,cf))
newFunc x t args s = modify (\(ev,ef,cf) -> (ev, M.insert x (F (t,args,s)) ef, St.delete x cf))
newProc x args s = modify (\(ev,ef,cf) -> (ev, M.insert x (P (args,s)) ef, St.delete x cf))

-- PROGRAM
checkProg :: Program -> IO ()
checkProg (Prog id p) = checkProg' p emptyEnv
                        where
                           checkProg' [] env = do
                                                return ()
                           checkProg' (s:ss) env = do
                                                      env' <- execStateT (checkStatement s) env
                                                      checkProg' ss env'

-- DECLARATIONS
checkDeclFun :: MonadState Env m => DeclFun -> m TCBasicType
checkDeclFun (DeclF x pd t s) = do
                              let t' = case toTCBasicType t of
                                          R _ -> refTypeError
                                          _ -> toTCBasicType t
                              newFunc x t' (getParams pd) s
                              t'' <- checkBlockFun (getParams pd) s
                              if (t'' == None)
                                then missingReturn
                                else if (t' /= t'')
                                  then wrongRetType t' t''
                                  else return None
checkDeclProc (DeclP x pd s) = do
                                newProc x (getParams pd) s
                                t <- checkBlockFun (getParams pd) s
                                if (t /= None)
                                  then error foundReturn
                                  else return None

checkDecl :: MonadState Env m => Decl -> m TCBasicType
checkDecl (DeclVar xs t) = do
                             let t' = toTCBasicType t
                             (mapM (\(x',t') -> newVar x' t') $ zip xs (replicate (length xs) t')) >> return None
checkDecl (DeclVarInit xs xe) = do
                                  xt <- mapM (\e -> checkExpr e) xe
                                  let lxs = length xs
                                  let les = length xe
                                  if lxs /= les
                                    then errorMultAssign lxs les
                                    else (mapM (\(x',t') -> checkNewVar x' t') $ zip xs xt) >> return None
                                    where checkNewVar x' t' = if t' /= None
                                                                then newVar x' t'
                                                                else procAssign
checkDecl (DeclVarInitType xs t xe) = do
                                  xt <- mapM (\e -> checkExpr e) xe
                                  let lxs = length xs
                                  let les = length xe
                                  if lxs /= les
                                    then errorMultAssign lxs les
                                    else (mapM (\(x',t') -> if check t t' then newVar x' t' else errorExpected2 (toTCBasicType t) t') $ zip xs xt) >> return None
                                  return None
                                  where
                                    check t1 t2 = if t2 /= None
                                                    then toTCBasicType t1 == t2
                                                    else procAssign
checkDecl (DeclVarShort xs xe) = checkDecl (DeclVarInit xs xe)

toTCBasicType :: BasicType -> TCBasicType
toTCBasicType t = 
                case t of
                  BasicType2 t' -> R $ toTCBasicType t'
                  BasicType1 _ t' -> A $ toTCBasicType t'
                  _ -> T t

getParams :: [Param] -> [(Var, TCBasicType)]
getParams = concatMap (\(ParamL xs t) -> ( map (\x -> (x, toTCBasicType t)) xs))

-- BLOCKS

checkBlock :: MonadState Env m => Block -> m TCBasicType
checkBlock (BodyBlock stmts) = do
                              env <- get
                              types <- mapM checkStatement stmts
                              put env
                              let types' = filter (/= None) types
                              if types' == []
                                 then return None
                                 else let
                                          t0 = head types'
                                       in if all (== t0) types'
                                             then return t0
                                             else invRetType

checkBlockFun ls (BodyBlock stmts) = do
                              env <- get
                              mapM (\(x,t) -> newVar x t) ls
                              types <- mapM checkStatement stmts
                              retTypes <- mapM findReturn stmts
                              put env
                              
                              let types' = filter (/= None) retTypes
                              if types' == []
                                 then return None
                                 else let
                                          t0 = head types'
                                       in if all (== t0) types'
                                             then return t0
                                             else invRetType

findReturn (CompStmt (StateReturn r)) = checkExpr r >>= return
findReturn (CompStmt (StateBlock b))  = checkBlock b
findReturn (StateWhile e b)           = checkBlock b
findReturn (StateIf r b)              = checkBlock b
findReturn (StateIfElse r b1 b2)      = checkBlock b1 >> checkBlock b2
findReturn _                          = return None

-- STATEMENTS
checkStatement :: MonadState Env m => CompStatement -> m TCBasicType
checkStatement (CompStmt (StateExp (LExpId e))) = getBasicType e
checkStatement (CompStmt (StateExp (PostInc e))) = do
                                                     t <- checkExpr (LExprex e)
                                                     if t /= T BasicType_int
                                                       then errorPostInc t
                                                       else return t
checkStatement (CompStmt (StateExp (PostDecr e))) = do
                                                     t <- checkExpr (LExprex e)
                                                     if t /= T BasicType_int
                                                       then errorPostDecr t
                                                       else return t
checkStatement (CompStmt (StateDecl d)) = checkDecl d
checkStatement (CompStmt (StateDeclFun d)) = checkDeclFun d
checkStatement (CompStmt (StateDeclProc d)) = checkDeclProc d
checkStatement (CompStmt (StateBlock b)) = checkBlock b
checkStatement (CompStmt (StateAsgn e1 op e2)) = do
                    t1 <- checkExpr (LExprex e1)
                    t2 <- checkExpr e2
                    case op of
                         Assign -> assignable t1 t2
                         _      -> if t1 /= T BasicType_int && t1 /= T BasicType_float
                                     then errorExpected3 t1
                                     else if t2 /= T BasicType_int && t2 /= T BasicType_float
                                       then errorExpected3 t2
                                       else assignable t1 t2
                    where assignable t1 t2 = if t1 == t2
                                               then return None
                                               else case t1 of
                                                         T BasicType_float -> if t2 == T BasicType_int || t2 == T BasicType_float
                                                                                then return None
                                                                                else errorExpected2 t1 t2
                                                         _                 -> errorExpected2 t1 t2
checkStatement (CompStmt (StateExp (BLExprex e))) =
                   case e of
                        ExpArrId id e1 -> do
                            A t <- getBasicType id
                            t1 <- checkExpr e1
                            if (t1 /= T BasicType_int)
                              then errorExpected2 (T BasicType_int) t1
                              else return t
                        ExpArr blexp e1 -> do
                            t <- checkStatement (CompStmt (StateExp (BLExprex blexp)))
                            t' <- case t of
                                   (A t) -> return t
                                   _     -> wrongDimensions
                            t1 <- checkExpr e1
                            if (t1 /= T BasicType_int)
                              then errorExpected2 (T BasicType_int) t1
                              else return t'

checkStatement (CompStmt (StateAsgn (BLExprex e) op e2)) =
                   case e of
                        ExpArrId _ _ -> do
                            t1 <- checkStatement (CompStmt (StateExp (BLExprex e)))
                            t2 <- checkExpr e2
                            case op of
                                 Assign -> equal t1 t2
                                 _      -> if t1 /= T BasicType_int && t1 /= T BasicType_float
                                             then errorExpected3 t1
                                             else if t2 /= T BasicType_int && t2 /= T BasicType_float
                                               then errorExpected3 t2
                                               else equal t1 t2
                        ExpArr _ _ -> do
                            t1 <- checkStatement (CompStmt (StateExp (BLExprex e)))
                            t2 <- checkExpr e2
                            case op of
                                 Assign -> equal t1 t2
                                 _      -> if t1 /= T BasicType_int && t1 /= T BasicType_float
                                             then errorExpected3 t1
                                             else if t2 /= T BasicType_int && t2 /= T BasicType_float
                                               then errorExpected3 t2
                                               else equal t1 t2
                   where equal t1 t2 = if t1 /= t2
                                         then errorExpected2 t1 t2
                                         else return None

checkStatement (StateWhile e b) = do
                           t <- checkExpr e
                           if t == T BasicType_bool
                              then checkBlock b
                              else errorExpected2 BasicType_bool t
checkStatement (StateIf r b) = do
                        t <- checkExpr r
                        case t of
                           T BasicType_bool -> checkBlock b
                           _ -> errorExpected2 (T BasicType_bool) t
checkStatement (StateIfElse r b1 b2) = do
                              t <- checkExpr r
                              case t of
                                 T BasicType_bool -> checkBlock b1 >> checkBlock b2
                                 _ -> errorExpected2 (T BasicType_bool) t
checkStatement (CompStmt (StateReturn r)) = checkExpr r >>= return
checkStatement (CompStmt (StateFunCall s)) = checkFunCall s

checkFuncParams :: MonadState Env m => [RExp] -> m [TCBasicType]
checkFuncParams exprs = mapM checkExpr' exprs >>= return
                           where
                              checkExpr' e = case e of
                                                LExprex (LExpId _) -> do
                                                                  t <- checkExpr e
                                                                  return t
                                                _ -> checkExpr e

checkFunCall :: MonadState Env m => FunCall -> m TCBasicType
checkFunCall (ExpFunc x exprs) = do
                                    args <- checkFuncParams exprs
                                    env@(ev,ef,fs) <- get
                                    let foo = fromMaybe (undefFunc x) $ M.lookup x ef
                                    let (t,parTyp,s) = case foo of
                                                         F x -> x
                                                         P (x,y) -> (None,x,y)
                                    let params = map snd parTyp
                                    if paramsMatch args params
                                       then if St.member x fs
                                                then return t
                                                else do
                                                   let fs' = St.insert x fs
                                                   put (ev,ef,fs')
                                                   mapM (\(x',t') -> modify (\(ev,ef,fs) -> (M.insert x' (fromRef t') ev, ef,fs))) parTyp
                                                   rt <- checkBlock s
                                                   put (ev,ef,fs')        -- monade state ha put, penso venga da lì
                                                   if rt /= t && t /= None
                                                      then invRetType
                                                      else return rt
                                       else argsNoMatch params args
                                          where
                                             fromRef :: TCBasicType -> TCBasicType
                                             fromRef t = case t of
                                                            R t -> t
                                                            x -> x
                                             paramsMatch :: [TCBasicType] -> [TCBasicType] -> Bool
                                             paramsMatch args params = let
                                                                        l = zip args params
                                                                        f = (\(x,y) -> (x == y) || (fromRef x == y))
                                                                       in if length args == length params
                                                                           then and $ map f l
                                                                           else argsNoMatch params $ filter (/= None) args
checkFunCall (ExpFuncEmpty x) = do
                                    args <- checkFuncParams []
                                    env@(ev,ef,fs) <- get
                                    let foo = fromMaybe (undefFunc x) $ M.lookup x ef
                                    let (t,parTyp,s) = case foo of
                                                         F x -> x
                                                         P (x,y) -> (None,x,y)
                                    let params = map snd parTyp
                                    if paramsMatch args params
                                       then if St.member x fs
                                                then return t
                                                else do
                                                   let fs' = St.insert x fs
                                                   put (ev,ef,fs')
                                                   mapM (\(x',t') -> modify (\(ev,ef,fs) -> (M.insert x' (fromRef t') ev, ef,fs))) parTyp
                                                   rt <- checkBlock s
                                                   put (ev,ef,fs')        -- monade state ha put, penso venga da lì
                                                   if rt /= t
                                                      then invRetType
                                                      else return rt
                                       else argsNoMatch params args
                                          where
                                             fromRef :: TCBasicType -> TCBasicType
                                             fromRef t = case t of
                                                            R t -> t
                                                            x -> x
                                             paramsMatch :: [TCBasicType] -> [TCBasicType] -> Bool
                                             paramsMatch args params = let
                                                                        l = zip args params
                                                                        f = (\(x,y) -> (x == y) || (fromRef x == y))
                                                                       in if length args == length params
                                                                           then and $ map f l
                                                                           else argsNoMatch params $ filter (/= None) args

-- EXPRESSIONS
checkExpr :: MonadState Env m => RExp -> m TCBasicType
checkExpr (Bool _) = return $ T BasicType_bool
checkExpr (Int _) = return $ T BasicType_int
checkExpr (Float _) = return $ T BasicType_float
checkExpr (Char _) = return $ T BasicType_char
checkExpr (String _) = return $ T BasicType_string
checkExpr (LExprex (LExpId i)) = getBasicType i
checkExpr (Or e1 e2) = checkBoolean e1 e2
checkExpr (And e1 e2) = checkBoolean e1 e2
checkExpr (Eq e1 e2) = checkEq e1 e2
checkExpr (Neq e1 e2) = checkEq e1 e2
checkExpr (Lt e1 e2) = checkComp e1 e2
checkExpr (Gt e1 e2) = checkComp e1 e2
checkExpr (LtE e1 e2) = checkComp e1 e2
checkExpr (GtE e1 e2) = checkComp e1 e2
checkExpr (Add e1 e2) = checkArithm e1 e2
checkExpr (Sub e1 e2) = checkArithm e1 e2
checkExpr (Mul e1 e2) = checkArithm e1 e2
checkExpr (Div e1 e2) = checkArithm e1 e2
checkExpr (Mod e1 e2) = do
                         t1 <- checkExpr e1
                         t2 <- checkExpr e2
                         if t1 /= T BasicType_int || t2 /= T BasicType_int
                           then errorExpected6 t1 t2
                           else return t1

checkExpr (Neg e) = do
                        t <- checkExpr e
                        if t == T BasicType_int || t == T BasicType_float
                           then return t
                           else errorExpected3 t
checkExpr (Not e) = do
                        t <- checkExpr e
                        if t == T BasicType_bool
                           then return $ T BasicType_bool
                           else errorExpected2 (T BasicType_bool) t

checkExpr (Ref e) = do
                      t <- checkExpr (LExprex e)
                      return $ R t
checkExpr (Deref e) = do
                        t <- checkExpr e
                        case t of
                           (R t) -> return t
                           _     -> errorRef

checkExpr (LExprex blexp) = checkStatement (CompStmt (StateExp blexp))

checkExpr (FCall f) = checkFunCall f

getBasicType :: MonadState Env m => CIdent -> m TCBasicType
getBasicType (CIdent x) = do
                           (ev,_,_) <- get
                           case M.lookup (CIdent x) ev of
                              Just t -> return t
                              Nothing -> undefVar $ CIdent x

checkBoolean :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkBoolean e1 e2 = do
                        t1 <- checkExpr e1
                        t2 <- checkExpr e2
                        if t1 == T BasicType_bool && t1 == t2
                           then return $ T BasicType_bool
                           else errorExpected (T BasicType_bool) (T BasicType_bool) t1 t2

checkEq :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkEq e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t1 == t2
                       then return $ T BasicType_bool
                       else do
                              t3 <- inferNumeric t1 t2
                              if t3 /= None
                                then return $ T BasicType_bool
                                else errorExpected5 t1 t2
                              

checkArithm :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkArithm e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     t3 <- inferNumeric t1 t2
                     if t3 /= None
                       then return t3
                       else errorExpected4 t1 t2

checkComp :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkComp e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     t3 <- inferNumeric t1 t2
                     if t3 /= None
                       then return $ T BasicType_bool
                       else errorExpected4 t1 t2

inferNumeric t1 t2 = case (t1,t2) of
                          (T BasicType_int, T BasicType_int)     -> return t1
                          (T BasicType_int, T BasicType_float)   -> return t2
                          (T BasicType_float, T BasicType_int)   -> return t1
                          (T BasicType_float, T BasicType_float) -> return t1
                          _                                      -> return None

inferBasicType :: MonadState Env m => RExp -> m TCBasicType
inferBasicType (LExprex (LExpId x)) = do
                           (ev,ef,_) <- get
                           let t = M.lookup x ev
                           if isJust t
                              then return $ fromJust t
                              else undefVar x
inferBasicType (FCall (ExpFunc f exprs)) = do
                                             (ev,ef,_) <- get
                                             let foo = fromMaybe (undefFunc f) $ M.lookup f ef
                                             return $ case foo of
                                                         F (t,_,_) -> t
                                                         P _ -> None


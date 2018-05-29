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
   show (T BasicType_float)  = "float"
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
undefVar (CIdent x) = error $ "Name error: undefined variable: " ++ (show x)
undefFunc (CIdent f) = error $ "Name error: undefined function: " ++ (show f)
notArray = error $ "Type error: not an array"
notValidArrSub x = error $ "Type error: not valid array subscript: " ++ (show x)
argsNoMatch l1 l2 = let
                        l1' = concat $ ["[",intercalate "," (map show l1),"]"]
                        l2' = concat $ ["[",intercalate "," (map show l2),"]"]
                    in error $ concat ["Type error: mismatched function parameters. Expected: ",l1', ", found: ", l2']
notIterable = error $ "Type error: not iterable"
arrayElemsError = error "Type error: array elements must be of same type"
invRetType = error "Different return types in function declaration"
wrongRetType t1 t2 = error $ "Type error: type of return value is " ++ (show t2) ++ " while function type is " ++ (show t1)
missingReturn = error "Missing return statement"
foundReturn = error "Found return statement in procedure declaration"
refTypeError = error "Type error: expected type, found reference"
errorMultAssign l1 l2 = error $ concat ["Error in multiple assign: ", "expected: ", show l1 , " values, found: ", show l2]
errorProcAssign = error "Type error: fuction does not return any value"

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
{-
checkDecl (D_Var x e) = do
                           t <- checkExpr e
                           if t /= None
                              then newVar x t >> return None
                              else errorProcAssign
-}
checkDeclFun :: MonadState Env m => DeclFun -> m TCBasicType
checkDeclFun (DeclF x pd t s) = do
                              let t' = case toTCBasicType t of
                                          R _ -> refTypeError
                                          _ -> toTCBasicType t
                              newFunc x t' (getParams pd) s
                              t'' <- checkBlock s
                              if (t'' == None)
                                then missingReturn
                                else if (t' /= t'')
                                  then wrongRetType t' t''
                                  else return None
checkDeclProc (DeclP x pd s) = do
                                newProc x (getParams pd) s
                                t <- checkBlock s
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
                                    else (mapM (\(x',t') -> newVar x' t') $ zip xs xt) >> return None
checkDecl (DeclVarInitType xs t xe) = do
                                  xt <- mapM (\e -> checkExpr e) xe
                                  let lxs = length xs
                                  let les = length xe
                                  if lxs /= les
                                    then errorMultAssign lxs les
                                    --else scanl1 (\t' -> if t' /= tct then errorExpected2 tct t' else return None) xt
                                    else (mapM (\(x',t') -> if check t t' then newVar x' t' else errorExpected2 t t') $ zip xs xt) >> return None
                                  return None
                                  where
                                    check t1 t2 = toTCBasicType t1 == t2
checkDecl (DeclVarShort xs xe) = checkDecl (DeclVarInit xs xe)
{-
checkDecl (D_MVar x xs e) = do
                              t <- checkExpr e
                              let l = length (x:xs)
                              case t of
                                 Tp types -> let
                                                lt = length types
                                             in if l == lt
                                                   then (mapM (\(x',t') -> newVar x' t') $ zip (x:xs) types) >> return None
                                                   else errorMultAssign l lt
                                 _ -> expectedTuple t
-}

toTCBasicType :: BasicType -> TCBasicType
toTCBasicType t = 
                case t of
                  BasicType2 t' -> R $ toTCBasicType t'
                  BasicType1 _ t' -> A $ toTCBasicType t'
                  _ -> T t

getParams :: [Param] -> [(Var, TCBasicType)]
--getParams = concatMap (\(ParamL x t) -> (replicate (length x) (head x,toTCBasicType t)))
getParams = concatMap (\(ParamL xs t) -> ( map (\x -> (x, toTCBasicType t)) xs))

-- BLOCKS
{-
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
                                             else invRetType-}
-- BLOCKS
checkBlock :: MonadState Env m => Block -> m TCBasicType
checkBlock (BodyBlock stmts) = do
                              env <- get
                              types <- mapM checkStatement stmts
                              put env
                              
                              retTypes <- mapM findReturn stmts
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
findReturn (StateFor d1 e d2 b)       = checkBlock b
findReturn (StateIf r b)              = checkBlock b
findReturn (StateIfElse r b1 b2)      = checkBlock b1 >> checkBlock b2
findReturn (StateIfElse r b1 b2)      = checkBlock b1 >> checkBlock b2
findReturn (StateIfStm d r b)         = checkBlock b
findReturn (StateIfElseStm d r b1 b2) = checkBlock b1 >> checkBlock b2
findReturn _                          = return None

-- STATEMENTS
checkStatement :: MonadState Env m => CompStatement -> m TCBasicType
--checkStatement (CompStmt (StateExp (LExprex (LExpId e)))) = checkExpr e 
checkStatement (CompStmt (StateExp (LExpId e))) = getBasicType e
checkStatement (CompStmt (StateDecl d)) = checkDecl d
checkStatement (CompStmt (StateDeclFun d)) = checkDeclFun d
checkStatement (CompStmt (StateDeclProc d)) = checkDeclProc d
checkStatement (CompStmt (StateBlock b)) = checkBlock b
checkStatement (CompStmt (StateAsgn (LExpId e1) op e2)) = do
                    t1 <- getBasicType e1
                    t2 <- checkExpr e2
                    if t1 /= t2
                      then errorExpected2 t1 t2
                      else case op of
                          Assign -> return None
                          _ -> if t1 == T BasicType_int || t1 == T BasicType_float
                                  then return None
                                  else errorExpected3 t1
                                  
{-checkStatement (S_Assign acc e) = do
                              t1 <- getBasicType acc
                              t2 <- checkExpr e
                              if t1 == None
                                 then updateStrBasicType acc t2
                                 else if t1 == t2
                                       then return None
                                       else errorExpected2 t1 t2
-}
{-checkStatement (S_MAss a as (Tup e es)) = do
                                       let l1 = length (a:as)
                                       let l2 = length (e:es)
                                       if l1 == l2
                                          then (mapM (\(a',e') -> checkStatement (S_Assign a' e')) $ zip (a:as) (e:es)) >> return None
                                          else errorMultAssign l1 l2
-}
checkStatement (StateWhile e b) = do
                           t <- checkExpr e
                           if t == T BasicType_bool
                              then checkBlock b
                              else errorExpected2 BasicType_bool t
{-checkStatement (StateFor x acc s) = do
                              t <- getBasicType acc
                              env@(ev,ef,f) <- get
                              case t of
                                 A t' -> do
                                          newVar x t'
                                          checkStatement s
                                          put env
                                          return None
                                 _ -> notIterable
-}
checkStatement (StateFor d1 e d2 b) = do
                                t <- checkExpr e
                                if t == T BasicType_bool
                                  then do checkBlock b
                                          checkStatement $ CompStmt d1
                                          checkStatement $ CompStmt d2
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
checkStatement (StateIfStm d r b) = do
                        t <- checkExpr r
                        case t of
                           T BasicType_bool -> (checkStatement $ CompStmt d) >> checkBlock b
                           _ -> errorExpected2 (T BasicType_bool) t
checkStatement (StateIfElseStm d r b1 b2) = do
                              t <- checkExpr r
                              case t of
                                 T BasicType_bool -> (checkStatement $ CompStmt d) >> checkBlock b1 >> checkBlock b2
                                 _ -> errorExpected2 (T BasicType_bool) t
checkStatement (CompStmt (StateReturn r)) = checkExpr r >>= return
--checkStatement (S_Print e) = checkExpr e >> return None
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
                                                   if rt /= t
                                                      then invRetType
                                                      --then missingReturn
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
                                    env@(ev,ef,fs) <- get
                                    let foo = fromMaybe (undefFunc x) $ M.lookup x ef
                                    let (t,parTyp,s) = case foo of
                                                         F x -> x
                                                         P (x,y) -> (None,x,y)
                                    rt <- checkBlock s
                                    return rt

{-
updateStrBasicType :: MonadState Env m => Acc -> TCBasicType -> m TCBasicType
updateStrBasicType acc t = do
                        updateStrBasicType' acc t
                        return None
                           where
                              updateStrBasicType' (A_Iden x) _ = do
                                                               (ev,ef,_) <- get
                                                               return (fromMaybe (undefVar x) $ M.lookup x ev, x)
                              updateStrBasicType' (A_Str acc (Str_Sub y)) t = do
                                                                           (S str',x) <- updateStrBasicType' acc t
                                                                           let str'' = M.insert y t str'
                                                                           newVar x (S str'')
                                                                           return (S str'', y)
-}

-- EXPRESSIONS
--checkLExpr (LExpId i) = checkExpr i

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
--checkExpr (Eq (LExprex (LExpId e1)) (LExprex (LExpId e2))) = checkEq e1 e2
checkExpr (Neq e1 e2) = checkEq e1 e2
checkExpr (Lt e1 e2) = checkComp e1 e2
checkExpr (Gt e1 e2) = checkComp e1 e2
checkExpr (LtE e1 e2) = checkComp e1 e2
checkExpr (GtE e1 e2) = checkComp e1 e2
checkExpr (Add e1 e2) = checkArithm e1 e2
checkExpr (Sub e1 e2) = checkArithm e1 e2
checkExpr (Mul e1 e2) = checkArithm e1 e2
checkExpr (Div e1 e2) = checkArithm e1 e2

checkExpr (Neg e) = do
                        t <- checkExpr e
                        if t == T BasicType_int
                           then return $ T BasicType_int
                           else errorExpected2 (T BasicType_int) t
checkExpr (Not e) = do
                        t <- checkExpr e
                        if t == T BasicType_bool
                           then return $ T BasicType_bool
                           else errorExpected2 (T BasicType_bool) e
{-
checkExpr (E_ArrI arr) = checkArrayInit arr
checkExpr (E_ArrI2 s e) = do
                           ts <- checkExpr s
                           te <- checkExpr e
                           if ts == T BasicType_int
                              then return $ A te
                              else errorExpected2 (T BasicType_int) ts
-}
checkExpr (LExprex (BLExprex (ExpArr e1 e2))) = do
                                                  t2 <- checkExpr e2
                                                  if t2 /= T BasicType_int  
                                                    then errorExpected2 (T BasicType_int) t2
                                                    else do
                                                       t1 <- checkExpr $ LExprex $ BLExprex e1
                                                       return t1
checkExpr (FCall f) = checkFunCall f
--ExpId CIdent RExp
{-checkExpr (LExprex (BLExprex (ExpId i e))) = do
                                                t <- getBasicType i
                                                return t

checkExpr (E_TupI tup) = checkTupleInit tup
checkExpr (E_ArrS arr sub) = do
                              _ <- checkArrSub sub
                              getBasicType (A_Arr arr sub)
checkExpr (E_StrS str sub) = getBasicType (A_Str str sub)
checkExpr e@(E_FuncCall fc) = checkFunCall fc >> inferBasicType e
checkExpr e@(E_VarName x) = inferBasicType e
checkExpr e@(E_Const c) = inferBasicType e
-}
--getBasicType :: MonadState Env m => CIdent -> m TCBasicType
getBasicType (CIdent x) = do
                           (ev,_,_) <- get
                           case M.lookup (CIdent x) ev of
                              Just t -> return t
                              Nothing -> undefVar $ CIdent x
{-
getBasicType (A_Arr acc _) = do
                              t <- getBasicType acc
                              case t of
                                 A t' -> return t'
                                 _ -> notArray
getBasicType (A_Str acc (Str_Sub x)) = do
                                       t <- getBasicType acc
                                       case t of
                                          S m -> return $ fromMaybe None $ M.lookup x m
                                          _ -> notStruct

checkArrSub :: MonadState Env m => ArraySub -> m TCBasicType
checkArrSub (Arr_Sub e) = do
                           t <- checkExpr e
                           if t == T BasicType_int
                              then return $ T BasicType_int
                              else notValidArrSub e

checkArrayInit :: MonadState Env m => Array -> m TCBasicType
checkArrayInit (Arr exps) = do
                              types <- mapM checkExpr exps
                              let t0 = head types
                              let allEq = all ((==) t0) types
                              if allEq
                                 then return $ A t0
                                 else arrayElemsError

checkTupleInit :: MonadState Env m => Tuple -> m TCBasicType
checkTupleInit (Tup e exps) = do
                                 types <- mapM checkExpr (e:exps)
                                 return $ Tp types
-}
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
                        else errorExpected t1 t1 t1 t2

checkArithm :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkArithm e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t2 == T BasicType_int
                        then case t1 of
                              T BasicType_int -> return t1
                              A (T BasicType_int) -> return $ A $ T BasicType_int
                              _ -> errorExpected2 (T BasicType_int) t1
                        else errorExpected2 (T BasicType_int) t2

checkComp :: MonadState Env m => RExp -> RExp -> m TCBasicType
checkComp e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t1 == T BasicType_int && t1 == t2
                        then return $ T BasicType_bool
                        else errorExpected (T BasicType_int) (T BasicType_int) t1 t2

inferBasicType :: MonadState Env m => RExp -> m TCBasicType
{-inferBasicType (E_Const c) = return $ case c of
                                 False_Const -> T BasicType_bool
                                 True_Const -> T BasicType_bool
                                 Integer_Const _ -> T BasicType_int
-}
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


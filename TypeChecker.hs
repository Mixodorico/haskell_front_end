{--
   Autor: Paweł Kapica, 334579
   Interpreter języka Swifty
   Plik zawierający funkcje odpowiedzialne za kontrolę typow przed wykonaniem programu
--}
{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}

module BasicTypeChecker where

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
   show (T BasicType_void) = "Void"
   show (R t) = "&" ++ show t
   show (A t) = (show t) ++ "[]"
   show None = "None"

type TState = S.State Env

-- ERRORS
errorExpected t1 t2 f1 f2 = error $ concat ["Type error: Expected: ",show t1,",",show t2,", found: ",show f1,",",show f2]
errorExpected2 t f = error $ concat ["Type error: Expected: ",show t,", found: ",show f]
undefVar (CIdent x) = error $ "Name error: Undefined variable: " ++ (show x)
undefFunc (CIdent f) = error $ "Name error: Undefined function: " ++ (show f)
notArray = error $ "Type error: Not an array"
notValidArrSub x = error $ "Type error: Not valid array subscript: " ++ (show x)
argsNoMatch l1 l2 = let
                        l1' = concat $ ["[",intercalate "," (map show l1),"]"]
                        l2' = concat $ ["[",intercalate "," (map show l2),"]"]
                    in error $ concat ["Type error: Mismatched function parameters. Expected: ",l1', ", found: ", l2']
notIterable = error $ "Type error: Not iterable"
arrayElemsError = error "Type error: Array elements must be of same type"
invRetType = error "Type error: Type of return value does not match function's return type"
refTypeError = error "Type error: Expected type, found reference"
voidTypeError = error "Type error: Expected variable type, found void"
errorMultAssign l1 l2 = error $ concat ["Error in multiple assign: ", "Expected: ", show l1 , " values, found: ", show l2]
errorProcAssign = error "Type error: Fuction does not return any value"

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
checkDeclFun (DeclF x pd t s) = do
                              let t' = case toTCBasicType t of
                                          R _ -> refTypeError
                                          _ -> toTCBasicType t
                              if (t == BasicType_void)
                                then newProc x (getParams pd) s
                                else newFunc x t' (getParams pd) s
                              return None
checkDecl :: MonadState Env m => Decl -> m TCBasicType
checkDecl (DeclVar xs t) = do
                             let t' = case toTCBasicType t of
                                         T BasicType_void -> voidTypeError
                                         _ -> toTCBasicType t
                             (mapM (\(x',t') -> newVar x' t') $ zip xs (replicate (length xs) t')) >> return None

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
                                             else invRetBasicType

-- STATEMENTS
checkStatement :: MonadState Env m => CompStatement -> m TCBasicType
checkStatement (CompStmt (StateDecl d)) = checkDecl d
checkStatement (CompStmt (StateBlock b)) = checkBlock b
{-checkStatement (S_Assign acc e) = do
                              t1 <- getAccBasicType acc
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
                              t <- getAccBasicType acc
                              env@(ev,ef,f) <- get
                              case t of
                                 A t' -> do
                                          newVar x t'
                                          checkStatement s
                                          put env
                                          return None
                                 _ -> notIterable
-}
checkStatement (StateFor d1 r d2 b) = do
                                t <- checkExpr r
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
checkStatement (CompStmt (StateFunCall fc)) = checkFunCall fc

checkFuncParams :: MonadState Env m => [RExp] -> m [TCBasicType]
checkFuncParams exprs = mapM checkExpr' exprs >>= return
                           where
                              checkExpr' e = case e of
                                                LExprex (LexpId _) -> do
                                                                  t <- checkExpr e
                                                                  return $ R t
                                                _ -> checkExpr e

checkFunCall :: MonadState Env m => FunCall -> m TCBasicType
checkFunCall (ExpFunc x exprs) = do
                                    args <- checkFuncParams exprs
                                    env@(ev,ef,fs) <- get
                                    let foo = fromMaybe (undefFunc x) $ M.lookup x ef
                                    let (t,parTyp,s) = case foo of
                                                         F x -> x
                                                         --P (x,y) -> (None,x,y)
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
                                                      then invRetBasicType
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
{-
-- EXPRESSIONS
checkExpr :: MonadState Env m => Expr -> m TCBasicType
checkExpr (E_Or e1 e2) = checkBoolean e1 e2
checkExpr (E_And e1 e2) = checkBoolean e1 e2
checkExpr (E_Eq e1 e2) = checkEq e1 e2
checkExpr (E_Neq e1 e2) = checkEq e1 e2
checkExpr (E_Lt e1 e2) = checkComp e1 e2
checkExpr (E_Gt e1 e2) = checkComp e1 e2
checkExpr (E_Lte e1 e2) = checkComp e1 e2
checkExpr (E_Gte e1 e2) = checkComp e1 e2
checkExpr (E_Add e1 e2) = checkArithm e1 e2
checkExpr (E_Subt e1 e2) = checkArithm e1 e2
checkExpr (E_Mult e1 e2) = checkArithm e1 e2
checkExpr (E_Div e1 e2) = checkArithm e1 e2
checkExpr (E_Min e) = do
                        t <- checkExpr e
                        if t == T BasicType_int
                           then return $ T BasicType_int
                           else errorExpected2 (T BasicType_int) t
checkExpr (E_Neg e) = do
                        t <- checkExpr e
                        if t == T BasicType_bool
                           then return $ T BasicType_bool
                           else errorExpected2 (T BasicType_bool) e
checkExpr (E_ArrI arr) = checkArrayInit arr
checkExpr (E_ArrI2 s e) = do
                           ts <- checkExpr s
                           te <- checkExpr e
                           if ts == T BasicType_int
                              then return $ A te
                              else errorExpected2 (T BasicType_int) ts
checkExpr (E_TupI tup) = checkTupleInit tup
checkExpr (E_ArrS arr sub) = do
                              _ <- checkArrSub sub
                              getAccBasicType (A_Arr arr sub)
checkExpr (E_StrS str sub) = getAccBasicType (A_Str str sub)
checkExpr e@(E_FuncCall fc) = checkFunCall fc >> inferBasicType e
checkExpr e@(E_VarName x) = inferBasicType e
checkExpr e@(E_Const c) = inferBasicType e

getAccBasicType :: MonadState Env m => Acc -> m TCBasicType
getAccBasicType (A_Iden x) = do
                           (ev,_,_) <- get
                           case M.lookup x ev of
                              Just t -> return t
                              Nothing -> undefVar x
getAccBasicType (A_Arr acc _) = do
                              t <- getAccBasicType acc
                              case t of
                                 A t' -> return t'
                                 _ -> notArray
getAccBasicType (A_Str acc (Str_Sub x)) = do
                                       t <- getAccBasicType acc
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

checkBoolean :: MonadState Env m => Expr -> Expr -> m TCBasicType
checkBoolean e1 e2 = do
                        t1 <- checkExpr e1
                        t2 <- checkExpr e2
                        if t1 == T BasicType_bool && t1 == t2
                           then return $ T BasicType_bool
                           else errorExpected (T BasicType_bool) (T BasicType_bool) t1 t2

checkEq :: MonadState Env m => Expr -> Expr -> m TCBasicType
checkEq e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t1 == t2
                        then return $ T BasicType_bool
                        else errorExpected t1 t1 t1 t2

checkArithm :: MonadState Env m => Expr -> Expr -> m TCBasicType
checkArithm e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t2 == T BasicType_int
                        then case t1 of
                              T BasicType_int -> return t1
                              A (T BasicType_int) -> return $ A $ T BasicType_int
                              _ -> errorExpected2 (T BasicType_int) t1
                        else errorExpected2 (T BasicType_int) t2

checkComp :: MonadState Env m => Expr -> Expr -> m TCBasicType
checkComp e1 e2 = do
                     t1 <- checkExpr e1
                     t2 <- checkExpr e2
                     if t1 == T BasicType_int && t1 == t2
                        then return $ T BasicType_bool
                        else errorExpected (T BasicType_int) (T BasicType_int) t1 t2

inferBasicType :: MonadState Env m => Expr -> m TCBasicType
inferBasicType (E_Const c) = return $ case c of
                                 False_Const -> T BasicType_bool
                                 True_Const -> T BasicType_bool
                                 Integer_Const _ -> T BasicType_int
inferBasicType (E_VarName x) = do
                           (ev,ef,_) <- get
                           let t = M.lookup x ev
                           if isJust t
                              then return $ fromJust t
                              else undefVar x
inferBasicType (E_FuncCall (Fun_Call f exprs)) = do
                                             (ev,ef,_) <- get
                                             let foo = fromMaybe (undefFunc f) $ M.lookup f ef
                                             return $ case foo of
                                                         F (t,_,_) -> t
                                                         P _ -> None
-}

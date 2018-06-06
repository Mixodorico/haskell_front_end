module SkelGo where

-- Haskell module generated by the BNF converter

import AbsGo
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transId :: Id -> Result
transId x = case x of
  Id string -> failure x
transStart :: Start -> Result
transStart x = case x of
  Entry id decls -> failure x
transDecl :: Decl -> Result
transDecl x = case x of
  DeclFun id params type_ block -> failure x
  DeclProc id params block -> failure x
  DeclVar ids type_ -> failure x
  DeclVarInit ids rexps -> failure x
  DeclVarTypeInit ids type_ rexps -> failure x
transShortVarDecl :: ShortVarDecl -> Result
transShortVarDecl x = case x of
  DeclVarShort ids rexps -> failure x
transParam :: Param -> Result
transParam x = case x of
  ParamL ids type_ -> failure x
  ParamLPassType pass ids type_ -> failure x
transPass :: Pass -> Result
transPass x = case x of
  PassValue -> failure x
  PassRef -> failure x
transType :: Type -> Result
transType x = case x of
  TVoid -> failure x
  TInt -> failure x
  TBool -> failure x
  TFloat -> failure x
  TChar -> failure x
  TString -> failure x
  TArray integer type_ -> failure x
  TPointer type_ -> failure x
transBlock :: Block -> Result
transBlock x = case x of
  BodyBlock stmts -> failure x
transStmt :: Stmt -> Result
transStmt x = case x of
  StBlock block -> failure x
  StSmpl stmtsmpl -> failure x
  StReturn rexp -> failure x
  StIf rexp block -> failure x
  StIfElse rexp block1 block2 -> failure x
  StWhile rexp block -> failure x
  StDecl decl -> failure x
  StBreak -> failure x
  StContinue -> failure x
  StWrite rexp -> failure x
  StRead rexp -> failure x
transStmtSmpl :: StmtSmpl -> Result
transStmtSmpl x = case x of
  StShortVarDecl shortvardecl -> failure x
  StExp rexp -> failure x
  StAsgn lexp rexp -> failure x
transLExp :: LExp -> Result
transLExp x = case x of
  ExpId id -> failure x
  ExpArr lexp rexp -> failure x
  ExpDeref rexp -> failure x
transRExp :: RExp -> Result
transRExp x = case x of
  ExpAdd rexp1 rexp2 -> failure x
  ExpSub rexp1 rexp2 -> failure x
  ExpMul rexp1 rexp2 -> failure x
  ExpDiv rexp1 rexp2 -> failure x
  ExpMod rexp1 rexp2 -> failure x
  ExpEq rexp1 rexp2 -> failure x
  ExpNeq rexp1 rexp2 -> failure x
  ExpLt rexp1 rexp2 -> failure x
  ExpLtE rexp1 rexp2 -> failure x
  ExpGt rexp1 rexp2 -> failure x
  ExpGtE rexp1 rexp2 -> failure x
  ExpAnd rexp1 rexp2 -> failure x
  ExpOr rexp1 rexp2 -> failure x
  ExpNot rexp -> failure x
  ExpNeg rexp -> failure x
  ExpVal value -> failure x
  ExpLef lexp -> failure x
  ExpFuncEmpty id -> failure x
  ExpFunc id rexps -> failure x
  ExpRef lexp -> failure x
  ExpPar rexp -> failure x
transValue :: Value -> Result
transValue x = case x of
  Int integer -> failure x
  Float double -> failure x
  Char char -> failure x
  String string -> failure x
  Bool boolean -> failure x
transBoolean :: Boolean -> Result
transBoolean x = case x of
  Boolean_true -> failure x
  Boolean_false -> failure x


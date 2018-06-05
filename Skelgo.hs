module Skelgo where

-- Haskell module generated by the BNF converter

import Absgo
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transId :: Id -> Result
transId x = case x of
  Id str  -> failure x


transStart :: Start -> Result
transStart x = case x of
  StartProg id decls  -> failure x


transDecl :: Decl -> Result
transDecl x = case x of
  DeclFun id params type' block  -> failure x
  DeclProc id params block  -> failure x
  DeclVar ids type'  -> failure x
  DeclVarInit ids exprs  -> failure x


transShortVarDecl :: ShortVarDecl -> Result
transShortVarDecl x = case x of
  DeclVarShort ids exprs  -> failure x


transParam :: Param -> Result
transParam x = case x of
  ParamL ids type'  -> failure x
  ParamLPassType pass ids type'  -> failure x


transPass :: Pass -> Result
transPass x = case x of
  PassValue  -> failure x
  PassRef  -> failure x
  PassValueRes  -> failure x


transType :: Type -> Result
transType x = case x of
  TypeInt  -> failure x
  TypeBool  -> failure x
  TypeFloat  -> failure x
  TypeChar  -> failure x
  TypeString  -> failure x
  TypeArray n type'  -> failure x
  TypePointer type'  -> failure x


transBlock :: Block -> Result
transBlock x = case x of
  BodyBlock statements  -> failure x


transStatement :: Statement -> Result
transStatement x = case x of
  StateBlock block  -> failure x
  StateSmpl statementsmpl  -> failure x
  StateReturn expr  -> failure x
  StateIf expr block  -> failure x
  StateIfElse expr block0 block  -> failure x
  StateIfStm statementsmpl expr block  -> failure x
  StateIfElseStm statementsmpl expr block0 block  -> failure x
  StateFor statementsmpls0 expr statementsmpls block  -> failure x
  StateWhile expr block  -> failure x
  StateDecl decl  -> failure x
  StateBreak  -> failure x
  StateContinue  -> failure x
  StateTryCatch block0 block  -> failure x
  StateWrite expr  -> failure x
  StateRead expr  -> failure x


transStatementSmpl :: StatementSmpl -> Result
transStatementSmpl x = case x of
  StateShortVarDecl shortvardecl  -> failure x
  StateExp expr  -> failure x
  StateAsgn expl expr  -> failure x


transExpL :: ExpL -> Result
transExpL x = case x of
  ExpId id  -> failure x
  ExpArr expl expr  -> failure x
  ExpDeref expr  -> failure x


transExpR :: ExpR -> Result
transExpR x = case x of
  ExpAdd expr0 expr  -> failure x
  ExpSub expr0 expr  -> failure x
  ExpMul expr0 expr  -> failure x
  ExpDiv expr0 expr  -> failure x
  ExpMod expr0 expr  -> failure x
  ExpEqu expr0 expr  -> failure x
  ExpNeq expr0 expr  -> failure x
  ExpLes expr0 expr  -> failure x
  ExpLeq expr0 expr  -> failure x
  ExpGre expr0 expr  -> failure x
  ExpGrq expr0 expr  -> failure x
  ExpAnd expr0 expr  -> failure x
  ExpOr expr0 expr  -> failure x
  ExpNot expr  -> failure x
  ExpNeg expr  -> failure x
  ExpValue value  -> failure x
  ExpLef expl  -> failure x
  ExpFuncEmpty id  -> failure x
  ExpFunc id exprs  -> failure x
  ExpRef expl  -> failure x
  ExpPar expr  -> failure x


transValue :: Value -> Result
transValue x = case x of
  Int n  -> failure x
  Float d  -> failure x
  Char c  -> failure x
  String str  -> failure x
  Bool boolean  -> failure x


transBoolean :: Boolean -> Result
transBoolean x = case x of
  BoolTrue  -> failure x
  BoolFalse  -> failure x




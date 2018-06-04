

module AbsGo where

-- Haskell module generated by the BNF converter




newtype CIdent = CIdent String deriving (Eq, Ord, Show, Read)
data Boolean = Boolean_true | Boolean_false
  deriving (Eq, Ord, Show, Read)

data RExp
    = Or RExp RExp
    | And RExp RExp
    | Not RExp
    | Eq RExp RExp
    | Neq RExp RExp
    | Lt RExp RExp
    | LtE RExp RExp
    | Gt RExp RExp
    | GtE RExp RExp
    | Add RExp RExp
    | Sub RExp RExp
    | Mul RExp RExp
    | Div RExp RExp
    | Mod RExp RExp
    | Neg RExp
    | Ref LExp
    | Deref RExp
    | FCall FunCall
    | FRead ReadType
    | ArrInit [RExp]
    | Int Integer
    | Float Double
    | Char Char
    | String String
    | Bool Boolean
    | LExprex LExp
  deriving (Eq, Ord, Show, Read)

data LExp
    = PostInc LExp | PostDecr LExp | BLExprex BLexp | LExpId CIdent
  deriving (Eq, Ord, Show, Read)

data BLexp = ExpArr BLexp RExp | ExpArrId CIdent RExp
  deriving (Eq, Ord, Show, Read)

data Program = Prog CIdent [CompStatement]
  deriving (Eq, Ord, Show, Read)

data Type
    = Type_bool
    | Type_char
    | Type_float
    | Type_int
    | Type_string
    | Type1 Integer Type
    | Type2 Type
  deriving (Eq, Ord, Show, Read)

data Decl
    = DeclVar [CIdent] Type
    | DeclVarInit [CIdent] [RExp]
    | DeclVarInitType [CIdent] Type [RExp]
    | DeclVarShort [CIdent] [RExp]
  deriving (Eq, Ord, Show, Read)

data DeclFun = DeclF CIdent [Param] Type Block
  deriving (Eq, Ord, Show, Read)

data DeclProc = DeclP CIdent [Param] Block
  deriving (Eq, Ord, Show, Read)

data Param = ParamL [CIdent] Type
  deriving (Eq, Ord, Show, Read)

data Block = BodyBlock [CompStatement]
  deriving (Eq, Ord, Show, Read)

data FunCall = ExpFuncEmpty CIdent | ExpFunc CIdent [RExp]
  deriving (Eq, Ord, Show, Read)

data Statement
    = StateBlock Block
    | StateDecl Decl
    | StateDeclFun DeclFun
    | StateDeclProc DeclProc
    | StateFunCall FunCall
    | StateExp LExp
    | StateAsgn LExp Assignment_op RExp
    | StateReturn RExp
    | StateBreak
    | StateContinue
    | StateWrite WriteType RExp
    | StateRead ReadType
  deriving (Eq, Ord, Show, Read)

data Assignment_op
    = Assign | AssgnMul | AssgnAdd | AssgnDiv | AssgnSub
  deriving (Eq, Ord, Show, Read)

data CompStatement
    = CompStmt Statement
    | StateIf RExp Block
    | StateIfElse RExp Block Block
    | StateWhile RExp Block
  deriving (Eq, Ord, Show, Read)

data WriteType
    = WriteType_writeInt
    | WriteType_writeFloat
    | WriteType_writeChar
    | WriteType_writeString
  deriving (Eq, Ord, Show, Read)

data ReadType
    = ReadType_readInt
    | ReadType_readFloat
    | ReadType_readChar
    | ReadType_readString
  deriving (Eq, Ord, Show, Read)


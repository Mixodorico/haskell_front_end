{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module PrintGo where

-- pretty-printer generated by the BNF converter

import AbsGo
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)



instance Print CIdent where
  prt _ (CIdent i) = doc (showString ( i))
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])


instance Print Boolean where
  prt i e = case e of
    Boolean_true -> prPrec i 0 (concatD [doc (showString "true")])
    Boolean_false -> prPrec i 0 (concatD [doc (showString "false")])

instance Print RExp where
  prt i e = case e of
    Or rexp1 rexp2 -> prPrec i 0 (concatD [prt 0 rexp1, doc (showString "||"), prt 1 rexp2])
    And rexp1 rexp2 -> prPrec i 1 (concatD [prt 1 rexp1, doc (showString "&&"), prt 2 rexp2])
    Not rexp -> prPrec i 2 (concatD [doc (showString "!"), prt 3 rexp])
    Eq rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString "=="), prt 6 rexp2])
    Neq rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString "!="), prt 6 rexp2])
    Lt rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString "<"), prt 6 rexp2])
    LtE rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString "<="), prt 6 rexp2])
    Gt rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString ">"), prt 6 rexp2])
    GtE rexp1 rexp2 -> prPrec i 5 (concatD [prt 6 rexp1, doc (showString ">="), prt 6 rexp2])
    Add rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "+"), prt 8 rexp2])
    Sub rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "-"), prt 8 rexp2])
    Mul rexp1 rexp2 -> prPrec i 8 (concatD [prt 8 rexp1, doc (showString "*"), prt 9 rexp2])
    Div rexp1 rexp2 -> prPrec i 8 (concatD [prt 8 rexp1, doc (showString "/"), prt 9 rexp2])
    Mod rexp1 rexp2 -> prPrec i 8 (concatD [prt 8 rexp1, doc (showString "%"), prt 9 rexp2])
    Neg rexp -> prPrec i 10 (concatD [doc (showString "-"), prt 11 rexp])
    Ref lexp -> prPrec i 10 (concatD [doc (showString "&"), prt 0 lexp])
    Deref rexp -> prPrec i 10 (concatD [doc (showString "*"), prt 0 rexp])
    FCall funcall -> prPrec i 11 (concatD [prt 0 funcall])
    Int n -> prPrec i 12 (concatD [prt 0 n])
    Float d -> prPrec i 12 (concatD [prt 0 d])
    Char c -> prPrec i 12 (concatD [prt 0 c])
    String str -> prPrec i 12 (concatD [prt 0 str])
    Bool boolean -> prPrec i 12 (concatD [prt 0 boolean])
    LExprex lexp -> prPrec i 13 (concatD [prt 0 lexp])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print LExp where
  prt i e = case e of
    PostInc lexp -> prPrec i 0 (concatD [prt 1 lexp, doc (showString "++")])
    PostDecr lexp -> prPrec i 0 (concatD [prt 1 lexp, doc (showString "--")])
    BLExprex blexp -> prPrec i 1 (concatD [prt 0 blexp])
    LExpId cident -> prPrec i 1 (concatD [prt 0 cident])

instance Print BLexp where
  prt i e = case e of
    ExpArr blexp rexp -> prPrec i 0 (concatD [prt 0 blexp, doc (showString "["), prt 0 rexp, doc (showString "]")])
    ExpArrId cident rexp -> prPrec i 0 (concatD [prt 0 cident, doc (showString "["), prt 0 rexp, doc (showString "]")])

instance Print Program where
  prt i e = case e of
    Prog cident compstatements -> prPrec i 0 (concatD [doc (showString "package"), prt 0 cident, prt 0 compstatements])

instance Print BasicType where
  prt i e = case e of
    BasicType_bool -> prPrec i 0 (concatD [doc (showString "bool")])
    BasicType_char -> prPrec i 0 (concatD [doc (showString "char")])
    BasicType_float -> prPrec i 0 (concatD [doc (showString "float")])
    BasicType_int -> prPrec i 0 (concatD [doc (showString "int")])
    BasicType_string -> prPrec i 0 (concatD [doc (showString "string")])
    BasicType1 n basictype -> prPrec i 0 (concatD [doc (showString "["), prt 0 n, doc (showString "]"), prt 0 basictype])
    BasicType2 basictype -> prPrec i 0 (concatD [doc (showString "*"), prt 0 basictype])

instance Print Decl where
  prt i e = case e of
    DeclVar cidents basictype -> prPrec i 0 (concatD [doc (showString "var"), prt 0 cidents, prt 0 basictype])
    DeclVarInit cidents rexps -> prPrec i 0 (concatD [doc (showString "var"), prt 0 cidents, doc (showString "="), prt 0 rexps])
    DeclVarInitType cidents basictype rexps -> prPrec i 0 (concatD [doc (showString "var"), prt 0 cidents, prt 0 basictype, doc (showString "="), prt 0 rexps])
    DeclVarShort cidents rexps -> prPrec i 0 (concatD [prt 0 cidents, doc (showString ":="), prt 0 rexps])

instance Print DeclFun where
  prt i e = case e of
    DeclF cident params basictype block -> prPrec i 0 (concatD [doc (showString "func"), prt 0 cident, doc (showString "("), prt 0 params, doc (showString ")"), prt 0 basictype, prt 0 block])

instance Print DeclProc where
  prt i e = case e of
    DeclP cident params block -> prPrec i 0 (concatD [doc (showString "func"), prt 0 cident, doc (showString "("), prt 0 params, doc (showString ")"), doc (showString "void"), prt 0 block])

instance Print Param where
  prt i e = case e of
    ParamL cidents basictype -> prPrec i 0 (concatD [prt 0 cidents, prt 0 basictype])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Block where
  prt i e = case e of
    BodyBlock compstatements -> prPrec i 0 (concatD [doc (showString "{"), prt 0 compstatements, doc (showString "}")])

instance Print FunCall where
  prt i e = case e of
    ExpFuncEmpty cident -> prPrec i 0 (concatD [prt 0 cident, doc (showString "("), doc (showString ")")])
    ExpFunc cident rexps -> prPrec i 0 (concatD [prt 0 cident, doc (showString "("), prt 0 rexps, doc (showString ")")])

instance Print ProcCall where
  prt i e = case e of
    ExpProcEmpty cident -> prPrec i 0 (concatD [prt 0 cident, doc (showString "("), doc (showString ")")])
    ExpProc cident rexps -> prPrec i 0 (concatD [prt 0 cident, doc (showString "("), prt 0 rexps, doc (showString ")")])

instance Print Statement where
  prt i e = case e of
    StateBlock block -> prPrec i 0 (concatD [prt 0 block])
    StateDecl decl -> prPrec i 0 (concatD [prt 0 decl])
    StateDeclFun declfun -> prPrec i 0 (concatD [prt 0 declfun])
    StateDeclProc declproc -> prPrec i 0 (concatD [prt 0 declproc])
    StateProcCall proccall -> prPrec i 0 (concatD [prt 0 proccall])
    StateExp lexp -> prPrec i 0 (concatD [prt 0 lexp])
    StateAsgn lexp assignmentop rexp -> prPrec i 0 (concatD [prt 0 lexp, prt 0 assignmentop, prt 0 rexp])
    StateReturn rexp -> prPrec i 0 (concatD [doc (showString "return"), prt 0 rexp])
    StateBreak -> prPrec i 0 (concatD [doc (showString "break")])
    StateContinue -> prPrec i 0 (concatD [doc (showString "continue")])
    StateWrite writetype rexp -> prPrec i 0 (concatD [prt 0 writetype, doc (showString "("), prt 0 rexp, doc (showString ")")])
    StateRead readtype -> prPrec i 0 (concatD [prt 0 readtype, doc (showString "("), doc (showString ")")])

instance Print Assignment_op where
  prt i e = case e of
    Assign -> prPrec i 0 (concatD [doc (showString "=")])
    AssgnMul -> prPrec i 0 (concatD [doc (showString "*=")])
    AssgnAdd -> prPrec i 0 (concatD [doc (showString "+=")])
    AssgnDiv -> prPrec i 0 (concatD [doc (showString "/=")])
    AssgnSub -> prPrec i 0 (concatD [doc (showString "-=")])

instance Print CompStatement where
  prt i e = case e of
    CompStmt statement -> prPrec i 0 (concatD [prt 0 statement])
    StateIf rexp block -> prPrec i 0 (concatD [doc (showString "if"), prt 0 rexp, prt 0 block])
    StateIfElse rexp block1 block2 -> prPrec i 0 (concatD [doc (showString "if"), prt 0 rexp, prt 0 block1, doc (showString "else"), prt 0 block2])
    StateIfStm statement rexp block -> prPrec i 0 (concatD [doc (showString "if"), prt 0 statement, doc (showString ";"), prt 0 rexp, prt 0 block])
    StateIfElseStm statement rexp block1 block2 -> prPrec i 0 (concatD [doc (showString "if"), prt 0 statement, doc (showString ";"), prt 0 rexp, prt 0 block1, doc (showString "else"), prt 0 block2])
    StateFor statement1 rexp statement2 block -> prPrec i 0 (concatD [doc (showString "for"), prt 0 statement1, doc (showString ";"), prt 0 rexp, doc (showString ";"), prt 0 statement2, prt 0 block])
    StateWhile rexp block -> prPrec i 0 (concatD [doc (showString "for"), prt 0 rexp, prt 0 block])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print WriteType where
  prt i e = case e of
    WriteType_writeInt -> prPrec i 0 (concatD [doc (showString "writeInt")])
    WriteType_writeFloat -> prPrec i 0 (concatD [doc (showString "writeFloat")])
    WriteType_writeChar -> prPrec i 0 (concatD [doc (showString "writeChar")])
    WriteType_writeString -> prPrec i 0 (concatD [doc (showString "writeString")])

instance Print ReadType where
  prt i e = case e of
    ReadType_readInt -> prPrec i 0 (concatD [doc (showString "readInt")])
    ReadType_readFloat -> prPrec i 0 (concatD [doc (showString "readFloat")])
    ReadType_readChar -> prPrec i 0 (concatD [doc (showString "readChar")])
    ReadType_readString -> prPrec i 0 (concatD [doc (showString "readString")])



{-# OPTIONS -fno-warn-incomplete-patterns #-}
module PrintGo where

-- pretty-printer generated by the BNF converter

import AbsGo
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
  -- "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> shiftBack (i-1) . showChar '}' . rend (i-1) ts
  -- ";"      :ts -> showChar ';' .space "" . rend i ts
    str  : "," :ts -> showString str . space "," . rend i ts
    str  : ")" :ts -> showString str . showChar ')' . rend i ts
    str  : "]" :ts -> showString str . showChar ']' . rend i ts
    str        :ts -> space str . rend i ts
    _            -> id
    
  new i        = showChar '\n' . replicateS ((4*i)+2) (showChar ' ') . dropWhile isSpace
  shiftBack i  = replicateS ((4*i)+1) (showChar ' ') . dropWhile isSpace
  space str      = showString str . (\s -> if null s then "" else (' ':s))


parenth :: Doc -> Doc
parenth ss = ss . doc (showString "\n")


concatS :: [ShowS] -> ShowS
concatS = foldr (.) id


concatD :: [Doc] -> Doc
concatD = foldr (.) id


replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)


-- the printer class does the job
class Print a where
  prt :: Int -> Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList str = concatD . map (prt 0 str)


instance Print a => Print [a] where
  prt _ str = prtList str


instance Print Char where
  prt _ _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList str s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')


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
  prt _ _ x = doc (shows x)


instance Print Double where
  prt _ _ x = doc (shows x)


instance Print Boolean where
  prt i str e = case e of
   Boolean_true  -> prPrec i 0 (concatD [doc (showString "true")])
   Boolean_false  -> prPrec i 0 (concatD [doc (showString "false")])


instance Print Id where
  prt _ str (Id i) = doc (showString ( i))
  prtList  str es = case es of
   [x] -> (concatD [prt 0 str x])
   x:xs -> (concatD [prt 0 str x , doc (showString ",") , prt 0 str xs])


instance Print Type where
  prt i str e = case e of
   TInt  -> prPrec i 0 (concatD [doc (showString "int")])
   TBool  -> prPrec i 0 (concatD [doc (showString "bool")])
   TFloat  -> prPrec i 0 (concatD [doc (showString "float")])
   TChar  -> prPrec i 0 (concatD [doc (showString "char")])
   TString  -> prPrec i 0 (concatD [doc (showString "string")])
   TArray n type' -> prPrec i 0 (concatD [doc (showString "[") , prt 0 str n , doc (showString "]") , prt 0 str  type'])
   TPointer type' -> prPrec i 0 (concatD [doc (showString "*") , prt 0 str type'])


instance Print Start where
  prt i str e = case e of
   Entry id decls -> prPrec i 0 (concatD [ doc (showString "package") , prt 0 str id , doc (showString "\n")  , prt 0 str decls])


instance Print Decl where
  prt i str e = case e of
   DeclVar ids type' -> prPrec i 0 (concatD [doc (showString "var") , prt 0 str ids , prt 0 str type'])
   DeclVarInit ids exprs -> prPrec i 0 (concatD [doc (showString "var") , prt 0 str ids , doc (showString "=") , prt 0 str exprs])
   DeclVarTypeInit ids type_ rexps -> prPrec i 0 (concatD [doc (showString "var"), prt 0 str ids, prt 0 str type_, doc (showString "="), prt 0 str rexps])
   DeclFun id params type' block -> prPrec i 0 (concatD [doc (showString "\nfunc") , prt 0 str id , doc (showString "(") , prt 0  str params , doc (showString ")") , prt 0 str type' , prt 0 str block])
   DeclProc id params block -> prPrec i 0 (concatD [doc (showString "\nfunc") , prt 0 str id , doc (showString "(") , prt 0 str params , doc (showString ")") , prt 0 str block])
  
  prtList str [] = (concatD [])
  prtList str (x:xs) = (concatD [prt str 0 x,  doc (showString "\n"), prt str 0 xs])


instance Print ShortVarDecl where
  prt i str e = case e of
   DeclVarShort ids exprs -> prPrec i 0 (concatD [prt str 0 ids , doc (showString ":=") , prt str 0 exprs])


instance Print Param where
  prt i str e = case e of
   Parameter ids type' -> prPrec i 0 (concatD [prt 0 str ids , prt 0 str type'])
   ParameterPass pass ids type' -> prPrec i 0 (concatD [prt 0 str pass , prt 0 str ids , prt 0 str type'])

  prtList str [] = (concatD [])
  prtList str [x] = (concatD [prt 0 str x])
  prtList str (x:xs) = (concatD [prt 0 str x, doc (showString ","), prt 0 str xs])


instance Print Pass where
  prt i str e = case e of
   PassVal  -> prPrec i 0 (concatD [doc (showString "val")])
   PassRef  -> prPrec i 0 (concatD [doc (showString "ref")])


instance Print Block where
  prt i str e = case e of
   BodyBlock statements -> prPrec i 0 (concatD [doc (showString "{") , prt 0 (str+1) statements , doc (showString "}")])


instance Print Stmt where
  prt i str e = case e of
   StDecl decl -> prPrec i 0 (concatD [prt 0 str  decl])
   StBlock block -> prPrec i 0 (concatD [ prt 0 str block])
   StSmpl statementsmpl -> prPrec i 0 (concatD [ prt 0 str statementsmpl])
   StIf expr block -> prPrec i 0 (concatD [doc (showString "if") , prt 0 str expr , prt 0 str block])
   StIfElse expr block0 block -> prPrec i 0 (concatD [doc (showString "if") , prt 0 str expr , prt 0 str  block0 , doc (showString "else") , prt 0 str block])
   StWhile expr block -> prPrec i 0 (concatD [doc (showString "for") , prt 0 str  expr , prt 0 str  block])
   StBreak  -> prPrec i 0 (concatD [doc (showString "break")])
   StContinue  -> prPrec i 0 (concatD [doc (showString "continue")])
   StReturn expr -> prPrec i 0 (concatD [doc (showString "return") , prt 0 str expr])
   StWrite writet rexp -> prPrec i 0 (concatD [prt 0 str writet, doc (showString "("), prt 0 str rexp, doc (showString ")")])

  prtList str [] = (concatD [])
  prtList str (x:xs) = (concatD [doc ( replicateS (4*str) (showChar ' ')) , prt 1 str x,  prt 1 str xs])


instance Print WriteT where
  prt i str e = case e of
    WriteT_writeInt -> prPrec i 0 (concatD [doc (showString "writeInt")])
    WriteT_writeFloat -> prPrec i 0 (concatD [doc (showString "writeFloat")])
    WriteT_writeChar -> prPrec i 0 (concatD [doc (showString "writeChar")])
    WriteT_writeString -> prPrec i 0 (concatD [doc (showString "writeString")])
   

instance Print StmtSmpl where
  prt i str e = case e of
   StShortVarDecl shortvardecl -> prPrec i 0 (concatD [prt 0 str   shortvardecl])
   StExp expr -> prPrec i 0 (concatD [prt 0 str expr])
   StAsgn expl expr -> prPrec i 0 (concatD [prt 0 str  expl , doc (showString "=") , prt 0 str  expr])
  
  prtList str []  = (concatD [])
  prtList str [x] = (concatD [prt 0 str x])
  

instance Print LExp where
  prt i str e = case e of
   ExpId id -> prPrec i 0 (concatD [prt 0 str id])
   ExpArr expl expr -> prPrec i 0 (concatD [prt 0 str  expl , doc (showString "[") , prt 0 str  expr , doc (showString "]")])
   ExpDeref expr -> prPrec i 0 (concatD [doc (showString "*") , prt 0 str  expr])


instance Print RExp where
  prt i str e = case e of
   ExpAnd expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "&&") , prt 0 str  expr])
   ExpOr expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "||") , prt 0 str  expr])
   ExpNot expr -> prPrec i 0 (concatD [doc (showString "!") , prt 0 str  expr])
   ExpEq expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "==") , prt 0 str  expr])
   ExpNeq expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "!=") , prt 0 str  expr])
   ExpLt expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "<") , prt 0 str  expr])
   ExpLtE expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "<=") , prt 0 str  expr])
   ExpGt expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString ">") , prt 0 str  expr])
   ExpGtE expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString ">=") , prt 0 str  expr])
   ExpAdd expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "+") , prt 0 str  expr])
   ExpSub expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "-") , prt 0 str  expr])
   ExpMul expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "*") , prt 0 str  expr])
   ExpDiv expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "/") , prt 0 str  expr])
   ExpMod expr0 expr -> prPrec i 0 (concatD [prt 0 str  expr0 , doc (showString "%") , prt 0 str  expr])
   ExpNeg expr -> prPrec i 0 (concatD [doc (showString "-") , prt 0 str  expr])
   ExpRef expl -> prPrec i 0 (concatD [doc (showString "&") , prt 0 str  expl])
   ExpFuncEmpty id -> prPrec i 0 (concatD [prt 0 str  id , doc (showString "(") , doc (showString ")")])
   ExpFunc id exprs -> prPrec i 0 (concatD [prt 0 str  id , doc (showString "(") , prt 0 str  exprs , doc (showString ")")])
   ExpVal value -> prPrec i 0 (concatD [prt 0 str  value])
   ExpLExp expl -> prPrec i 0 (concatD [prt 0 str  expl])
   ExpPar expr -> prPrec i 0 (concatD [doc (showString "(") , prt 0 str  expr , doc (showString ")")])
   StRead readt -> prPrec i 0 (concatD [prt 0 str readt, doc (showString "("), doc (showString ")")])

  prtList str [x] = (concatD [prt 0 str x])
  prtList str (x:xs) = (concatD [prt 0 str x, doc (showString ","), prt 0 str xs])


instance Print ReadT where
  prt i str e = case e of
    ReadT_readInt -> prPrec i 0 (concatD [doc (showString "readInt")])
    ReadT_readFloat -> prPrec i 0 (concatD [doc (showString "readFloat")])
    ReadT_readChar -> prPrec i 0 (concatD [doc (showString "readChar")])
    ReadT_readString -> prPrec i 0 (concatD [doc (showString "readString")])
    

instance Print Val where
  prt i str e = case e of
   Int n -> prPrec i 0 (concatD [prt 0 str n])
   Float d -> prPrec i 0 (concatD [prt 0 str d])
   Char c -> prPrec i 0 (concatD [prt 0 str c])
   String s -> prPrec i 0 (concatD [prt 0 str s])
   Bool boolean -> prPrec i 0 (concatD [prt 0 str boolean])






module TAC where

import AbsGo
import Env


data TacLine = 
    NulOp String String                   -- 2 types
  | UnOp String String String             -- op and 2 types
  | BinOp String String String String     -- op and 3 types
  | UncondJ Int                           -- lblel
  | CondJ String Int                      -- type and lblel
  | FunDecl String Id Int                 -- string, id and int
  | FunCall Char String Id [String]       -- char, type, id and list of types
  | Lbl Int                               -- lblel
  | Return String                         -- type
    deriving (Eq,Ord,Show)


printParam :: [String] -> String
printParam [] = []
printParam [x] = x
printParam (x:xs) = x ++ "," ++  printParam xs

printTac :: [TacLine] -> String
printTac [] = ""
printTac (x:xs) = case x of
                       NulOp t1 t2        -> "\t" ++ t1 ++ " = " ++ t2
                       UnOp op t1 t2      -> "\t" ++ t1 ++ " = " ++ op ++ " " ++ t2
                       BinOp op t1 t2 t3  -> "\t" ++ t1 ++ " = " ++ t2 ++ " " ++ op ++ " " ++ t3
                       UncondJ lbl        -> "\t" ++ "goto label" ++ (show lbl)
                       CondJ t1 lbl       -> "\t" ++ "if " ++ t1  ++ " goto label" ++ (show lbl)
                       FunDecl str id int -> str ++ " " ++ (idToStr id) ++  "/" ++ (show int)
                       FunCall c t id lt  -> case c of {
                                                 'p' -> "\tcall " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                 'f' ->"\t" ++ t ++ " = " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                  _  -> "Compiler error" ;}
                       Lbl lbl            -> "label" ++ (show lbl) ++ " :"
                       Return t           -> "\treturn " ++ t
                  ++ "\n"
                  ++ (printTac xs)

tacAssign :: [Id] -> [String] -> [TacLine]
tacAssign [] [] = []
tacAssign (x:xs) (y:ys) = (NulOp (idToStr x) y) : (tacAssign xs ys)


size :: Type -> Integer
size aType = case aType of
        TInt    -> 4
        TFloat  -> 8
        TChar   -> 1
        TString -> 64
        TBool   -> 1
        (TPointer t) -> 8
        (TArray d t) -> d * (size t)

showType :: Type -> String
showType TVoid   = "void"
showType TInt    = "int"
showType TFloat  = "float"
showType TChar   = "char"
showType TString = "string"
showType TBool   = "boolean"
showType (TPointer t) = "*" ++ showType t
showType (TArray n t) = showType t ++ "[]"

showVal :: Val -> String
showVal (Int x)    = show x
showVal (Float x)  = show x
showVal (Char x)   = "'"++(x:"'")
showVal (String x) = "\""++x++"\""
showVal (Bool Boolean_true) = "true"
showVal (Bool Boolean_false) = "false"


getPosV :: Id -> [ElemVar] -> String
getPosV id env = case extractVar id env of
                      Var _ _ _ pos -> "_" ++ (drop 5 pos)

getPosF :: Id -> [ElemFun] -> String
getPosF id env = case extractFun id env of
                      Fun _ _ _ pos -> "_" ++ (drop 5 pos)

setPos :: [Id] -> String -> [Id]
setPos ids pos = map (\id -> Id $ (idToStr id) ++ "_" ++ (drop 5 pos)) ids

shift :: [TacLine] -> Int -> [TacLine]
shift tacList n = map (\x -> shift1 x n) tacList
          where shift1 tacLine n = case tacLine of
                                        CondJ t1 lbl -> CondJ t1 (lbl+n)
                                        x            -> x

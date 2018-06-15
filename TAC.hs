module TAC where

import AbsGo
import Env


data TacLine = 
    NulOp String String                   -- 2 types
  | UnOp String String String             -- op and 2 types
  | BinOp String String String String     -- op and 3 types
  | UncondJ Int                           -- label
  | CondJFalse String Int                 -- type and label
  | CondJTrue String Int                  -- type and label
  | FunDecl String Id Int                 -- string, id and int
  | FunCall Char String Id [String]       -- char, type, id and list of types
  | ExcpJ Int                             -- label
  | Lbl Int                               -- label
  | Return String                         -- type
    deriving (Eq,Ord,Show)


printParam :: [String] -> String
printParam [] = []
printParam [x] = x
printParam (x:xs) = x ++ "," ++  printParam xs

-- TAC pretty printer
printTac :: [TacLine] -> String
printTac [] = ""
printTac (x:xs) = case x of
                       NulOp t1 t2        -> "\t" ++ t1 ++ " = " ++ t2
                       UnOp op t1 t2      -> "\t" ++ t1 ++ " = " ++ op ++ " " ++ t2
                       BinOp op t1 t2 t3  -> "\t" ++ t1 ++ " = " ++ t2 ++ " " ++ op ++ " " ++ t3
                       UncondJ lbl        -> "\t" ++ "goto label" ++ (show lbl)
                       CondJFalse t1 lbl  -> "\t" ++ "if !" ++ t1  ++ " goto label" ++ (show lbl)
                       CondJTrue t1 lbl   -> "\t" ++ "if " ++ t1  ++ " goto label" ++ (show lbl)
                       FunDecl str id int -> str ++ " " ++ (idToStr id) ++  "/" ++ (show int)
                       FunCall c t id lt  -> case c of {
                                                 'p' -> "\tcall " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                 'f' ->"\t" ++ t ++ " = " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                  _  -> "Compiler error" ;}
                       ExcpJ lab -> "\tonexceptiongoto "  ++  "label" ++  (show lab);
                       Lbl lbl            -> "label" ++ (show lbl) ++ " :"
                       Return t           -> "\treturn " ++ t
                  ++ "\n"
                  ++ (printTac xs)

-- association between left-expression and right-expression during assignment
tacAssign :: [Id] -> [String] -> [TacLine]
tacAssign [] [] = []
tacAssign (x:xs) (y:ys) = (NulOp (idToStr x) y) : (tacAssign xs ys)

-- types bit dimensions (used for array allocation)
size :: Type -> Integer
size aType = case aType of
        TInt    -> 4
        TFloat  -> 8
        TChar   -> 1
        TString -> 64
        TBool   -> 1
        (TPointer t) -> 8
        (TArray d t) -> d * (size t)

-- value print functions
showVal :: Val -> String
showVal (Int x)    = show x
showVal (Float x)  = show x
showVal (Char x)   = "'"++(x:"'")
showVal (String x) = "\""++x++"\""
showVal (Bool Boolean_true) = "true"
showVal (Bool Boolean_false) = "false"

-- get variable declaration line position
getPosV :: Id -> [ElemVar] -> String
getPosV id env = case extractVar id env of
                      Var _ _ _ pos -> "_" ++ (drop 5 pos)

-- get function/procedure declaration line position
getPosF :: Id -> [ElemFun] -> String
getPosF id env = case extractFun id env of
                      Fun _ _ _ pos -> "_" ++ (drop 5 pos)

-- set variable id adding declaration line position
setPos :: [Id] -> String -> [Id]
setPos ids pos = map (\id -> Id $ (idToStr id) ++ "_" ++ (drop 5 pos)) ids

-- set label value for manage short-cut operation 
shift :: [TacLine] -> Int -> [TacLine]
shift tacList n = map (\x -> shift1 x n) tacList
          where shift1 tacLine n = case tacLine of
                                        CondJFalse t1 lbl -> CondJFalse t1 (lbl+n)
                                        CondJTrue  t1 lbl -> CondJTrue t1 (lbl+n)
                                        x                 -> x

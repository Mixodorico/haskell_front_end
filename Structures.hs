module Structures where

import AbsGo

----------------------------------------------------------------------------------------------
------------------ DATA-TYPE DI VARIABILI , FUNZIONI -----------------------------------------
----------------------- E PRINCIPALI OPERAZIONI ----------------------------------------------
----------------------------------------------------------------------------------------------


data ElemVar = Var Id Type Bool String
      deriving(Eq,Ord,Show)
      
data ElemFun = Fun Id Type [Type] String
      deriving(Eq,Ord,Show)


searchVar id [] = False
searchVar id (Var a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchVar id xs

searchFun id [] = False               
searchFun id (Fun a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchFun id xs

extractVar id (x@(Var a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractVar id xs

extractFun id (x@(Fun a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractFun id xs

insertVar x@(Var a _ _ _) xs
                      | searchVar a xs = x:(deleteVar a xs)
                      | otherwise = x:xs

insertFun x@(Fun a _ _ _) xs
                      | searchFun a xs = x:(deleteFun a xs)
                      | otherwise = x:xs  

deleteVar id [] = []
deleteVar id (x@(Var a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteVar id xs)

deleteFun id [] = []                 
deleteFun id (x@(Fun a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteFun id xs)

createListType [] _ _= []
createListType (x:xs) t p = (Var x t True p):(createListType xs t p)

createListTypes [] _ _ = []
createListTypes (x:xs) (t:ts) p = (Var x t True p):(createListTypes xs ts p)

resetEnvVar [] = []
resetEnvVar (Var a t _ p:xs) =  (Var a t False p):(resetEnvVar xs)

unionVar [] ys = ys
unionVar (x:xs) ys = insertVar x (unionVar xs ys) 

getTypeFun (Fun _ t _ _) = t
getTypeListFun (Fun _ _ tl _) = tl
getTypeVar (Var _ t _ _) = t
getTypePtr (TPointer t) = t
getTypeArr (TArray _ t) = t

isTypePtr t = case t of
                   TPointer _ -> True
                   _          -> False

idToStr (Id str) = str
 
----------------------------------------------------------------------------------------------
------------------ THREE ADDRESS CODE DATA-TYPE e PRETTY PRINTER -----------------------------
----------------------------------------------------------------------------------------------


data TacLine = 
    NulOp String String                   -- 2 types
  | UnOp String String String             -- op and 2 types
  | BinOp String String String String     -- op and 3 types
  | UncondJ Int                           -- label
  | CondJFalse String Int                 -- type and label
  | CondJTrue String Int                  -- type and label
  | FunDecl String Id Int                 -- string, id and int
  | FunCall Char String Id [String]       -- char, type, id and list of types
  | Lbl Int                               -- label
  | Return String                         -- type
    deriving (Eq,Ord,Show)

tacAssign [] [] = []
tacAssign (x:xs) (y:ys) = (NulOp (idToStr x) y) : (tacAssign xs ys)

printParam [] = []
printParam [x] = x
printParam (x:xs) = x ++ "," ++  printParam xs

printTac []     = ""
printTac (x:xs) = case x of
                       NulOp t1 t2        -> "\t" ++ t1 ++ " = " ++ t2
                       UnOp op t1 t2      -> "\t" ++ t1 ++ " = " ++ op ++ " " ++ t2
                       BinOp op t1 t2 t3  -> "\t" ++ t1 ++ " = " ++ t2 ++ " " ++ op ++ " " ++ t3
                       UncondJ lab        -> "\t" ++ "goto label" ++ (show lab)
                       CondJFalse t1 lab  -> "\t" ++ "if !" ++ t1  ++ " goto label" ++ (show lab)
                       CondJTrue t1 lab   -> "\t" ++ "if " ++ t1  ++ " goto label" ++ (show lab)
                       FunDecl str id int -> str ++ " " ++ (idToStr id) ++  "/" ++ (show int)
                       FunCall c t id lt  -> case c of {
                                                 'p' -> "\tcall " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                 'f' ->"\t" ++ t ++ " = " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
                                                  _  -> "error" ;}
                       Lbl lab            -> "label" ++ (show lab) ++ " :"
                       Return t           -> "\treturn " ++ t
                  ++ "\n" ++ (printTac xs) 

size aType = case aType of {
        TInt -> 4;
        TFloat -> 8;
        TChar -> 2;
        TString -> 32;
        TBool -> 1;
        (TPointer _) -> 4;
        (TArray d t) -> d * (size t);
        }


showType (TVoid) = "void"
showType (TInt) =   "int"
showType (TFloat) = "float"
showType (TChar) =  "char"
showType (TString) = "string"
showType (TBool) =  "boolean"
showType (TArray n t) = "array[] "++showType t
showType (TPointer t) = "*"++showType t


showVal (Int i) = show i
showVal (Float f) = show f
showVal (Char c)= "'"++(c:"'")
showVal (String s)= "\""++s++"\""
showVal (Bool Boolean_true)= "true"
showVal (Bool Boolean_false)= "false"

getPosV id env = case (extractVar id env) of
                     Var _ _ _ pos -> "_"++drop 5 pos

getPosF id env = case (extractFun id env) of
                     Fun _ _ _ pos -> "_"++drop 5 pos

setPos ids pos = map (\id -> Id $ (idToStr id)++"_"++drop 5 pos) ids


shift tacList n = map (\x -> shift1 x n) tacList
shift1 tacOp n = case tacOp of
                      CondJFalse t1 lab -> CondJFalse t1 (lab+n)
                      CondJTrue t1 lab -> CondJTrue t1 (lab+n)
                      x -> x



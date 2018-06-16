module Env where

import AbsGo


data ElemVar = Var Id Type Bool String
      deriving(Eq,Ord,Show)
      
data ElemFun = Fun Id Type [Type] String
      deriving(Eq,Ord,Show)


-- search a variable (by id) in the variables environment
searchVar :: Id -> [ElemVar] -> Bool
searchVar id [] = False
searchVar id (Var a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchVar id xs

-- search a function/procedure (by id) in the functions/procedures environment
searchFun :: Id -> [ElemFun] -> Bool
searchFun id [] = False               
searchFun id (Fun a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchFun id xs

-- extract a variable (by id) from the variables environment
extractVar :: Id -> [ElemVar] -> ElemVar
extractVar id (x@(Var a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractVar id xs

-- extract a (by id) function/procedure from the functions/procedures environment
extractFun :: Id -> [ElemFun] -> ElemFun
extractFun id (x@(Fun a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractFun id xs

-- insert a variable in the variables environment
insertVar :: ElemVar -> [ElemVar] -> [ElemVar]
insertVar x@(Var a _ _ _) xs
                      | searchVar a xs = x:(deleteVar a xs)
                      | otherwise = x:xs

-- insert a function/procedure in the functions/procedures environment
insertFun :: ElemFun -> [ElemFun] -> [ElemFun]
insertFun x@(Fun a _ _ _) xs
                      | searchFun a xs = x:(deleteFun a xs)
                      | otherwise = x:xs  

-- delete a variable from the variables environment
deleteVar :: Id -> [ElemVar] -> [ElemVar]
deleteVar id [] = []
deleteVar id (x@(Var a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteVar id xs)

-- delete a function/procedure from the functions/procedures environment
deleteFun :: Id -> [ElemFun] -> [ElemFun]
deleteFun id [] = []                 
deleteFun id (x@(Fun a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteFun id xs)

-- add to the environment a list of variables of the same type
createListType :: [Id] -> Type -> String -> [ElemVar]
createListType [] _ _= []
createListType (x:xs) t p = (Var x t True p):(createListType xs t p)

-- add to the environment a list of variables of different types 
createListTypes :: [Id] -> [Type] -> String -> [ElemVar]
createListTypes [] _ _ = []
createListTypes (x:xs) (t:ts) p = (Var x t True p):(createListTypes xs ts p)

-- reset the environment setting the old variables to false
resetEnvVar :: [ElemVar] -> [ElemVar]
resetEnvVar [] = []
resetEnvVar (Var a t _ p:xs) = (Var a t False p):(resetEnvVar xs)

-- "unify" the new variables and the ones already present in the environment
unionVar :: [ElemVar] -> [ElemVar] -> [ElemVar]
unionVar [] ys = ys
unionVar (x:xs) ys = insertVar x (unionVar xs ys)

-- get type functions 
getTypeFun (Fun _ t _ _) = t
getTypeListFun (Fun _ _ tl _) = tl
getTypeVar (Var _ t _ _) = t
getTypePtr (TPointer t) = t
getTypeArr (TArray _ t) = t

-- check if type is pointer or not
isTypePtr :: Type -> Bool
isTypePtr t = case t of
                   TPointer _ -> True
                   _          -> False

idToStr :: Id -> String
idToStr (Id str) = str

module Env where

import AbsGo


data ElemVar = Var Id Type Bool String
      deriving(Eq,Ord,Show)
      
data ElemFun = Fun Id Type [Type] String
      deriving(Eq,Ord,Show)


searchVar :: Id -> [ElemVar] -> Bool
searchVar id [] = False
searchVar id (Var a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchVar id xs

searchFun :: Id -> [ElemFun] -> Bool
searchFun id [] = False               
searchFun id (Fun a _ _ _:xs)
                      | id==a = True
                      | otherwise = searchFun id xs

extractVar :: Id -> [ElemVar] -> ElemVar
extractVar id (x@(Var a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractVar id xs

extractFun :: Id -> [ElemFun] -> ElemFun
extractFun id (x@(Fun a _ _ _):xs)
                      | id==a = x
                      | otherwise = extractFun id xs

insertVar :: ElemVar -> [ElemVar] -> [ElemVar]
insertVar x@(Var a _ _ _) xs
                      | searchVar a xs = x:(deleteVar a xs)
                      | otherwise = x:xs

insertFun :: ElemFun -> [ElemFun] -> [ElemFun]
insertFun x@(Fun a _ _ _) xs
                      | searchFun a xs = x:(deleteFun a xs)
                      | otherwise = x:xs  

deleteVar :: Id -> [ElemVar] -> [ElemVar]
deleteVar id [] = []
deleteVar id (x@(Var a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteVar id xs)

deleteFun :: Id -> [ElemFun] -> [ElemFun]
deleteFun id [] = []                 
deleteFun id (x@(Fun a _ _ _):xs)
                      | id==a = xs
                      | otherwise = x:(deleteFun id xs)

createListType :: [Id] -> Type -> String -> [ElemVar]
createListType [] _ _= []
createListType (x:xs) t p = (Var x t True p):(createListType xs t p)

createListTypes :: [Id] -> [Type] -> String -> [ElemVar]
createListTypes [] _ _ = []
createListTypes (x:xs) (t:ts) p = (Var x t True p):(createListTypes xs ts p)

resetEnvVar :: [ElemVar] -> [ElemVar]
resetEnvVar [] = []
resetEnvVar (Var a t _ p:xs) = (Var a t False p):(resetEnvVar xs)

unionVar :: [ElemVar] -> [ElemVar] -> [ElemVar]
unionVar [] ys = ys
unionVar (x:xs) ys = insertVar x (unionVar xs ys)
ams params pos xs = concatMap (\(Parameter ids t) -> unionVar (createListType ids t pos) xs) params

getTypeFun (Fun _ t _ _) = t
getTypeListFun (Fun _ _ tl _) = tl
getTypeVar (Var _ t _ _) = t
getTypePtr (TPointer t) = t
getTypeArr (TArray _ t) = t

isTypePtr :: Type -> Bool
isTypePtr t = case t of
                   TPointer _ -> True
                   _          -> False

idToStr :: Id -> String
idToStr (Id str) = str

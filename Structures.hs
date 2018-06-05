module Structures where

import Absgo

----------------------------------------------------------------------------------------------
------------------ DATA-TYPE DI VARIABILI , FUNZIONI -----------------------------------------
----------------------- E PRINCIPALI OPERAZIONI ----------------------------------------------
----------------------------------------------------------------------------------------------


data ElmVar = Var Id Type Bool
			deriving(Eq,Ord,Show)
			
data ElmFun = Fun Id Type [Type]
			deriving(Eq,Ord,Show)


-- determina se c'è una una variabile in una lista di variabili dato il suo id			
searchVar id [] = 	False
searchVar id ((Var a _ _):xs) 	| id==a = 	True
				| otherwise = searchVar id xs

-- determina se c'è una funzione in una lista di funzioni dato il suo id	
searchFun id [] = 	False								
searchFun id ((Fun a _ _ ):xs)   | id==a = True
				  | otherwise = searchFun id xs

-- dato l'id se è presente una variabile nella lista la estrae								
extrVar id (x@(Var a _ _):xs)	| id==a = 	x
				| otherwise = extrVar id xs

-- dato l'id se è presente una funzione nella lista la estrae	
extrFun id (x@(Fun a _ _ ):xs)	| id==a = 	x
				| otherwise = extrFun id xs

-- inserisce una variabile nella lista e se c'è la sovrascrive					
insVar x@(Var a _ _) xs 	| (searchVar a xs) =   x:(deleteVar a xs)
			| otherwise = x:xs

-- inserisce una funzione nella lista e se c'è la sovrascrive					   
insFun x@(Fun a _ _ ) xs | (searchFun a xs) =   x:(deleteFun a xs)
			| otherwise = x:xs	

-- elimina se presente una variabile dalla lista dato l'id
deleteVar  id [] = []
deleteVar  id (x@(Var a _ _):xs)  |  id==a = xs
				|  otherwise = x:(deleteVar id xs)

-- elimina se presente una funzione dalla lista dato l'id
deleteFun   id [] = []								 
deleteFun   id (x@(Fun a _ _ ):xs)  	|  id==a = xs
					|  otherwise = x:(deleteFun id xs)

-- data una lista (di ID) e un tipo crea una lista di variabili
createList []  _ = []
createList (x:xs) t = (Var x t True):(createList xs t)

-- data una lista (di ID) ed una lista di tipi crea una lista di variabili
createListMod []  _ = []
createListMod (x:xs) (t:ts) = (Var x t True):(createListMod xs ts)


--verifica se la variabile è stata definita nello stesso blocco in caso affermativo la restituisce
ctrlDeclVar id [] = 	Nothing
ctrlDeclVar id ((Var a _ True):xs) | id==a = 	Just a
				   | otherwise = ctrlDeclVar id xs
ctrlDeclVar id ((Var a _ False):xs) = ctrlDeclVar id xs



-- data una lista (di ID) e la lista delle variabili ed applica ctrlDeclVar ad ogni elemento della lista di id
ctrlDeclVarList [] _  = Nothing
ctrlDeclVarList (x:xs) ys = case (ctrlDeclVar x ys) of {
				Just a -> Just a;
				Nothing -> ctrlDeclVarList xs ys;
			}

--resetta l'attributo boleano delle variabili in modo che possano essere ridefinite in un nuovo blocco
resetEnvV [] = []
resetEnvV ((Var a t _ ):xs) =  (Var a t False ) : resetEnvV xs

-- date due liste di variabili crea la lista unificata sovrascrivendo i doppioni
unionVar [] ys = ys
unionVar (x:xs) ys = insVar x (unionVar xs ys) 

-- restituiscono il tipo
getTypeFun (Fun _ t _ ) = t
getTypeListFun (Fun _ _ tl ) = tl
getTypeVar (Var _ t _) = t
getTypePnt (TypePointer t) = t
getTypeArr (TypeArray _ t) = t

-- verifica se t è di tipo puntatore
isTyipePnt t = case t of {
		(TypePointer _) -> True;
	      	_ -> False;
		}

-- Restiuisce l'id
idToStr (Id str) = str

 
----------------------------------------------------------------------------------------------
------------------ THREE ADDRESS CODE DATA-TYPE e PRETTY PRINTER -----------------------------
----------------------------------------------------------------------------------------------


data TacOp = 
	  NulOp T T
	| UnOp Op T T 
	| BinOp Op T T T	
	| UnCondJ Label
	| CondJ T Label
	| FunDecl String Id Int
	| FunCall String T Id [T] 
	| Lbl Label 
	| OneExcpJ Label
	| Return T
	  deriving (Eq,Ord,Show)


type T = String
type Op = String
type Label = Int

-- genera una lista di assegnamenti (usata nelle dichiarazioni multiple di variabili)
tacAssign [] [] = []
tacAssign (x:xs) (y:ys) = (NulOp (idToStr x) y) : (tacAssign xs ys)

-- esegue il pretty print del tac
printTac []   = ""
printTac (x:xs) = (case x of{
					NulOp t1 t2 -> "\t" ++ t1 ++ " = " ++ t2;
					UnOp op t1 t2 ->"\t" ++ t1 ++ " = " ++ op ++ " " ++ t2;
					BinOp op t1 t2 t3 ->"\t" ++ t1 ++ " = " ++ t2 ++ " " ++ op ++ " " ++ t3;
					UnCondJ lab -> "\t" ++ "goto label" ++ (show lab);
					CondJ t1 lab ->	"\t" ++"if " ++ t1  ++ " goto label" ++ (show lab);
					FunDecl str id int ->str ++ " " ++ (idToStr id) ++  "/" ++ (show int);
					FunCall str t id lt -> (case str of {
									"function" ->"\t" ++ t ++ " = " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")" ;
									"procedure" -> "\tcall " ++ (idToStr id) ++  " (" ++ (printParam lt) ++ ")";
									 _ -> "error";
								});
					Lbl lab -> "label" ++  (show lab) ++ " :";
					OneExcpJ lab -> "\tonexceptiongoto "  ++  "label" ++  (show lab);
					Return t -> "\treturn " ++ t;
				}) ++ "\n" ++ (printTac xs) 

printParam [] = []
printParam [x] = x
printParam (x:xs) = x ++ "," ++  printParam xs




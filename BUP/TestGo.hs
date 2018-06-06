-- automatically generated by BNF Converter
module Main where


import System.IO ( stdin, hGetContents )
import System.Environment ( getArgs, getProgName )

import LexGo
import ParGo
import SkelGo
import PrintGo
import AbsGo
import Structures




import ErrM

type ParseFun a = [Token] -> Err a

myLLexer = myLexer

type Verbosity = Int


putStrV v s = if v > 1 then putStrLn s else return ()


runFile v p f = putStrLn f >> readFile f >>= run v p


run v p s = let ts = myLLexer s in case p ts of
           Bad s    -> do putStrLn "\nParse              Failed...\n"
                          putStrV v "Error:"
                          putStrLn s
           Ok  (tree, tac) -> do putStrLn "\nParse Successful!"
                                 putStrV v $ "\n[Linearized tree]\n\n" ++ printTree tree
                                 putStrV v $ "\n[Three Address Code]\n\n" ++ printTac tac
        


main = do args <- getArgs
          case args of
            [] -> hGetContents stdin >>= run 2 pStart
            "-s":fs -> mapM_ (runFile 0 pStart) fs
            fs -> mapM_ (runFile 2 pStart) fs





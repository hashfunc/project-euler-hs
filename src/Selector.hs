module Selector
( select
) where

import Problem.P0001

select :: [String] -> IO ()
select [args] =
    putStrLn $ case args of
        "1" -> Problem.P0001.solve
        x   -> x ++ " does not exist."
select _ = putStrLn "Usage: project-euler-hs NUMBER_OF_PROBLEM"

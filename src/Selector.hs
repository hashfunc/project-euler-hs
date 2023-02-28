module Selector
( select
) where

select :: [String] -> IO ()
select [args] =
    putStrLn $ case args of
        x   -> x ++ " does not exist."
select _ = putStrLn "Usage: project-euler-hs NUMBER_OF_PROBLEM"

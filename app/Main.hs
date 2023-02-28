module Main (main) where

import System.Environment (getArgs)

import Selector

main :: IO ()
main = do
    args <- getArgs
    Selector.select args

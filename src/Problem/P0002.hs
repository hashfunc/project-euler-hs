module Problem.P0002
( solve
) where

solve :: String
solve = show $ sum $ filter odd $ takeWhile (<4000000) fibonacci

fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

module Problem.P0001
( solve
) where

solve :: String
solve = show $ sum $ filter checkCondition [1..1000]

checkCondition :: Int -> Bool
checkCondition n = n `mod` 3 == 0 || n `mod` 5 == 0

module Problem.P0003
( solve
) where

solve :: String
solve = show $ lagestPrimeFactorOf 600851475143

lagestPrimeFactorOf :: Int -> [Int]
lagestPrimeFactorOf n = take 1 $ filter (\x -> (lagestPrimeFactorOf x) == []) $ factors
    where factors = filter (isDivisorOf n) $ takeWhile (>1) $ iterate pred start
          start = floor $ sqrt $ fromIntegral n

isDivisorOf :: Int -> Int -> Bool
isDivisorOf x y = x `mod` y == 0

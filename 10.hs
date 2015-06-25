module Main where

isPrime :: Integer -> Bool
isPrime n
        | n <= 3 = n > 1
        | n `mod` 2 == 0 || n `mod` 3 == 0 = False
        | otherwise = not $ any (\x -> n `mod` x == 0 || n `mod` (x + 2) == 0)
                      $ takeWhile (\x -> x*x <= n) [5, 11..]

main :: IO ()
main = print $ sum $ 2 : 3 : [x | x <- [5, 7..1999999], isPrime x]

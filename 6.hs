module Main where

main :: IO ()
main = print $ (sum [1..100]) ^ 2 - (sum $ map (^2) [1..100])

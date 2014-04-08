module Main where

main :: IO ()
main = print $ foldl (\acc x -> lcm x acc) 1 [1..20]

module Main where

import Control.Applicative

-- The numbers are not too big, so I went with a brute force approach!

x :: [Integer]
x = pure (*) <*> [1..999] <*> [1..999]

isPalindrome :: Integer -> Bool
isPalindrome n = show n == reverse (show n)

main :: IO ()
main = print $ maximum $ filter isPalindrome x

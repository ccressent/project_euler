module Main where

import Data.Numbers.Primes (primeFactors)
import System.Environment (getArgs)

-- This problem is about finding the prime factorization of a "large" number.
-- My attempt was too slow for numbers above 10000, so I ended up just using
-- the Data.Numbers.Primes library...

main :: IO ()
main = getArgs >>= print . maximum . primeFactors . read . head

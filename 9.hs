module Main where

-- The a + b + c = s = 1000 constraint justifies a brute force approach.
-- If s was a few orders of magnitude bigger, it would have been worth finding
-- a "clever" approach.
triplet :: (Integer, Integer, Integer)
triplet = head [(a, b, c) | a <- [1..1000],
                            b <- [1..1000],
                            c <- [1..1000],
                            a*a + b*b == c*c,
                            a < b,
                            b < c,
                            a + b + c == 1000]

printTriplet :: (Num a, Show a) => (a, a, a) -> IO ()
printTriplet (a, b, c) = putStrLn $ "(a=" ++ show a ++ ",b=" ++ show b ++ ",c=" ++ show c ++ ")"

tripletProduct :: Num a => (a, a, a) -> a
tripletProduct (a, b ,c) = a * b * c

main :: IO ()
main = printTriplet triplet >> print (tripletProduct triplet)

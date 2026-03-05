module Hazi04 where

-- 1. feladat
validTime :: Integer -> Integer -> Bool
validTime x y
  | x >= 0 && x <= 23 && y >= 0 && y <= 59 = True
  | otherwise = False

-- 2. feladat
-- helper function: it returns the divisors of it divides the number, else it returns 0 
ifDivisorThenNumber :: Integer -> Integer -> Integer
ifDivisorThenNumber x y
  | x `mod` y == 0 = y
  | otherwise = 0

sumOfDivisors :: Integer -> Integer
sumOfDivisors n = sum [ifDivisorThenNumber n x | x <- [1..n]]

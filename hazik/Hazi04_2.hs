module Hazi04_2 where

-- 1. feladat
validTime :: Integer -> Integer -> Bool
validTime x y
  | x >= 0 && x <= 23 && y >= 0 && y <= 59 = True
  | otherwise = False

-- 2. feladat
sumOfDivisorsRecursive :: Integer -> Integer -> Integer
sumOfDivisorsRecursive x y
  | x <= 0 || y <= 0 = 0 
  | x `mod` y == 0 = y + sumOfDivisorsRecursive x (y - 1)
  | otherwise = sumOfDivisorsRecursive x (y - 1)

sumOfDivisors :: Integer -> Integer
sumOfDivisors n = sumOfDivisorsRecursive n n
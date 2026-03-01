module Hazi03 where

-- 1. feladat
indexOfArg :: Integer -> Integer -> Integer -> Integer
indexOfArg 0 _ _ = 1
indexOfArg _ 0 _ = 2
indexOfArg _ _ 0 = 3
indexOfArg _ _ _ = -1

-- 2. feladat: Szökőév-e
isLeapYear :: Integer -> Bool
isLeapYear x = x `mod` 4 == 0 && (x `mod` 100 /= 0 || x `mod` 400 == 0)

-- 3. feladat: rekurzió
multiply :: Integer -> Integer -> Integer
multiply 0 _ = 0
multiply _ 0 = 0
multiply n 1 = n
multiply n m = n + multiply n (m - 1)
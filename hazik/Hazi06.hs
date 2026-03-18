module Hazi06 where

-- 1. feladat
range :: [Integer] -> [Integer]
range [] = []
range (x:[]) = [x..]
range (x:y:[]) = [x,y..]
range (x:y:z:zs) = [x,y..z]

-- 2. feladat
numOfOcc :: Eq a => a -> [a] -> Integer
numOfOcc ch [] = 0
numOfOcc ch (x:[])
  | ch == x = 1
  | ch /= x = 0
numOfOcc ch (x:xs)
  | ch /= x = numOfOcc ch xs
  | ch == x = 1 + numOfOcc ch xs
  
-- 3. feladat
elimElem :: Eq a => a -> [a] -> [a]
elimElem ch [] = []
elimElem ch (x:[]) 
  | ch == x = []
  | ch /= x = x : []
elimElem ch (x:xs)
  | ch == x = elimElem ch xs
  | ch /= x = x :elimElem ch xs

-- 4. feladat
isLongerThan :: [a] -> Integer -> Bool
isLongerThan [] n = n < 0
isLongerThan (x:xs) n
  | n > 0 = isLongerThan xs (n - 1)
  | n <= 0 = True
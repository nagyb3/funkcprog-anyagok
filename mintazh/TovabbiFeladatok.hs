module TovabbiFeladatok where

import Data.Char (isUpper)

isLongerThan :: [a] -> Integer -> Bool
isLongerThan [] n
  | n >= 0 = False
  | otherwise = True

isLongerThan (x:xs) n
  | n == 0 = True
  | n < 0 = True
  | n > 0 = isLongerThan xs (n - 1)


onlyUppers :: String -> String
onlyUppers [] = []
onlyUppers (x:xs)
  | isUpper x = x : onlyUppers xs
  | otherwise = onlyUppers xs


elemIds :: Eq a => a -> [a] -> [Int]
elemHelper x [] i = []
elemHelper x (y:ys) i 
  | x == y    = i : elemHelper x ys (i + 1)
  | otherwise = elemHelper x ys (i + 1)

elemIds _ [] = []
elemIds x (y:ys) = elemHelper x (y:ys) 0

injectElem :: a -> [a] -> [a]
injectElem ch []     = []
injectElem ch (x:[]) = x : []
injectElem ch (x:xs) = x : ch : injectElem ch xs


ordInsert :: Ord a => a -> [a] -> [a]
ordInsert n [] = n : []
ordInsert n (x:[]) 
  | n >= x = x : n : []
  | otherwise = n : x : []
ordInsert n (x:y:xs)
  | n <= x = n : x : y : xs
  | n >= x && n <= y = x : n : y : xs
  | otherwise = x : ordInsert n (y:xs)


sortedMerge :: Ord a => [a] -> [a] -> [a]
sortedMerge [] y = y
sortedMerge x [] = x
sortedMerge (x:xs) (y:ys)
  | x <= y = x : sortedMerge xs (y:ys)
  | otherwise = y  : sortedMerge (x:xs) ys


suffixes :: [a] -> [[a]]
suffixes [] = [[]]
suffixes (x:xss) = (x:xss) : suffixes xss


slice :: [Int] -> [a] -> [[a]]
slice [] [] = []
slice _ [] = [[]]
slice (x:[]) (y:ys) = [y : ys]
slice (x:xs) (y:ys) = [take x (y:ys)] ++ slice xs (drop x (y:ys)) 


-- claude
polinom :: Num a => [a] -> a -> a
polinom [] _ = 0
polinom (a:[]) x = a
polinom (a:aas) x = (polinom aas x * x) + a


toBin :: Integer -> [Integer]
toBin 0 = []
toBin n 
  | n `mod` 2 == 1 = 1 : toBin (n `div` 2)
  | otherwise = 0 : toBin (n `div` 2)



fromBin :: [Integer] -> Integer
fromBinHelper [] i = 0
fromBinHelper (x:xs) i
  | x == 1    = i + fromBinHelper xs (2 * i)
  | otherwise = fromBinHelper xs (2 * i)

fromBin [] = 0
fromBin ls = fromBinHelper ls 1



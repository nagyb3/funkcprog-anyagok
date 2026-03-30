module Listak where

import Data.Char (toUpper)

isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _ = False

hd :: [a] -> a
hd (x:xs) = x

tl (x:xs) = xs

toUpperFirst [] = []
toUpperFirst (x:xs) = toUpper x : xs

myProduct [] = 1
myProduct (x:xs) = x * myProduct xs

myLast (x:[]) = x
myLast (x:xs) = myLast xs

myMinimum (x:[]) = x
myMinimum (x:xs)
  | x <= minimum xs = x
  | otherwise = minimum xs


infixl 9 !:!
(!:!) :: [a] -> Int -> a
(x:xs) !:! 0 = x
(x:xs) !:! n = xs !:! (n - 1)

myDrop :: Int -> [a] -> [a]
myDrop _ [] = []
myDrop 0 ls = ls
myDrop n (x:xs)
  | n > 0 = myDrop (n - 1) xs
  | n < 0 = (x:xs)


myElem _ [] = False
myElem ch (x:xs)
  | ch == x = True
  | otherwise = myElem ch xs

myTake 0 _ = []
myTake _ [] = []
myTake n (x:xs)
  | n > 0 = x : myTake (n - 1) (xs)
  | n < 0 = []


myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate n ch
  | n > 0 = ch : myReplicate (n - 1) ch
  | n < 0 = []


myRepeat :: a -> [a]
myRepeat x = x : myRepeat x



infixr 5 +:+
(+:+) :: [a] -> [a] -> [a]
(+:+) [] ls = ls
(+:+) (x:xs) ls = x : (+:+) xs ls


descending :: Integer -> [Integer]
descending n = [n,(n-1)..(-n)]


divByN :: Integer -> [Integer]
divByN n
  | n <= 0 = []
  | n > 0 =  [i | i <- [0..], i `mod` n == 0]


ithInSeq :: Integer -> Integer -> Int -> Integer
ithInSeq n m i = [n,m..] !! (i - 1)

-- rekurzív megoldás:
ithInSeq n m i
  | i == 1 = n
  | i > 1  = ithInSeq (n + (m - n)) (m + (m - n)) (i - 1)
  | i < 1 = error "not a valid index!"


nthLetter :: Int -> Bool -> Char
nthLetter n b
  | b = toUpper (['a'..'z'] !! (n))
  | otherwise = (['a'..'z'] !! (n))


fact :: Integer -> Integer
fact n = product [1..n]


perm 1 = 1
perm n = n * perm (n - 1)

comb :: Integer -> Integer -> Integer
comb n k = fact n `div` (fact (n - k) * fact k)


isPrefOf :: Eq a => [a] -> [a] -> Bool
isPrefOf [] _ = True
isPrefOf _ [] = False
isPrefOf (x:xs) (y:ys)
  | x == y = isPrefOf xs ys
  | x /= y = False


merge :: [a] -> [a] -> [a]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) = x : y : merge xs ys


myConcat :: [[a]] -> [a]
myConcat (xs:[]) = xs
myConcat (xs:xss) = xs ++ myConcat xss
myConcat _ = []


elimElem :: Eq a => a -> [a] -> [a]
elimElem _ [] = []
elimElem ch (x:xs)
  | ch == x   = elimElem ch xs
  | otherwise = x : elimElem ch xs


myNub :: Eq a => [a] -> [a]
myNub [] = []
myNub (x:xs) = x : myNub (elimElem x xs)


removeDups :: Eq a => [a] -> [a]
removeDups (x:[]) = x : []
removeDups (x:xs)
  | x `elem` xs = removeDups xs
  | otherwise = x : removeDups xs


myEnumFromTo :: Integer -> Integer -> [Integer]
myEnumFromTo n m
  | n == m = m : []
  | n > m = []
  | n < m = n : myEnumFromTo (n + 1) m


runs :: Int -> [a] -> [[a]]
runs n [] = []
runs n ls = [take n ls] ++ runs n (drop n ls)


slice [] ls = []
slice [] [] = [[]]
slice (x:xs) [] = [] : slice xs []
slice (x:xs) ys = take x ys : slice xs (drop x ys)


every :: Int -> [a] -> [a]
every n [] = []
every n (x:xs) = x : every n (drop n (x:xs))



myEnumFrom :: Integer -> [Integer]
myEnumFrom n = [] ++ n : myEnumFrom (n + 1)


myEnumFromThen :: Integer -> Integer -> [Integer]
myEnumFromThen n m = [] ++ n : myEnumFromThen m (m + (m - n))

myEnumFromThenTo :: Integer -> Integer -> Integer -> [Integer]
myEnumFromThenTo st sec end
  | st == sec && st > end = []
  | st < end && end <= sec = st : myEnumFromThenTo sec (sec + (sec - st)) end
  | st > end && end >= sec = st : myEnumFromThenTo sec (sec + (sec - st)) end
  | end < st && st < sec = []
  | end > st && st > sec = []
  | st <= sec && st <= end = st : myEnumFromThenTo sec (sec + (sec - st)) end
  | st >= sec && st >= end = st: myEnumFromThenTo sec (sec + (sec - st)) end




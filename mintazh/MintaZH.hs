module MintaZH where
import Data.Char (toUpper, isLower)

-- 1. feladat
doubleTriple :: [a] -> [a]
doubleTriple (x:[]) = x : x : x : []
doubleTriple (x:y:[]) = x : x : y : y : []
doubleTriple xs = xs

-- 2. feladat
lengthOfShorter :: [a] -> [b] -> Integer
lengthOfShorter [] _ = 0
lengthOfShorter _ [] = 0
lengthOfShorter (x:xs) (y:ys) = 1 + lengthOfShorter xs ys


-- 3. feladat
compressLetters :: String -> String
compressLetters [] = []
compressLetters (x:[]) = x : []
compressLetters (x:y:ys)
  | x == y && isLower x = toUpper x : compressLetters ys
  | otherwise = x : compressLetters (y:ys)
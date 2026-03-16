module Hazi05 where
import Data.Char (toUpper)

-- 1. feladat: Másodfokú egyenlet gyökeinek száma
discriminate :: Num a => a -> a -> a -> a
discriminate a b c = b ^ 2 - 4 * a * c

numOfSolutions :: Integer -> Integer -> Integer -> Integer
numOfSolutions a b c
  | discriminate a b c > 0  = 2
  | discriminate a b c == 0 = 1
  | discriminate a b c < 0  = 0

-- 2. feladat: Fejelem előjele
signOfHead :: [Integer] -> Integer
signOfHead (x:xs)
  | x > 0 = 1
  | x == 0 = 0
  | x < 0 = -1


-- 3. feladat: Kezdőbetű nagybetűsítés
toUpperFirst :: String -> String
toUpperFirst [] = []
toUpperFirst (x:xs) = toUpper x : xs

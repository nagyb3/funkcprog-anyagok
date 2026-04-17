module Hazi09 where

-- distantPairs :: [(Integer,Integer)] -> Int
distantPairs ls = length [1 | (x, y) <- ls, abs (x - y) >= 2]

countOfAs :: String -> Int
countOfAs ls = length [1 | "a" <- words ls]

excludeSquares :: [Integer]
excludeSquares = [n | x <- [1..], n <- [(x^2)+1..((x+1)^2)-1]]

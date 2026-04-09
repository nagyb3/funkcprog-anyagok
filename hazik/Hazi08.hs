module Hazi08 where

-- 1. feladat: Két pont távolsága
distance :: (Double, Double) -> (Double, Double) -> Double
distance (x1, y1) (x2, y2) = sqrt (abs (x2 - x1) ^ 2 + abs (y2 - y1) ^ 2)

-- 2. feladat: Rendezett összefésülés
sortedMerge :: Ord a => [a] -> [a] -> [a]
sortedMerge xs [] = xs
sortedMerge [] ys = ys
sortedMerge (x : xs) (y : ys)
  | x <= y = x : sortedMerge xs (y : ys)
  | otherwise = y : sortedMerge (x : xs) ys

-- 3. feladat: A lista minden n-edik eleme
everyNth :: Integer -> [a] -> [a]
everyNth n ls = [x | (i, x) <- zip [0..] ls, i `mod` n == 0]

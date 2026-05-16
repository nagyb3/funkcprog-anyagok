module Hazi13 where

import Data.List

myAll :: (a -> Bool) -> [a]{-véges-} -> Bool
myAll _ [] = True
myAll f (x:xs) = f x && myAll f xs

filters :: Eq a => [a] -> [a] -> [a]
filters _ [] = []
filters xs (y:ys)
  | y `elem` xs  = filters xs ys
  | otherwise    = y : filters xs ys

compress :: Eq a => [a] -> [(a, Int)]
compress ls = compressH (group ls)

compressH :: [[a]] -> [(a, Int)]
compressH [] = []
compressH (x:xs) = (head x, length x) : compressH xs 

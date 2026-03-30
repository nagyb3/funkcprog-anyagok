module Fulepd1 where

alternates :: Bool -> Bool -> Bool -> Bool
alternates True False True  = True
alternates False True False = True
alternates _     _    _     = False


packIt :: (a, b) -> c -> ((a, c), b)
packIt (x, y) z = ((x, z), y)


twentyThreeLeaves17 :: [Int]
twentyThreeLeaves17 = [x | x <- [1..500], x `mod` 23 == 17]



isgray :: (Int, Int, Int) -> Bool
isgray (0, 0, 0) = False
isgray (255, 255, 255) = False
isGray (x, y, z) = x == y && y == z


nonEmpties :: Eq a => [[a]] -> Int
nonEmpties [] = 0
nonEmpties (x:xs)
  | x == [] = nonEmpties xs
  | otherwise = 1 + nonEmpties xs



----
myRev :: String -> String
myRev [] = []
myRev (x:xs) = myRev xs ++ x : []

palindromN :: String -> Int
palindromN str = palindromNHelper str (myRev str)

palindromNHelper [] [] = 0
palindromNHelper (x:xs) (y:ys)
  | x == y = 1 + palindromNHelper xs ys 
  | otherwise = 0



---
myfact :: Integer -> Integer
myfact 1 = 1
myfact n = n * myfact (n - 1)

superFact :: Integer -> Integer
superFact 0 = 1
superFact n = myfact n * superFact (n - 1) 



toInfinityAndBeyond :: [a] -> [a]
toInfinityAndBeyond ls = ls ++ reverse ls ++ toInfinityAndBeyond ls



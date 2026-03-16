module Scratch05 where


-- myLength :: [a] -> Integer
-- myLength (x:xs) = 1 + myLength xs
-- myLength [] = 0

mySum :: Num a => [a] -> a
mySum (x:xs) = x + mySum xs
mySum (y:[]) = y

isEmpty' :: [a] -> Bool
isEmpty' [] = True
isEmpty' _ = False

isSingleton :: [a] -> Bool
isSingleton (x:[]) = True
isSingleton _ = False 


myLength :: [a] -> Integer
myLength [] = 0
myLength (x:xs) = 1 + myLength xs


mymySum :: Num a => [a] -> a
mymySum [] = 0
mymySum (x:xs) = x + mymySum xs


isFirstTrue :: [Bool] -> Bool
isFirstTrue (True:xs) = True
isFirstTrue _ = False

myHead :: [a] -> a
myHead (x:xs) = x

myTail :: [a] -> a
myTail (x:[]) = x
myTail (x:xs) = myTail xs

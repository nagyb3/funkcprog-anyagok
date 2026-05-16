module Hazi10 where

data CardinalPoint = North | East | South | West deriving (Show, Eq)

numOfDirection :: CardinalPoint -> [CardinalPoint] -> Integer
numOfDirection _ [] = 0
numOfDirection dir (x:xs)
  | dir == x  = 1 + numOfDirection dir xs
  | otherwise = numOfDirection dir xs 


turnLeft :: CardinalPoint -> CardinalPoint
turnLeft North = West
turnLeft West  = South
turnLeft South = East
turnLeft East  = North

data Time = T Int Int deriving (Eq, Show)

data USTime = AM Int Int | PM Int Int deriving (Eq, Show)

time2USTime :: Time -> USTime
time2USTime (T h m)
  | h < 12    = AM h m
  | h == 12   = PM h m
  | otherwise = PM (h-12) m

uSTime2Time :: USTime -> Time
uSTime2Time (AM h m)  = T h m
uSTime2Time (PM 12 m) = T 12 m
uSTime2Time (PM h m)  = T (12+h) m
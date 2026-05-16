module Hazi12 where

data Base = A | T | G | C deriving (Show, Eq)

oppositeBase :: Base -> Base
oppositeBase A = T
oppositeBase T = A
oppositeBase G = C
oppositeBase C = G

isComplement :: [Base] -> [Base] -> Bool
isComplement [] [] = True
isComplement (x:xs) (y:ys)
  | x == oppositeBase y = isComplement xs ys
  | otherwise = False



data Transaction = Transfer Int Int | Purchase Int | Receive Int Int String deriving (Show, Eq)

netGain :: [Transaction] -> Int
netGain [] = 0
netGain (Purchase a : xs)    = -a + netGain xs
netGain (Transfer a _ : xs)  = -a + netGain xs
netGain (Receive a _ _ : xs) = a + netGain xs



extractValue :: Transaction -> Int
extractValue (Purchase a)      = -a
extractValue (Transfer a _)    = -a
extractValue (Receive a _ _)   = a

wasNegative :: [Transaction] -> Bool
wasNegative ls = wasNegativeH 0 ls

wasNegativeH :: Int -> [Transaction] -> Bool
wasNegativeH balance [] = False
wasNegativeH balance (x:xs) 
  | balance + extractValue x < 0 = True
  | otherwise                   = wasNegativeH (balance + extractValue x) xs

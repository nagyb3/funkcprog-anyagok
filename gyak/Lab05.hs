module Lab05 where

-- http://lambda.inf.elte.hu/Guards_new.xml folytatás:

-- Gyorshatványozás

{- 
pwr x 0 =  1
pwr x n
  | odd n = x * pwr x (n - 1)
  | otherwise = sqr (pwr (x) (n `div` 2))
-}

-- http://lambda.inf.elte.hu/Lists_new.xml

-- mintaillesztés listákra

{- 
[] -- üres
(x:[]) -- egy elemű
(x:xs) -- egy vagy annál több, xs lehet akár 0 eleműre illeszkedő is
-}


isEmpty :: [a] -> Bool
isEmpty (x:xs) = False
isEmpty _      = True


tl (x:[]) = [x]
tl (x:xs) = tl xs


isDoubleton (x:y:[]) = True
isDoubleton _ = False

{- 
hd (x:xs) = x

tl (x:xs) = xs
-}
-- Rekurzív feladatok listákon

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + length xs



module Lista1x1 where

-- http://lambda.inf.elte.hu/Lists101.xml

dupElems :: [a] -> [a]
dupElems [] = []
dupElems (x:xs) = x : x : dupElems xs


dupEverySnd :: [a] -> [a]
dupEverySnd [] = []
dupEverySnd (x:[]) = x : []
dupEverySnd (x:y:xs) = x : y : y : dupEverySnd xs


neighbourDiff [] = []
neighbourDiff (x:[]) = []
neighbourDiff (x:y:xs) = y - x : neighbourDiff (y : xs)


isIncreasing [] = True
isIncreasing (x:[]) = True
isIncreasing (x:y:xs) = x < y && isIncreasing (y : xs)



addElems [] _ = []
addElems _ [] = []
addElems (x:xs) (y:ys) = x + y : addElems xs ys



-- divides n i = n `mod` i == 0  
-- divisors n
--  | n < 1  = []
--  | n == 1 = [1]
--  | n > 1  = [i | i <- [1..n], divides n i]

-- hivatalos megoldás alapján inspirálva:
mydiv n i
  | i == 1         = [1]
  | n `mod` i == 0 = mydiv n (i - 1) ++ (i : [])
  | otherwise      = mydiv n (i - 1)

divisors n 
  | n < 1 = []
  | n > 1 = mydiv n n 
  | n == 1 = [1]


--------------- 
mydiv' n i 
  | n == i = i : []
  | n `mod` i == 0 = i : mydiv n (i + 1)
  | otherwise = mydiv n (i + 1)

divisors' n
  | n > 0 = mydiv n 1
  | otherwise = []
module Lab06 where

-- http://lambda.inf.elte.hu/Lists_new.xml#lista-fel%C3%A9p%C3%ADt%C3%A9se

-- alterntív megoldás (akkumulátorral ??)
myProduct :: Num a => [a] -> a
myProduct [] = 1
myProduct (x:[]) = x
myProduct (x:y:xs) = myProduct (x*y:xs)

myLast (x:[]) = x
myLast (x:xs) = myLast xs

myMinimum (x:[]) = x
myMinimum (x:xs)
  | x < myMinimum xs = x
  | otherwise = myMinimum xs

-- myMinimum (x:[]) = x
-- myMinimum (x:xs) = x `min` myMinimum xs

-- myMinimum (x:[]) = x
-- myMinimum (x:y:xs) = myMinimum (min x y : xs)

(!:!) (x:xs) index
  | index == 0 = x
  | otherwise = (!:!) xs (index - 1)



myDrop _ [] = []
myDrop n ls@(x:xs)
  | n > 0 = myDrop (n - 1) xs 
  | otherwise = ls

-- ls : "összefogó minta"

myElem _ [] = False
myElem ch (x:xs)
  | ch == x = True
  | otherwise = myElem ch xs


-- myElem :: Eq a => a -> [a] -> Bool
-- myElem ch [] = False
-- myElem ch (x:xs) == ch == x || myElem ch xs

-- Lista építése


myInit (x:[]) = []
myInit (x:xs) = x : myInit xs


-- linked listekben: BOXED VALUE

-- további gyakorló feladatok zh: http://lambda.inf.elte.hu/ListsExtraTasks.xml
-- illetve: http://lambda.inf.elte.hu/Lists101.xml


myTake :: Int -> [a] -> [a]

myTake _ [] = []
myTake n (x:xs)
  | n <= 0 = []
  | otherwise = x : myTake (n - 1) xs


myReplicate n x 
  | n <= 0 = []
  | otherwise = x : myReplicate (n - 1) x 


myRepeat x = x : myRepeat x


infixr 5 +:+
(+:+) :: [a] -> [a] -> [a]

(+:+) [] ys = ys
(+:+) (x:xs) ys = x : (xs +:+ ys)


-- utolsó anyag zh-hoz: pont-pont: 
-- http://lambda.inf.elte.hu/Lists_new.xml#pont-pont-kifejez%C3%A9sek-range


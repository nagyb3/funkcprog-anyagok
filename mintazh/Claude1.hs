

everyOther :: [a] -> [a]
everyOther (x:y:ys) = x : everyOther ys 
everyOther ls = ls


keepBetween :: Ord a => a -> a -> [a] -> [a]
keepBetween _ _ [] = []
keepBetween n m (x:xs)
  | n <= x && x <= m = x : keepBetween n m xs
  | otherwise        = keepBetween n m xs



myTake _ [] = []
myTake n (x:xs) 
  | n > 0 = x : myTake (n - 1) xs
  | otherwise = []


myDrop _ [] = []
myDrop n (x:xs)
  | n > 0 = myDrop (n - 1) xs
  | otherwise = (x:xs)

groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n ls
  | length ls >= n = myTake n ls : groupsOf n (myDrop n ls) 
  | otherwise      = ls : []

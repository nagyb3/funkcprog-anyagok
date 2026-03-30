runningMax :: Ord a => [a] -> [a]

helper1 (x:y:xs)
  | x < y     = y : y : helper1 xs
  | otherwise = x : y : helper1 xs

helper1 ls = ls

runningMax ls = reverse (helper1 ls)
import Data.Char (toUpper)

multiply :: Integer -> Integer -> Integer
multiply 0 _ = 0
multiply n m = m + multiply (n - 1) m


helper :: Integer -> Integer -> Integer
helper n m
  | n <= 0 || m <= 0 = 0
  | n `mod` m == 0 = m + helper n (m - 1)
  | otherwise = helper n (m - 1)

sumOfDivisors :: Integer -> Integer
sumOfDivisors n = helper n n


toUpperFirst :: String -> String
toUpperFirst [] = []
toUpperFirst (x:xs) = toUpper x : xs



elimElem :: Eq a => a -> [a] -> [a]
elimElem _ [] = []
elimElem ch (x:xs)
  | ch == x = elimElem ch xs
  | otherwise = x : elimElem ch xs



signOfHead :: [Integer] -> Integer
signOfHead (x:xs) 
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1


numOfSolutions :: Integer -> Integer -> Integer -> Integer
numOfSolutions a b c
  | b ^ 2 - 4 * a * c > 0  = 2
  | b ^ 2 - 4 * a * c == 0 = 1
  | otherwise              = 0

numOfOcc :: Eq a => a -> [a] -> Integer
numOfOcc _ [] = 0
numOfOcc ch (x:xs)
  | ch == x   = 1 + numOfOcc ch xs
  | otherwise = numOfOcc ch xs




isLongerThan :: [a] -> Integer -> Bool
isLongerThan [] n
  | n < 0 = True
  | otherwise = False
isLongerThan (x:xs) n
  | n <= 0 = True
  | otherwise = isLongerThan xs (n - 1)




range :: [Integer] -> [Integer]
range [] = []
range (x:[]) = [x..]
range (x:y:[]) = [x,y..]
range (x:y:z:xs) = [x,y..z]


module OpcionalisHazik where


elimElem :: Eq a => a -> [a] -> [a]
elimElem ch [] = []
elimElem ch (x:xs)
  | ch == x   = elimElem ch xs
  | otherwise = x : elimElem ch xs



-- A π közelítése Leibniz-féle sorra

leibniz :: Int -> Double

leibnizHelper :: Int -> Double
leibnizHelper 1 = 1
leibnizHelper i
  | i `mod` 2 == 0 = -(1.0 / (2.0 * fromIntegral i - 1.0)) + leibnizHelper (i - 1)
  | i `mod` 2 == 1 =  1.0 / (2 * fromIntegral i - 1) + leibnizHelper (i - 1)

leibniz n = 4.0 * leibnizHelper (fromIntegral n)
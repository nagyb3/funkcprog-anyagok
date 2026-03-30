module DcVizsga where


-- hatványozás másként
weirdoPow :: Integral a => [a] -> [a]
weirdoPow [] = []
weirdoPow (x:[]) = x : []
weirdoPow (x:y:xs) = x ^ y : weirdoPow (y : xs)

-- elemek cseréje
replacePunctuation :: String -> Char -> String
replacePunctuation [] _ = []
replacePunctuation (x:xs) ch
  | elem x [',', ';', '?', '.', '!'] = ch : replacePunctuation xs ch
  | otherwise                        = x : replacePunctuation xs ch


-- átlagos szóhossz
avgwordLength :: String -> Int
avgwordLength str
  | length (words str) == 0 = 0
  | otherwise = (sum (map (length) (words str)) `div` length (words str))


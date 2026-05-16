module May11 where

-- myGroup [] = []
-- myGroup (x:xs) = (x:as) : myGroup bs where (as, bs) = span (\y -> x == y) xs

-- lehet ebben van type
-- pascalTriangle = [1] : map (\sor -> zipWith (\x y -> x + y) (0:sor) (sor++0)) pascalTriangle

-- decompress xs = concat $ map (\(x, n) -> replicate n x) xs

-- notNull = not . null

-- myEven = (== 0) . (`mod` 2)

-- numbersMadeOfOnes = iterate ((+1) . (*10)) 1

-- numbersMadeOfThrees = iterate ((+3) . (*10)) 3

-- dropSpaces = dropWhile isSpace
-- <- éta redukálva

-- trim = reverse . dropWhile isSpace . reverse . dropWhile isSpace

-- firstLetters = unwords . map (: "") . map head . words

-- monogram = unwords . map (: ".") . map head . words

-- myUntil p f x = head . filter p . iterate f $ x 

-- myUntil p f = head . filter p . iterate f

-- sublists = concat . map (init . tails) . tail . inits
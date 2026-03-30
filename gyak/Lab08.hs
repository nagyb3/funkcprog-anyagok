module Lab08 where

-- http://lambda.inf.elte.hu/Tuples.xml


-- ezeket nem lehet összehasonlítani, mivel adott "helyen" más típusú elemek vannak
-- (1, True) == (True, 1)

tail (a, b, c) = (b, c)

-- http://lambda.inf.elte.hu/ListComprehensions.xml

-- listakifejezés == list comprehension

-- pl 
b = [ n^2 | n <- [1..], even n ]

a = [n ^ 2 | n <- [2,4..]]

-- | után első: generátor, utánni "szűrőfeltételek"
-- generátornak fixen első helyen kell lennie
-- `,` -vel vannak elválasztva a szűrők, köztük "ÉS"-t fogunk érteni
-- "VAGY"-hoz `||`-t kell használni

divisors :: Integer -> [Integer]
divisors n = [x | x <- [1..n], n `mod` x == 0]

powersOf2 n = [2 ^ x | x <- [0..n]]

oddEven n = [even x | x <- [1..n]]

powerOfTwo n = head [x | x <- [2 ^ n| n <- [0..]], x > n]

exponentOf2 n = head [i | i <- [0..], 2 ^ i > n]

isPrime n = length [x | x <- [2..n-1], n `mod` 2 == 0] == 0 && n > 1

isPrime' n = length (divisors n) == 2

isPrime'' n = divisors n == [1, n]


dominoes n = [(x, y) | x <- [0..n], y <- [x..n]]


monotonousSeq n = [i | i <- [1..n], _ <- [1..i]]

-- concat: listákat "kilapít"


-- “Párhuzamos” generátor

-- zip


indexString :: [Char] -> [(Integer, Char)] -- String -> [(Integer, Char)]
indexString xs = zip [1..(toInteger (length xs))] xs -- <= rossz megoldás

-- jó megoldás:
indexString str = zip [1..] xs
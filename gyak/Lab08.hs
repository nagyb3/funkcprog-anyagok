module Lab08 where

-- http://lambda.inf.elte.hu/Tuples.xml


-- ezeket nem lehet összehasonlítani, mivel adott "helyen" más típusú elemek vannak
-- (1, True) == (True, 1)

tail (a, b, c) = (b, c)

-- http://lambda.inf.elte.hu/ListComprehensions.xml

-- listakifejezés == list comprehension

-- pl 
[ n^2 | n <- [1..], even n ]
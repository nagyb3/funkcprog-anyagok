module Lab03_2 where


secondsInLeapYear :: Integer
secondsInLeapYear = 366 * 24 * 60 * 60


divides x y = y `mod` x == 0

triangleSides x y z = (x + y > z) && (x + z > y) && (y + z > x)

isLeapYear x = x `mod` 4 == 0 && (x `mod` 100 /= 0 || x `mod` 400 == 0)

isZero 0 = True
isZero _ = False


-- mul3 x y = (x * y) `mod` 3

mul3 0 _ = 0
mul3 1 n = n
mul3 2 2 = 1
mul3 2 x = 2 * x

nextDay x = (x + 1) `mod` 7


-- rekurzió

fact :: Integer -> Integer
fact 0 = 1 -- <- base case
fact n = n * fact (n-1)


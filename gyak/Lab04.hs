module Lab04 where
import Data.Char -- (toUpper, isLower)

-- rekurzió folytatás
-- http://lambda.inf.elte.hu/Integral.xml


fact :: Integer -> Integer
fact 0 = 1
fact n = n * fact n - 1


fib 1 = 1
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2)


sumTo 0 = 0
sumTo n = n + sumTo (n - 1)

sumSquaresTo 1 = 1
sumSquaresTo n = n ^ 2 + sumSquaresTo (n - 1)

powerN n 1 = n
powerN n x = n * powerN n (x - 1)


-- http://lambda.inf.elte.hu/Floating.xml


-- Fractional 


sphereVolume r = (4 * r ^ 3 * pi) / 3 


-- http://lambda.inf.elte.hu/Guards_new.xml

min' x y
    | x <= y  =  x
    | x >  y  =  y

-- otherwise  => mindig igaz, nem kulcsszó


myAbs x
  | x < 0 = negate x
  | otherwise = x


sign x
  | x < 0 = -1
  | x == 0 = 0
  | otherwise = 1


-- https://hoogle.haskell.org/?hoogle=isupper&scope=set%3Astackage

-- https://hoogle.haskell.org/?hoogle=Char%20-%3E%20Char

swapUpperLower x
  | isLower x = toUpper x
  | otherwise = toLower x


fact n
  | n > 0 = n * fact (n - 1)
  | otherwise = error "fact : negative number"
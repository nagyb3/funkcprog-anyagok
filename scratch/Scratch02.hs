module Scratch02 where

myNot :: Bool -> Bool
myNot True = False
myNot False = True


(&&&) :: Bool -> Bool -> Bool
(&&&) True True = True
_ &&& _    = False


myAnd0 :: Bool -> Bool -> Bool
myAnd0 True True = True
myAnd0 _ _ = False


myAnd2 :: Bool -> Bool -> Bool
myAnd2 True x = x
myAnd2 _ _ = False

notEq :: Int -> Int -> Bool
notEq a b = a /= b

isSmaller :: Int -> Int -> Bool
isSmaller x y = x < y




(|.|) :: Bool -> Bool -> Bool

infixr 2 |.|

(|.|) False False = False
(|.|) _ _ = True

-- 2. feladat
xor :: Bool -> Bool -> Bool
True `xor` True = False
False `xor` False = False
_ `xor` _ = True


fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact (n - 1)


asder = not False
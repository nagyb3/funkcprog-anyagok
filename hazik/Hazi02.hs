module Hazi02 where

-- 1. feladat
(-->) :: Bool -> Bool -> Bool
True --> False = False
_    --> _     = True

infix 1 -->

-- 2. feladat
xor3 :: Bool -> Bool -> Bool -> Bool
xor3 True True True = True
xor3 True False False = True
xor3 False True False = True
xor3 False False True = True
xor3 _ _ _ = False

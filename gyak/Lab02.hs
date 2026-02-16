module Lab02 where

inc :: Int -> Int
inc n = n + 1

-- Num a => a -> a
-- Num a egy megszorítás

-- camelCase neveknél


multAdd n m = n * m + n + m

-- http://lambda.inf.elte.hu/Boolean.xml


-- Bool
-- False, True

-- tagadás: not

-- not False

-- ÉS : &&

-- VAGY: ||

-- logikai és erősebb mint vagy



-- mintaillesztés

myNot0 :: Bool -> Bool
myNot0 True  = False
myNot0 False = True


myNot1 :: Bool -> Bool
myNot1 True  = False
myNot1 n     = True

-- wildcard: _
myNot :: Bool -> Bool
myNot True  = False
myNot _     = True



-- speciálistól általánosig def-juk, mert felülről lefelé match-el

-- non exhasutive -> futási idejű hiba
-- => parciálisan definiált fgv


myAnd0 :: Bool -> Bool -> Bool
myAnd0 True   True  = True
myAnd0 True   False = False
myAnd0 False  True  = False
myAnd0 False  False = False



myAnd2 :: Bool -> Bool -> Bool
myAnd2 True   True  = True
myAnd2 _      _     = False


-- lusta kiértékelés
myAnd :: Bool -> Bool -> Bool
myAnd True   x  = x
myAnd _      _  = False


(|:|) False False = False
(|:|) _ _ = True

infixr 2 |:|
-- jobbrol zarojeleződik, infix, 2-es erősség

{-
False |:| False = False
_ |:| _ = True
-}


xor False False = False
xor True True = False
xor _ _ = True

-- Összehasonlító operátorok

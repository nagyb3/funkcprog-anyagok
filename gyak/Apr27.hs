module Apr27 where

-- http://lambda.inf.elte.hu/ParametricAlgebraicDataTypes.xml

-- vizsga elméleti kérdések pl
-- :t Just
-- :t Just 'a'
-- :t Just 4


maybeAdd (Just x) (Just y) = Just (x + y)
maybeAdd (Just x)        _ = Just x
maybeAdd _ (Just y)        = Just y
maybeAdd _ _               = Nothing


-- "Nevezetes paraméteres típus: Either a b"




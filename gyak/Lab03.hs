module Lab03 where

-- http://lambda.inf.elte.hu/Chars.xml

-- '' közé

-- escape character : \

-- '\n' sortörés

-- '\'' --> egy darab '

-- '\\' -> egy darab \

-- '\NUL', '\ESC' ...



isA 'a' = True
isA 'A' = True
isA _ = False

replaceNewline '\n' = ' '
replaceNewline x = x


isVowel 'a' = True
isVowel 'e' = True
isVowel 'i' = True
isVowel 'o' = True
isVowel 'u' = True
isVowel _ = False



isDig '0' = True
isDig '1' = True
isDig '2' = True
isDig '3' = True
isDig '4' = True
isDig '5' = True
isDig '6' = True
isDig '7' = True
isDig '8' = True
isDig '9' = True
isDig _ = False



-- EGÉSZ SZÁMOK
-- http://lambda.inf.elte.hu/Integral.xml


-- negatív szám literál nincs, hanem - fgv van ?

-- két fajta: Int, Integer


-- Int : fix tartományú egész

minBound :: Int
maxBound :: Int

2 ^ 63 :: Int -- > túlcsordul

-- Alapvetően Integer-t fogunk használni, nem Int-et
-- de Haskell is Integer-ként kezeli pl 3 ^ 100 -t

-- Integer : nem bounded

-- Alapvető operátorok - számokon

(+) :: Num a => a -> a -> a

-- a egy típus változó
-- Num a : egy megszorítás, ami azt mondja csak Numerikus típust lehet használni ezzel a fgv-el




-- Alapvető függvények - egészeken

-- :t div -- hányados képzés
div :: Integral a => a -> a -> a

-- Integralok: egészek

-- div prefixként használni 9-el köt, ilyenkor operátor megadott erős. hanem fgv alk., ami legerősebb




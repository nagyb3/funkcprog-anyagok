module Apr13 where

-- http://lambda.inf.elte.hu/ListComprehensions.xml#list%C3%A1k-list%C3%A1j%C3%A1nak-%C3%B6sszef%C5%B1z%C3%A9se-concat

-- words, unwords

-- jó gyakorlás vizsgára: listakifejezéses feladatokat oldalról rekurzív felírni. !

numOfEmpties lls = length [1 | [] <- lls]

numOfAs ls = length [1 | 'a' <- ls]

countOfAs ls = length [1 | "az" <- words ls]


-- extra érdekesség: https://wiki.haskell.org/Undefined
-- típus helyes de elhasal, pl placeholdernek jó



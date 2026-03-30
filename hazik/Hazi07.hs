module Hazi07 where
import Data.Char (isUpper)

onlyUppers :: String -> String
onlyUppers [] = []
onlyUppers (x:xs)
  | isUpper x = x : onlyUppers xs
  | otherwise = onlyUppers xs


dupElems :: [a] -> [a]
dupElems [] = []
dupElems (x:xs) = x : x : dupElems xs

injectElem :: a -> [a] -> [a]
injectElem _ [] = []
injectElem _ (y:[]) = y : []
injectElem x (y:ys) = y : x : injectElem x (ys)

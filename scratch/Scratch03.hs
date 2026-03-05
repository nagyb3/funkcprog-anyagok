module Scratch03 where

fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact (n - 1)

multiply :: Integer -> Integer -> Integer 
multiply 0 _ = 0
multiply _ 0 = 0
multiply n m = m + multiply (n - 1) m
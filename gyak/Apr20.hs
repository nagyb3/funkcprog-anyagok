module Apr20 where

-- adhoc vs parametrikus polimorfizmus


data Answer = No | Maybe | Yes
toString :: Answer -> String
toString No = "No"
toString Maybe = "Maybe"
toString Yes = "Yes"

instance Show Answer where
  show No = "nem"
  show Yes = "yes"
  show Maybe = "mayb"

-- data Answer = No | Maybe | Yes deriving (Show)


-- P ugyanaz mint ?? (,) ???
-- P egy függvény



data Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun


isWeekend :: Day -> Bool

isWeekend Sat = True
isWeekend Sun = True
isWeekend _ = False 

tomorrow :: Day -> Day
tomorrow Mon = Tue
tomorrow Tue = Wed
tomorrow Wed = Thu
tomorrow Thu = Fri
tomorrow Fri = Sat
tomorrow Sat = Sun
tomorrow Sun = Mon

USTime = PM Int Int | AM Int Int

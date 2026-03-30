module ExamWithTestsSol where


-- 1. Add meg a logikai implikáció műveletét!
imply :: Bool -> Bool -> Bool
imply True False = False
imply _ _        = True


-- 2. Adott egy paraméter n, add meg azt a listát, amely 1-től n-ig kettesével növekedve,
--    majd (n-1)-től 1-ig kettesével csökkenve tartalmazza az egész számokat!
--    Vigyázz, a sorozatot nem mindig az 1 zárja le (hanem páratlan, 1-nél nagyobb n esetén a 2).
upDown :: Int -> [Int]
upDown n = [1,3..n] ++ [(n - 1),(n - 3)..1]


-- 3. Állítsd elő azt a 100 hosszúságú listát, amely váltakozva tartalmazza a False és True értékeket!
-- bools :: [Bool]
boolsHelper n
  | n == 0 = [False, True]
  | n > 0 = [False, True] ++ boolsHelper (n - 1)

bools = boolsHelper 50


-- 4. Adott egy természetes szám n (ez a függvény paramétere).
--    Add meg az összes pitagoraszi számhármast, ahol minden tag maximum n (és minimum 1).
--    Az egyértelműség (és a duplikátumok elkerülése) érdekében az előállított hármasokra (a, b, c) teljesüljön, hogy a <= b <= c!
pyth :: Int -> [(Int, Int, Int)]
pyth n = [(a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], a <= b, b <= c, a ^ 2 + b ^ 2 == c ^ 2]

{-
pyth 3  == []
pyth 10 == [(3,4,5),(6,8,10)]
pyth 30 == [(3,4,5),(5,12,13),(6,8,10),(7,24,25),(8,15,17),(9,12,15),(10,24,26),(12,16,20),(15,20,25),(18,24,30),(20,21,29)]
all (\(x, y, z) -> x^2 + y^2 == z^2) (pyth 30)
-}

-- 6. Add meg egy név monogramját! Tipp: használd a words és a concat függvényeket! Ne feledkezz meg a betűk utáni .-ról!
initials :: String -> String
initials str = words str



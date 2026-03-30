{-# LANGUAGE InstanceSigs #-}
import Data.Char

-- 1. Add meg a logikai implikáció műveletét!
-- (2 pont)
imply :: Bool -> Bool -> Bool
imply True False = False
imply _ _ = True

{-
and (zipWith imply [True,False,False] [True,True,False])
not (imply True False)
-}


-- 2. Adott egy paraméter n, add meg azt a listát, amely 1-től n-ig kettesével növekedve,
--    majd (n-1)-től 1-ig kettesével csökkenve tartalmazza az egész számokat!
--    Vigyázz, a sorozatot nem mindig az 1 zárja le (hanem páratlan, 1-nél nagyobb n esetén a 2).
-- (3 pont)
upDown :: Int -> [Int]
upDown n = [1,3..n] ++ [n-1,n-3..1]

{-
upDown 0 == []
upDown 1 == [1]
upDown 2 == [1,1]
upDown 3 == [1,3,2]
upDown 4 == [1,3,3,1]
upDown 5 == [1,3,5,4,2]
length (upDown 100) == 100
upDown 20 == [1,3,5,7,9,11,13,15,17,19,19,17,15,13,11,9,7,5,3,1]
-}


-- 3. Állítsd elő azt a 100 hosszúságú listát, amely váltakozva tartalmazza a False és True értékeket!
-- (3 pont)
bools :: [Bool]
bools = [b | n <- [1..100], let b = even n]

{-
length bools == 100
bools !! 0 == False
bools !! 1 == True
take 3 bools == [False, True, False]
bools !! 9 == True
bools !! 50 == False
-}


-- 4. Adott egy természetes szám n (ez a függvény paramétere).
--    Add meg az összes pitagoraszi számhármast, ahol minden tag maximum n (és minimum 1).
--    Az egyértelműség (és a duplikátumok elkerülése) érdekében az előállított hármasokra (a, b, c) teljesüljön, hogy a <= b <= c!
-- (3 pont)
pyth :: Int -> [(Int, Int, Int)]
pyth n = [(a, b, c) | a <- [3..n], b <- [a..n], c <- [b..n], c^2 == a^2+b^2, c <= n]

{-
pyth 3  == []
pyth 10 == [(3,4,5),(6,8,10)]
pyth 30 == [(3,4,5),(5,12,13),(6,8,10),(7,24,25),(8,15,17),(9,12,15),(10,24,26),(12,16,20),(15,20,25),(18,24,30),(20,21,29)]
all (\(x, y, z) -> x^2 + y^2 == z^2) (pyth 30)
-}


-- 5. Definiáld az alábbi dátumokat reprezentáló típushoz (Date) a Show típusosztály példányát!
--    A dátumokat “<év>. <hónap> .” formában jelenítsd meg!
--    A hónapok megjelenítésére a Show típusosztály standard implementációját (deriving Show) használd!
-- (4 pont)
data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec deriving (Show, Eq)
data Date = D Int Month Int
instance Show Date where
    show (D year month day) = show year ++ ". " ++ show month ++ " " ++ show day ++ "."

{-
show (D 2024 Jan 1) == "2024. Jan 1."
show (D 2024 Dec 23) == "2024. Dec 23."
show (D 1 Mar 1) == "1. Mar 1."
showList [D 1 Jan 1] "" == "[1. Jan 1.]"
-}


-- 6. Add meg egy név monogramját! Tipp: használd a words és a concat függvényeket! Ne feledkezz meg a betűk utáni .-ról!
-- (4 pont)
initials :: String -> String
initials xs = concat [take 1 wrd ++ "." | wrd <- words xs]

{-
initials "Kis Joe" == "K.J."
initials "Ede" == "E."
initials "" == ""
initials "Santiago Jose Lopez Perez" == "S.J.L.P."
initials "Han Alan Sam Ken Eric Luigi Lopez" == "H.A.S.K.E.L.L."
-}


-- 7. Készíts függvényt, amely megadja egy (10-es számrendszerbeli) egész szám számjegyeinek összegét!
--    A megoldás működjön negatív számokra is (lásd tesztek)! Tipp: mod és a div függvényeket használd.
-- (4 pont)
sumd :: Int -> Int
sumd 0 = 0
sumd n = if n < 0 then (mod (abs n) 10) + sumd (div (abs n) 10) else (mod n 10) + sumd (div n 10)

{-
sumd 0 == 0
sumd 11 == 2
sumd 123456789 == 45
sumd (-123456789) == 45
all (uncurry (>=)) (zip [1..10000] (map sumd [1..10000]))
-}


-- 8. Adj meg egy függvényt, amely összefűzi egy fában található betűket (először bal oldali részfából, aztán jobb oldaliból)!
--    Figyelem: a lenti típussal megadott fák a leveleikben tárolnak adatot, a csúcsaikban nem!
-- (5 pont)
data Tree a = Leaf a | Node (Tree a) (Tree a) deriving (Eq, Show)

concatTree :: Tree Char -> String
concatTree (Leaf c)
    | isLetter c = [c]
    | otherwise = []
concatTree (Node a b) = (concatTree a) ++ (concatTree b)

{-
concatTree (Node (Node (Leaf 'a') (Leaf 'l')) (Node (Leaf 'm') (Leaf 'a'))) == "alma"
concatTree (Node (Node (Leaf '?') (Leaf 'l')) (Node (Leaf ':') (Leaf 'A'))) == "lA"
concatTree (Leaf '-') == ""
concatTree (Node (Node (Leaf 'a') (Leaf 'L')) (Node (Leaf 'm') (Node (Leaf 'a') (Node (Leaf 'f') (Leaf 'a'))))) == "aLmafa"
-}


-- 9. Döntsd el egy szövegről, hogy helyesen zárójelezett-e!
--    Tipp: definiálj rekurzívan egy segédfüggvényt ehhez (amely a szöveget karakterről-karakterre dolgoz fel).
--    A függvény egy számláló paraméter segítségével tartsa nyilván, hogy hány nyitó zárójel volt (a feldolgozás pillanatáig) a szövegben.
--    Nyitó zárójel esetén hozzáadni, csukó zárójel esetén kivonni kell ebből a paraméterből.
--    Ha bármikor a számláló 0 alá csökken, vagy a teljes szöveg feldolgozása után az eredmény nem 0, akkor nem volt helyes a zárójelezés.
-- (6 pont)
balanced :: String -> Bool
balanced xs = balancedHelper xs 0

balancedHelper xs counter
    | null xs && counter == 0 = True
    | null xs && counter /= 0 = False
    | counter < 0 = False
    | head xs == '(' = balancedHelper (tail xs) (counter+1)
    | head xs == ')' = balancedHelper (tail xs) (counter-1)
    | otherwise = balancedHelper (tail xs) counter

{-
balanced "almafa"
balanced ""
balanced "alm(a)"
balanced "()()()"
balanced "(())((()())())"
not (balanced "(")
not (balanced "()))")
not (balanced "()())(")
-}


-- 10. Adott egy autókereskedés adatbázisa, amely (rendszám, autótípus, vételár, gyártási év) négyesek formájában tárolja a gépjárművek adatait.
--     Add meg, hogy hány darab, érvényes rendszámmal rendelkező olcsó (kisebb, mint 1000000 vételárú) autót forgalmaz a kereskedés,
--     amelyet 2020-ban, vagy utána gyártottak! Akkor tekinthető egy rendszám érvényesnek, ha megfelel a régi szabványnak,
--     azaz 3 db nagybetűvel kezdődik, az 4. karakter egy kötőjel, és 3 számjeggyel végződik!
--     Tipp: érdemes lehet a rendszám ellenőrzésére egy segédfüggvényt definiálni! 
-- (6 pont)
cheapCars :: [(String, String, Int, Int)] -> Int
cheapCars cars = sum [
        1 |
        (licensePlate, name, price, year) <- cars,
        price < 1000000,
        year >= 2020,
        isCorrectLicensePlate licensePlate
    ]

isCorrectLicensePlate xs = length xs == 7 && all isUpper (take 3 xs) && head (drop 3 xs) == '-' && all isNumber (drop 4 xs)

{-
cheapCars [("AAB-123","Volvo V90",10000000,2019),("AAB-999","KIA Rio",1500000,2020),("AAA-123","Dacia Spring",3000000,2020)] == 0
cheapCars [("AAB-123","Volvo V90",1000000,2020),("AAB-999","KIA Rio", 999999,2021),("AAA-123","Dacia Logan",350000,2020)] == 2
cheapCars [("AABC-123","Volvo V90",999999,2021),("AA-999","KIA C'EED",999999,2021),("AAA123","Dacia Logan",999999,2021),("AAB-9999","KIA Rio",110000,2021)] == 0
cheapCars [("TSL-123","Volvo EX90",20000000,2021),("AA-0011","Mercedes C220",500000,2021),("AAAA-00","Renault Megane",780000,2021)] == 0
cheapCars [("AAB-123","Volvo V90",999999,2019),("AAB-999","KIA Rio", 999999,2015),("AAA-123","Dacia Logan",350000,2025)] == 1
-}

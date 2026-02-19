module SecondEA where

-- függvényalkalmazás


-- folyt. strict vs lazy kiértékelés

-- inc 7 -> 7 + 1
-- <= szöveg szerű ÁTÍRÁS

-- normálforma: eljutottunk a kiértékelési láncok végére


-- mohó == szigorú == strict kiértékelés

-- szigorú : előszőr az argumentumokat számoljuk ki

-- lusta: halogatjuk az argumentumok kiszámolását

-- a példában lusta lasabb

-- "kiértékelédőrendszer"

-- squareinc 7

-- Haskell -> lusta

-- de a Haskell és a Clean sem lesz lasabb a lusta kiértékeléssel (szemben régebbi nyelvekkel)

-- átírás: nem szövegszerű átírás, hanem előszőr szövegből gráf 
-- inc 7 egy csomópont lesz
-- ha kétszer írjuk át inc 7-et akkor ugyanarra a csúcsra mutat a gráfban
-- => így gráfátírást csinálunk szövegátírás helyett => ugyanolyan gyors mint a mohó

-- haskellben és cleanben a művelet sorrendje (mohó és lusta között ugyanazt az eredményt adná), mivel ezek tisztán funkc. => mellékhatás mentesség miatt ??

-- mellékhatás : ~ felülírni valamit és utánna a felülírt dolgot használnánk


-- példában 64 lesz a normálforma (mivel akkor nem tudunk már tovább behelyettesíteni)

-- a kiértékelési rendszer : konfluens (több ágba mehet szét a kiértékelés, de ugyanott találkozik)
-- mindegyik tisztán funkc. kiértékelési rendszere konfluens.

-- ~ nagy gráfban lehet több processzorral átírni
-- párhuzamos gráf átírás

-- => nem kell átírni a programot ahhoz hogy lehessen több processzoron átírni (szemben az imp. programmokkal mert ott kell átírni a prog. hogy párh.)

-- lineárisan csökkenhet kiérték. processzorok számávál. imp. nyelveknél nem lehet ennyire csökkenteni a párh. végr.-al

-- ezt nem lehet végtelenségig csinálni, mert szemcsézettség

-- fac 1 = 1      <= alap eset
-- fac n = n * fac(n-1)

-- speciálistól általánosig


-- fac 3 = 3 * fac (3 - 1)
--         3 * (2 * fac (2-1))
--         3 * (2 * 1)
--         6

-- fac: itt rekurziót használ

-- rekurzió: tulképpen feladat kettébontása 

-- g x = g x
-- g 5 => g 5 => ... végtelenségig behelyett., de még is lehet ilyet használni

-- <= (nem lesz normálisformán, nem lesz vége a kiértékelési láncnak)


-- f x y = y
-- f 3 7 => 7

-- f (g 3) 7 =>?

-- mohó kiérték. : végtelenségig kiérték.
-- lusta: simán megkapjuk 7-et

-- (konfluencia ettől még nem sérül, mivel nincs kettő ellentmondó eredmény)

-- lusta: mindig megtalálja a normálformát, amennyiben az elérhető


-- hd [1, 2] => 1
-- head 
-- hd [1, ..] ?=>

-- attól függ mohó vagy lusta, mohó nem adja vissza elsőt, lusta vissza adja azonnal az 1-et

-- lustaság miatt lehet végtelen listát (és adatszerkezeteket) kezelni

-- mohóra példa: SML

-- cleanben van: mohóság analízis (elemzi hol lehet mohó és ott mohó lesz (~hol fog eredményt kapni mohóság ellenére))
-- mohóság analízis: tudja megtud állni / biztos nem áll meg / nem tudja (<= utolsót lehet override-olni (felkiáltójellel))

-- "kiértékelő rendszernek csak a 'feladatot' adjuk oda"


-- module kulcsszó

-- => főmodul : kezdeti kifejezés : Start = map abs [7, -4, 3]
-- import StdEnv olyan cleanben mint haskellben Prelude


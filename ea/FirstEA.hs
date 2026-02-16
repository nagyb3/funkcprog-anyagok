-- Függvény : leképzés értelmezési tartományról értékkészletre
-- halmazokról halmazra
-- halmazok típusokhoz tartoznak pl int, vagy bool
-- típuslevezetés, típuskikövetkeztetés
-- clean-ben: inc x = x + 1 nél tudja hogy x az int mivel x + 1 csak int-en lehet (haskellben ez más)


inc x = x + 1

-- 1 vs 1.0

-- típusszignatura miért jó: hiba üzenetet kapunk fordítási időben run time helyett~
-- ahhoz képest ami definíció
-- => jó

-- erősen típusos nyelv: egyértelmű egy függvénynél hogy milyen "típusú" (compile time tudják már és nem futási időben, pythonban dinamikus mivel futási időben fog eldőlni)
-- statikus típusos (statikusan dől el a típus)

-- dinamikus <=> statikus típusosság


-- inc függvény nem értékadás mint imperatív nyelvekben, hanem egy leképzés/függvény

-- tisztán funkcionális nyelvekben nincs változó értékét felül író értékadás
-- sum: értékadni tilos
-- ehelyett funkcprogban: csak függvény definíció és függvény meghívás
-- előző fgv. definíciót sem lehet felülírni

-- '5' is egy függvény amit ha meghívunk akkor 5-öt kapunk

-- funkcprogban "ugyanazok" a feladatokat lehet megoldani mint imperatívban (ig. church turing tézis) 

-- függvényazonosító -> inc

-- inc előre def fgv haskellben (nem része a nyelvnek, előre definiált könyvtárban van, haskellben a Prelude könyvtár)

-- c-ben "beépített" függvények vannak (nyelv része)

-- függvény kiértékelési idő, futási idő helyett

-- + is egy függvény -> ~inc egy függvény "kompozíció"

-- case sensitive, lehet nagybetüket használni függvényneveknél

-- camelCase naming convention

-- nagy betűvel kezdődőfgv nevek "spec kategóriába taroznak", coding convention

inc x = x + 1
--  |
--  |
--   -> formális paraméter (argumentum)

-- függvény meghívásakor lesz "máshol" ~aktuális paraméter


inc x = x + 1
--    |
--    |-> fgv definiáló egyenlőség



inc x = x + 1
--       |
--       |-> fgv törzs, ez adja meg a visszatérési értéket (ez egy kifejezés, felhasználhatunk más fgv-eket is)



-- fgv definíciók sorrendje mindegy, használhatjuk hamarabb őket mint a def
-- => fgv def-ek halmazáról beszélünk

-- törzsben ugyanazt a fgvt is használhatjuk -> rekurzió

-- square: polimorf függvény, meghíváskor dől el melyik típus változat hívódik meg , !! nem futás közben hanem a programszövegben a használata alapján
-- statikusan dől el, prog írás közben
-- pl egész -> egész, double -> double
square x = x * x


-- függvény kompozíció
squareinc x = square (inc x)

-- nem tudjuk melyik sorrendben hívódnak a fenti fgv-ek (square, inc)

-- többfajta kiértékelési sorrend / kiértékelési stratégia lehet
-- belső / külső fgv sorrendje

-- default: előszőr square  (külső fgv, belső függvényt halogatják) ==> lusta kiértékelés

-- sok mindentől függ hogy melyik értékelődik ki előszőr, nem lehet ezek alapján érvelni


fact n = prod [1..n]

-- [1..n] számtani sorozatot jelent

-- n: felsőkorlát
-- felsőkorlátot ellehet hagyni, lustaság miatt lehet ilyeneket leírni

-- diszkusszio olyan eredménnyel hívom meg ami ?? prodot -1 el

-- kód futás helyet kiértékelés

-- függvény kiértékelés behelyettesítésekkel



-- kezdeti kifejezés ?? (megadjuk hogy mit akarunk kiértékelni)
fact 10


-- ghci : interpreter nem fordító

-- strict vs lazy kiértékelés





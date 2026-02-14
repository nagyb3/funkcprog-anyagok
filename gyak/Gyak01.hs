
-- beadandók TMS-en, kb 12 db (1 hét van rá)
-- max 3 elmulasztott/elutasitott beadandó lehet
-- (automata teszter + manualis elfogadás)

-- röpzh minden gyakon (50% kell)

-- félévközi ZH (nincs még időpont)
-- max 6 pont, gépes, legalább 1 pontot kell elérni -> végső jegybe számítanak

-- vizsga

-- konzi CS 12-14, nyelvi labor 00-803
-- lambda.inf.elte.hu -> tárgy célja



-- http://lambda.inf.elte.hu/Drawings.xml

-- precedencia:
-- függvény alkalmazás legerősebb

-- tilos tábla: circle 5 <|> rect 8 2

-- `8` literál double és int is lehet, poliformizmus miatt (?)

-- circle függvény típusszignatúrája
circle :: Double -> Diagram

-- operátorok is spec. függvények, pl: (ilyenkor zárójelbe kell tenni őket)
(<|>) :: Diagram -> Diagram -> Diagram

-- tuple, rendezet pár/hármas


-- infix fvg alk., zárójel elhagyható függvény alkalmazásoknál ~
-- pl: circle 5 `move` (3,0)

-- ajtó:
-- rect 20 14 <|> move (rect 6 10) (0, -2)

-- halmamkifejezés, lista generátor/kifezezés
union [circle i | i <- [5,4,3,2,1]]

-- union [circle i | i <- [5,4,3,2,1], i /= 2]

--union [circle i | i <- [5.2,5..1]]

-- pont pont kifejezés
-- (alapból +1-es lépésközt használna)
[5,4..1]

-- növekvő sorozatnál nem kell kiírni
[1..5]


-- union [move (circle 4) (0, i) | i <- [-1, 0, 1, 2]]
-- union [move (rect 2 1) (x,y) | x <- [-5..5], y <- [-5..5], x == y]

-- boz
union [move (circle 4) (0, i) | i <- [-1, 0, 1, 2]]

-- szinezes stb

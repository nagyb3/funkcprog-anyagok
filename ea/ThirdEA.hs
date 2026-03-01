module ThirdEA where


-- && : előredefiniált fgv

-- 1 < 2  && 3 < 4 normálformája : True

-- ||  : logikai vagy
-- 2 < 1 || 3 < 4 normálformája : True


-- [0:[1, 2]] ++ [3, 4, 5]

-- ':' -> polimorf módon, a bal oldali paramétert 'hozzáadjuk' a listához az elejére
-- baloldalon mindig 'érték' , jobboldalon mindig lista, literálnak ua típusa kell h legyen mint azok az elemeknek amiből a list áll

-- '++' : listák összefűzése, concat
-- ++ szintén poliform, azonos alaptípúsú listákra használható. mindkét oldalon lista kell.

-- [1, 2, 3] ++ [4] lassú


-- listák belső reprezentációja : láncolt lista ==> ezért más a teljesítmény

-- and [True, 2 > 1, 6 > 5] normálformája: False


-- map abs [7, -4, 3]         normálformája : [7, 4, 3]

-- map: elemenként alkalmazza az első paraméterként megkapott fgv-t a második paramban lévő lista elemeire

-- map-et lehet párhuzamosan kiértékelni

-- a lista is egy függvény

-- map első paramétere: '->' típusú
-- map egy magasabb rendű fgv


-- clean: 
-- [(x, y) \\ x <- [1..4], y <- [1..x] | isEven x]

-- <= listagenerátor 

-- ~haskellben ugyanaz ez:
isEven = even

result = [(x, y) | x <- [1..4], y <- [1..x], isEven x]

-- x eleme {1, 2, 3, 4}

-- '<-' ezzel a jellel jelöljük az 'eleme' jelet
-- x eleme {1, 2, 3, 4}      <== halmaz kifejezés
-- x itt 'bejárja' a halmazt

-- második listag. függhet az elsőtől, de az első nem függhet a másodiktól
-- listag. után szűrők
-- ezek 'ortgonális generátorok'

-- ezek a listakifejezések: rekurzív függvények lesznek a háttérben, x nem is létezik




--- másodfokú egyenlet cleanben 

-- d: diszkrimináns, itt egy segédfüggvénnyel számoljuk ki
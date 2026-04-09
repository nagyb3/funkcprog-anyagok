előző órán adhoc polimorfizmus volt

## ADT-k, algebrai adatípusok

nincsenek beépített függvények és TÍPUSOK sem. (csak előre def. típusok vannak)

## ADT csinálása már meglévő típusokból:

(lehet a "semmiből" adt-t csinálva, vagyis nem meglévő típusokra támaszkodva)

példa: bináris fa

haskellben `data` kulcsszó

```Haskell
data Tree a = ..
```

ADT nem klasszikus értelembe vett Típus...

Típus:
pl Int

- típus érték halmazzal rendelkezik

`Tree Int` is típus (itt a típusérték halmazban konkrét fák vannak aminek az "elemei" Int-ek)

Akkor típus ha megtudjuk mondani hogy milyen értékek vannak benne.

`Tree` ADT-hez nem tartoznak típusok! => vagyis nincs típusértékhalmaza

---

Tree az egy leképezés (minden ADT), pl.:

- `Int -> Tree Int`
- `Bool -> Tree Bool`

(típusokról típusokra leképzés)

`Tree` az egy típuskonstruktor !
Tree itt "egy változós típus konstruktor"

---

~Bináris fa reprezentáció:
Itt pointereket használ under the hood a kiértékelő v fordító, de ehhez a "felhasználónak" nincsen hozzáférése és nem láthatja ezeket.

---

Láncolt listás példa:

Pointerek miatt van hogy:
`x : []` gyorsan fut le mivel csak a pointereket "állítgatja" az interpreter/ford.prog.
Ha az elemet a végére szeretnénk berakni akkor azt nem tudjuk megcsinálni, hanem "másolni" kellene az eredetit. (?)

"Sharing" : https://wiki.haskell.org/Sharing

Indirekt címzéssel vannak az elemek a listavázban, nem rendesen benne vannak.

---

`Node` és `Leaf` függvények (normális esetben fgveknek kisbetűseknek, típusoknak nagybetűsöknek kellene lennie, de ez direkt megsérti)

(Fát konstruáló fgv-ek, adat konstruktorok)

Listának kettő ilyen konstrukora van:

- "`[]`"
- "`:`"

---

Node :: a (Tree a) (Tree a) -> (Tree a)

Leaf :: (Tree a)

---

(a leaf-ek nem egy formák ha nem ugyanolyan fához "tartoznak" -> leaf polimorf)

---

adatkonstruktor függvényenek nincs definíciója (~csak típusa...)
=> mivel csak meglévő adatokat "ragasztanak" össze és adnak vissza.

"A fa csak Node-ból vagy Leaf-ből jöhet létre semmi másból"

(`|` választja el a lehetőség ~konstruktorokat)

## Alaptípus definíciója (a "semmiből")

pl:
felsorolási típus:

```Haskell
data Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun
```

```
[] a = (:) a [a] -- "a" típus elemet hozzá fűzi az "a" típusű listához
        | []
```

itt a kettő "[]" nem ugyanaz!!
típuskonstruktor != adatkonstruktor !!

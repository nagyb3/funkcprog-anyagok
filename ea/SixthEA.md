# 6.ea

## Összefoglaló

haskell:

- deklaratív nyelv

funkcionális prog alapja: lambda kalkulus (alonzo church)
ennek ereje azonos a turing géppel

kiértékelés: átírási lépések (redukciók) sorozata
("szövegátírás", de a valóságban gráfátírás már ma)

a szöveg és a gráfátírás eredménye azonos

ha már nincs több hely ahol belehetne helyettesíteni, akkor elértük a normálformát

kiértékelési strategéia (több lehetséges kiértékelés közül milyen sorrendbe hajtjuk végre )

- lusta
- mohó

A valóságban közömbös a sorrend (azonos normálforma jön ki) (== Konfluensek).
A lusta mindig megtalálja ha van normálform., de a mohó lehet beleragadhat a kiértékelésbe.

A normálforma egyértelmű amennyiben létezik.

redex (reducible expressions) :

- olyan kifejezás, amelyben lehet átírási szabályt alkalmazni (vagyis redukálni).

### modern funkc nyelvek jellemzői:

- nincs előző értéket megsemmisítő értékadás
- hivatkozási helyfüggetlenség (ugyanaz a függvény kif (pl f x 3) "ugyanaz" lesz más helyeken használva is.)
  ( = referencial transparency).
  - oka: mivel értékeadást nem lehet csinálni (értékadás tilalma)
  - egyenlőségi érvelés lehetséges (egyenlőt egyenlővel lehet "helyettesíteni", matematikai alapokból : Leibniz-elv)
- szigorúan típusos
- statikus típusosság (program szöveg megmondja hogy minek mi a típusa statikusan)
  (szigorúan típusos + statikusság => program helyesség biz. könyebb)
- algebrai adattípusok (mivel nincseneke beépített típusok, mindegyik típus csak előredefiniált, a nyelvbe csak a típus definiálási LEHETŐSÉG van beépítve).
  https://wiki.haskell.org/index.php?title=Algebraic_data_type

### magasabb rendű fgv: fgv paramétere fgv vagy fgv eredménye fgv.

nem akármilyen fgv: **NYÍL típusú függvény**, vagyis nem konstans függvény (pl "5" konstants függvény lenne, ezt nem engedjük meg persze itt).

```Haskell
twice f x = f (f x)

twice :: (a -> a) -> (a -> a)
```

note : típusban `->` jobbra zárójeleződik.

q: szigorú típusosság vs statikus típus ????

Note: clean-hez bizonyító rendszer: Sparkle

- https://repository.ubn.ru.nl/bitstream/handle/2066/107663/107663.pdf

### Curry-féle módszer (Currying)

Minden fgv igazából csak egy paraméteres
pl összeadás is, 1-re egy függvényt ad vissza ...

### Zermelo-Fraenkel halmazkifejezések

https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory

#### Haskellben ez: listakifejezés.

Példa Haskellben:

```Haskell
[x * x | x <- [1..], odd x]
```

Matematikában:

$$\{x ^ 2 \mid x \in \mathbb{N} \text{ és } 2 \nmid x\}$$

Halmazkifejezés, amiben vannak "szűrőfeltételek".

Note: <- : "eleme jel", majdnem ugyanugy néz ki xd.

Haskellben nem halmaz, hanem sorozat.

### Esetszétválasztás

Clean-ben:

```Clean
my_abs x
| x < 0 = ~x
| x >= 0 = x
```

Matematikában: kapcsoszárójellel megadott függvény definíció.

### Mintaillesztés

Ha lehet akkor ezt használjuk az esetszétválasztással szemben.

```Clean
fac 0 = 1
fac n | n > 0 = n * fac (n - 1)
```

Mindekettőnél számít az esetek sorrendje.

Note: Mintaillesztés kiértékelése gyorsabb, mint az esetszétválasztás, ezért is preferáltabb.

### Margószabály

angolul: Landin rule
https://en.wikipedia.org/wiki/Off-side_rule

```Clean
add4 = twice succ where
  succ x = x + + 2
  add = ... succ ..
```

Lokális függvényeket kezdjük "bentébb".

# apr 30 ea

```clean
rev [x:xs] ys = rev xs [x:ys]
```

ez egy gyűjtögető rekurziós függvény -> jobb mint normál: normál rekurzióban az utolsóból még "vissza kellene jönni" a hívási láncon

### konkatenáció

(++) infixr 5 :: [a] [a] -> [a]
(++) [x:xs] list = [x:xs ++ list]
(++) [] list = list

++ -nak magasabb a precedenciája mint : -nak

(imper prog: pointerek tudnánk átalakítani)

itt funkc: készítünk egy másolatot (mivel: nem szabad felülírni az eredetit !!)

de csak az első listáról készül másolat, másodikról nem. másodikon memória területén osztoznak

=> "sharing" van köztük

":" => "új csomópontot kell létrehozni"

---

gyűjtögetős length

(a naiv defnél a gyűjtögetős rekurzió gyorsabb!)

"egyenlőség" az egy osztály, vagyis minden típusra egy instance-t (példányt) kell létrehozni.

lokális függvényeknél ha ugyanaz a függvény, akkor a gráfban lesz egy hurok

pl:

```
repeat x = cons where
  cons = [x : cons]
```

segédfüggvénnyel -> mást fog "csinálni"/viselkedni és általában sokkal gyorsabb lesz így a kiértékelés
<= ugyanazt a csomópontot újrahasználjuk...

optim. technikák:

- sharing
- név adás
- gyűjtögetős rekurzió


<= tisztán funkcionális adatszerkezetek (diviánszky péter) https://people.inf.elte.hu/divip/publications.pdf
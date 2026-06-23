Zwischen endlichdimensionalen Vektorräumen sind lineare Abbildungen **immer stetig**

> [!note] Definition #definition
Eine lineare Abbildung $f : V -> W$ von normierten VR $(V, norm( dot)_V)$ und $(W, norm(dot)_W)$  ist stetig, wenn die Operatornorm
$$norm(f)_"op" := sup_(x in V \\ {0}) norm(f(x))_W /norm(x)_V = sup_(x in V \\ {0} "mit" norm(x) = 1) norm(f(x))_W $$
**endlich ist**. 

**Vektorraum $cal(L)(V,W)$**
Der Vektorraum $cal(L)(V,W)$ der stetigen linearen Abbildungen von $V$ nach $W$ ist ein Normierter Raum durch die Operatornorm


> [!Satz] Stetigkeit linearer Abbildungen
> $A : V -> W$
> $A$ ist genau dann stetig, wenn es eine Konstante $C in (0, infinity)$ gibt mit 
> $$norm(A(x))_W <= C norm(x)_V quad forall x in V$$




### Spezialfall
$V = W = RR^n$
>  Wenn $V = W = RR^n$ heißt die Operatornorm die von $norm( dot)_V$ induzierte natürliche Matrixnorm,  
- d.h. $norm(dot)_"op"$ ist **verträglich** mit $norm(dot)_V$, d.h. $forall x in RR^n, norm(f(x))_V <= norm(f)_"op" dot norm(x)_V$
- $norm(dot)_"op"$ ist **submultiplikativ**, d.h. $norm(f dot g)_"op" <= norm(f)_"op" dot norm(g)_"op", forall f,g$


## Spektralnorm
Sei $A in RR^(m times n)$. 
Dann ist $A^T A in RR^(m times m)$ **symmetrisch und positiv semidefinit** (postive reelle Eigenwerte)

**Spektralnorm**
$$norm(A)_2 = sqrt(lambda_(max)(A^T A))$$
-> ist gleich der Operatornorm (wenn die L2 Norm auf V und W angewendet wird)
=> ==Maximale Streckung== eines Vektors

   
   














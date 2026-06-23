$d : X times X -> RR$ ist eine **Metrik**, wenn gilt
- **Symmetrie**: $d(x,y) = d(y,x)$
- **Definitheit**: $d(x,y) >= 0 and d(x,y) = 0 <=> x = y$
- **Dreiecksungleichung**: $d(x,z) <= d(x,y) + d(y,z)$

[[Stetigkeit in Metrischen Räumen]]


## Umgekehrte Dreiecksungleichung
$$ abs(d(x,z) - d(y,z)) <= d(x,y)$$

## Beschränkte Menge
Eine Menge $E subset X$ heißt **beschränkt**, falls es ein $x in X$ und ein $R > 0$ gibt mit $$ E subset B_R(x)  $$

## Vollständigkeit
Ein metrischer Raum heißt ==vollständig== falls in ihm jede Cauchy-Folge konvergiert.

In einem vollständigen metrischen Raum ist eine Folge genau dann eine Cauchy-Folge, wenn sie konvergiert.

## Hausdorff'sches Trennungsaxiom
Für alle $x,y in X$ mit $x eq.not y$ existieren disjunkte offene Umgebungen $U(x)$ und $V(y)$ d.h. $U inter V = emptyset$


## Characterisierung von Topologischen Eigenschaften mit Folgen
Sei $(X, d)$ ein [[Metrischer Raum]] 

[[Topologische Räume]]
### Abschluss
Eine Menge $A subset X$ ist abgeschlossen genau dann, wenn alle konvergenten Folgen $(x_k)_(k in NN)$ mit $(x_k) subset A$ den Grenzwert in $A$ haben.

### Rand
Sei $A subset X$.
 $x in partial A$ genau dann, wenn 
 - eine Folge $(x_k)_(k in NN)$ in A mit $x_k -> x$ existiert 
 - und eine Folge $(x_k^c)_(k in NN)$ in $A^c$ mit $x_k^c -> x$

## Heine-Broel
Sei $(RR^n, d)$ der metrishe Raum aller rellen ${} n$-Tupel mit der euklidischen Metrik. 
Dann ist äquivalent
- $K$ ist kompakt
- $K$ ist beschränkt und abgeschlossen


# Stetigkeit in Metrischen Räumen
Seien $(X, d_x)$, $(Y, d_y)$ metrische Räume, $E subset X$

> [!Definition] Stetigkeit
> Eine Funktion $F : E -> Y$ heißt stetig in $a in E$, falls für jede Folge $(x_k)_(k in NN)$ in $E$ mit $x_k ->_(k -> infinity) a$ gilt $f(x_k) ->_(k -> infinity) f(a)$

Komposition stetiger Funktionen ist stetig

> [!lemma] Stetige funktionen nach $RR^n$
> Eine Funktion $f : E -> RR^n$ ist genau dann in $a in E$ stetig, wenn jede Komponente $f_1, dots, f_n$ stetig ist.

Addition, mutliplikation und division (solang $eq.not 0$) sind stetig

=> $C^0(E, RR^n)$ ist ein Vektorraum

> [!lemma] $epsilon$-$delta$ Kriterium
> $f : E -> Y$ ist genau dann stetig in $a$, wenn für jedes $epsilon > 0$ ein $delta > 0$ existiert sodass $forall x in E$ gilt $$abs(x-a) < delta => abs(f(x) - f(a)) < epsilon$$


> [!lemma] Topologisches Kriterium der Stetigkeit
> $f : X -> Y$
> - $f$ ist genau dann stetig in $a$, wenn für jede offene Umgebung ${} V_y {}$ von $y := f(a)$ eine Offene Umgebung $U_a$ von $a$ existiert mit $$f(U) subset V$$
> - $f$ ist genau dann stetig in $X$, wnn für alle offenen Mengen $V in Omega(Y)$ das Urbild $f^(-1) in Omega(X)$ ist.
> - $f$ ist genau dann stetig, wann das Urbild abgeschlossener Mengen abgeschlossen ist


# Induzierter Topologischer Raum
Sei $(X,d)$ ein metrischer Raum.
Offener Ball vom Radius $r$ um $x_0$: $B_r (x_0) := {x in X | d(x_0 , x) < r }$
$U subset X$.
$$ U in cal(T)(X) <=> forall x in U, exists epsilon > 0, B_epsilon (x) subset U$$
Die Axiome sind erfüllt. Beweis: Ranacher

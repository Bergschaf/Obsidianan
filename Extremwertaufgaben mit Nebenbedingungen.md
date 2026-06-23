Eingeschränkte Optimierungsaufgabe mit Gleichugnsnebenbedingungen:
$f : D -> RR$ udn $g : D -> RR^k$, $D subset RR^n$
Wir suchen $hat(x) in D$, s.h.
- $$hat(x) in (S := {x in D | g(x) = 0})$$
- $$exists U(hat(x)), f(hat(x)) <0 f(x), quad forall x in U(hat(x)) inter S$$

[[Theorethische Physik II]]


## Multiplikatorregel von lagrange
Notwendige Bed. 1. Ordnung für lokales Minimum unter Nebenbedingungen
$f : D -> RR$, $g : D -> RR^k$ partiell stetig diffbar
Sei 
- $hat(x) in D$ ein Extremum unter der Nebenbedingung $g(x) = 0$ und
- Gradienten $nabla g_1(hat(x)), dots, nabla g_k (hat(x))$ linear unabhängig in $RR^n$
Dann gilt
$$ exists hat(lambda) = vec(hat(lambda_1), dots.v, hat(lambda_k)) in RR^k quad "mit" sum_(i=1)^k hat(lambda_i) nabla g_i (hat(x)) = nabla f(hat(x)) <=> nabla g(hat(x)) hat(lambda) = nabla f(hat(x)) $$



TODO parametrisierung im Skript anschauen

>Wikipedia:
> "Der konstante Lagrange-Multiplikator λ  wird dabei benötigt, weil die beiden Gradienten zwar parallel sein sollen, aber als Vektoren unterschiedlich lang sein können. "



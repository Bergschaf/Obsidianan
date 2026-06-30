
> [!Definition] Lineare AWA
> Sei $A(dot) : I -> RR^(n times n)$ eine matrixfunktion, sowie $b(dot) : I -> RR^n$ eine Vektorfunktion. Dann ist eine lineare AWA der Form
> $$ y'(t) = A(t) y(t) + b(t) quad forall t >= t_0$$
$$ y(t_0) = y_0$$
eine lineare AWA

> [!Satz] Lösung einer linearen AWA
> Seien $A : [t_0, infinity) -> RR^(n times n), b : [t_0) -> RR^(n times n)$ stetig. Dann gilt
> - Die lineare AWA besitzt eine eindeutige globale Lösung $y : [t_0, infinity) -> RR^n$
> - Falls $A(dot)$ gleichmäßig negativ definit auf $[t_0,infinity)$ ist und $b(dot)$ beschränkt ist, dann ist $y(t)$ beschränkt und exponentiell stabil.

> [!Definition] Homogene lineare Systeme
> Ein homogenes lineares System ist der Form $y'(t) = A(t) y(t)$
> - Die Menge der Lösnugen bidlet einen Vektorraum $H$
> - $B = {y^1_0, dots, y^n_0}$ basis von $RR^n$
>   ${y^1, dots, y^n}$ die Lösungen von der AWA
>  $$ (y^i)' = A(t)y^i, quad y^i(t_0) y_0^i quad i in {1, dots, n}$$
>  Dann ist ${y^1, dots, y^n}$ eine basis von $H$ nud es gilt $dim(H) = n$
> - Sei $B = {y^1, dots, y^n}$ eine Basis der Lösungsraums $H$, dann bilden die Vektoren ${y^1 (t), dots, y^n(t)}$ für jedes $t >= t_0$ eine Basis des $RR^n$

> [!Definition] Fundamentalmatrix
> Eine Basis ${phi^1, dots phi^n}$ des Lösungsraums $H$ von $y'(t) = A(t) y(t)$ zu den Anfangswerten $phi^i(t_0) = e^i$ (Standartbasisvektor) heißt **Fundamentalsystem** des linearen Systems.
> 
>  Die matrix $Phi = [phi^1, dots, phi^n]$ der Spaltenvektoren $phi^i$ heißt **Fundamentalmatrix** des linearen Systems.
>  Diese Matrix ist **regulär** und löst die AWA (kompontenweise):
>  $$ Phi'(t) = A(t)Phi(t), quad forall t >= t_0, quad Phi(t_0) = bb(1)$$


> [!satz] Inhomogene lineare Systeme
> $$y'(t) = A(t) y(t) + b(t)$$
> Seien $A : [t_0, infinity) -> RR^(n times n), b : [t_0, infinity) -> RR^n$ **stetig**. Dann gilt:
> - Für einen konstanten Vektor $c in RR^n$ ist 
>  $$y_b (t) := Phi(t) (integral^t_(t_0) Phi^(-1)(s)b(s)d s + c) $$
>   eine partiukäre Lösung des inhomogenen linearen Systems.
 - Alle Lösungen der inhomogenen Gleichung haben die Form:
>    $$y(t) = y_b(t) + nu(t) $$
>    wobei $nu in H$ (Lösungsraum des homogenen systems).
 - Gilt $c = y_0$, dann gilt $y_b(t_0) = y_0$





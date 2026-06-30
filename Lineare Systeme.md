
> [!Definition] Lineare AWA
> Sei $A(dot) : I -> RR^(n times n)$ eine matrixfunktion, sowie $b(dot) : I -> RR^n$ eine Vektorfunktion. Dann ist eine lineare AWA der Form
> $$ y'(t) = A(t) y(t) + b(t) quad forall t >= t_0$$
$$ y(t_0) = y_0$$
eine lineare AWA

> [!Satz] Lösung einer linearen AWA
> Seien $A : [t_0, infinity) -> RR^(n times n), b : [t_0) -> RR^(n times n)$ stetig. Dann gilt
> - Die lineare AWA besitzt eine eindeutige globale Lösung $y : [t_0, infinity) -> RR^n$
> - Falls $A(dot)$ gleichmäßig negativ definit auf $[t_0,infinity)$ ist und $b(dot)$ beschränkt ist, dann ist $y(t)$ beschränkt und exponentiell stabil.

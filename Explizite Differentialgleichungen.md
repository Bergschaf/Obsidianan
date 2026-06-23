
> [!Definition] Differentialgleichungen
> Implizite Form: $F(t, y, y',dots, y^((n))) = 0$
> Explizite Form: $y^(n) = f(t, y, y', dots, y^(n-1))$

Differentialgleichungen $n$-ter Ordnung sind äquivalent zu Systemen von DGLs 1.Ordnung

Definiere: ${} x_1 := y, x_2 := y', dots, x_n := y^((n-1)) {}$
d.h. $x_1' = y' = x_2 quad dots quad x_n' = y^((n)) = f(t, x_1, dots, x_n)$

$$ x' = tilde(f)(t,x) = vec(x_2, dots.v, x_(n-1), f(t,x))$$

> [!Definition] System von DGLs 1. Ordnung
> Sei $D = I times Omega subset R times RR^n$, $f : D -> RR^n$ stetig. Dann heißt
> $$(*) quad quad y' = f(t,y)$$
> ein **System von $n$ Differentialgleichungen 1. Ordnung**
> - Eine Lösung von $(*)$ ist eine diffbare FUnktion $y : I -> RR^n$ mit 
> 	- $"Graph"(y) := {(t,y(t) in RR times RR^n | t in I)} subset D$
> 	- $y'(t) = f(t,y(t)) quad forall t in I$

TODO Notation im Aufschrieb


> [!Definition] Anfangswertproblem
> $y' = f(t,y), quad forall t in I$
> $y(t_0) = y_0$
> Gesucht wird eine diffbare Funktion $y : I -> RR^n$ mit
> - $"Graph"(y) subset D$
> - $y'(t) = f(t,y(t)) quad t in I$
 > - $y(t_0) = y_0$


> [!lemma] DGL <=> Integralgleichung
> Sei $D subset R times RR^n$, $f : D -> RR^n$ stetig, $(t_0, y_0) in D$ und $y : I -> RR^n$ stetig mit ${} "Graph"(y) subset D {}$, $t_0 in I$. Dann ist äquivalent:
> - $y$ löst $y' = f(t,y)$ und $y(t_0) = y_0$
> - $y(t) = y_0 + integral^t_t_0 f(s, y(s)) d s$










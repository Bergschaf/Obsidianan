
Problem: $$f : I times RR^n -> RR^n, quad r : RR^n times RR^n -> RR^n$$
$$ y'(t) = f(t,y(t)) quad t in I = [a,b]$$
$$ r(y(a), y(b)) = 0$$
Gesucht ist eine stetig diffbare Lösung $y : I -> RR^n$ die beide Bedingungen erfüllt.
Die zweite Bedingung lässt sich verallgemeinern zu einer Mehrpunkt RWA:
$$ r(y(t_1), dots, y(t_k)) = 0$$


> [!Definition] Allgemeine inhomogenen lineare RWA
> Seien $B_a, B_b in RR^(n times n), g in RR^n$ sowie $A : I -> RR^(n times n), f : I -> RR^n$ stetig. Dann ist eine allgemeine inhomogene lineare RWA der Form:
> $$ y'(t) = A(t)y(t) + f(t) quad t in I$$
> $$B_a y(a) + B_b y(b) = g $$


Idee: zurückführen auf AWA


> [!Satz] Existenzsatz für lineare RWA
> Die lineare RWA besitzt eine eindeutige Lösung $y(t)$ für beliebge $f(t)$ und $g$ genau dann, wenn 
> $$ B_a + B_b Phi (b) in RR^(n times n)$$
> Regulär ist, bzw die assoziierte homogene RWA nur die triviale Lösung $y eq.triple 0$ hat

### Nichtlineare RWA

> [!Satz] Lokale eindeutigkeit von nichtlinearer RWA
> Eine Lösung $y$ von nichtlinearer RWA ist lokal eindeitig, genau dann, wenn die lineare RWA
> $$v'(t) = f'_x (t,y(t))v(t) quad t in I$$
$$ r'_x (y(a),y(b)) dot v(a) + r'_y (y(a), y(b)) dot v(b) = 0 $$
> nur die triviale Lösung $v = 0$ besitzt
i

> [!Satz] Sturm Lioville Probleme
> Es sei $p(t) >= rho > 0$. Falls 
> $$ rho/(b-a)^2 + min_(t in I)(r(t) - 1/2q'(t)) > 0$$
> dann besitzt das Sturm-Lioville Problem (SL-RWA) mit Dirichletschen Randbedingungen (D-RB) eine eindeutige Lösung $y(t) in C^2(I)$.
> 
> Falls $$ rho/(b-a)^2 + min_(t in I) (r(t) - 1/2 q'(t)) >= gamma > 0$$
mit einer Konstante $gamma$, dann gilt für idese Lösung die a-priori-Abschätzung bzugl. der $L^2$ Norm:
$$ norm(y)_2 + norm(y')_2 + norm(y'')_2 <= c dot (norm(f)_2 + abs(g_a) + abs(g_b)) $$
mit einer von $y$ und $f$ unabhängigen Konstante $c > 0$.


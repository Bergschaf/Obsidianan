
> [!Satz]
> $x in D$, $h in RR^n$ mit ${x + t h | t in [0,1]} subset D$ und $f in C^(r+1)(D, RR)$
> Dann existiert ein $theta in [0,1]$ sodass
> $$ f(x+h) = f(x) + sum_(j=1)^r 1/k! sum_(i_1, dots, i_k = 1)^n (partial^k f)/(partial_i_k, dots, partial_i_1) (x) dot h_i_1 dot dot dot h_i_k + "Restglied"$$

[[Multiindex Notation]]

Kompakter:
$$ f(x + h) = sum_(abs(alpha) <= r) (partial^alpha f(x))/(alpha!) h^alpha + sum_(abs(alpha) = r + 1) (partial^alpha f(x + theta h))/alpha! h^alpha$$

### Praxisrelevant:

$f in C^1(D, RR)$, $x in D$, $h in RR^n$ mit $x + t h in D quad forall t in [0,1]$
$$ f(x+h) = f(x) + (nabla f(x), h )_2 + omega_1(x,h), quad "mit" (omega_1(x,h))/norm(h) ->_(h -> 0) 0$$
für $f in C^2(D, RR)$ gilt:
$$f(x+h) = f(x)+ (nabla f(x), h)_2 + 1/2 (H_f (x) h ,h)_2 + omega_2(x,h), quad (omega_2(x,h))/norm(h)^2 ->_(h->0) 0 $$
mit der Hesse matrix $H_f (x)$

TODO das ist doch taylor 1. und 2. Ordnung da oben?? das ist gut zu wissen (wikipedia schauen)


(2. Gilt da: $$1/2! sum_(i,j = 1)^n (partial^2 f(x))/(partial_x_i partial_x_j) h_i dot h_j = 1/2 (H_f (x)h, h)_2$$)


## Taylor Reihen

> [!Definition]
> Sei $f : D -> RR$ beliebig oft diffbar:
> $$T_infinity^f (x +h) = sum_(abs(alpha) = 0)^infinity (partial^alpha f(x))/(alpha!)h^alpha$$

Taylor Reihe konvergiert, wenn $$R^f_(r+1)(x,h) ->_(r -> infinity) 0, quad x in D$$
hinreichend dafür:
$$sup_(abs(alpha)> 0) sup_(x in D) abs(partial^alpha f(x)) <= M_f <= infinity$$
(d.h. alle partiellen Ableitungen von $f$ sind gleichmäßig beschränkt)


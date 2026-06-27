# in  $RR^n$


> [!Definition] Partielle Ableitung
> Sei $D subset RR^n$ offen und $f : D -> RR$ Partielle Ableitung.
> - $f$ heißt im Punkt $x in D$ **partiell Differenzierbar** nach i-ter Koordinatenrichtung, falls der Grenzwert existiert:
> 	 $$partial f(x) := lim_(h -> 0) (f (x + h dot e^((i))) - f(x))/h$$
> - $f$ heißt partiell differenzierbar in $x in D$, falls $partial_i f(x)$ für alle $1 <= i <= n$ existiert
> - Falls $partial_i f(x)$ stetig, dann ist f stetig partiell differenzierbar
> 

(mit $e^((i))$ := i-te Spalte der $n times n$ Einheitsmatrix)
(Bei $f : RR^n -> RR^n$ definition über alle komponentenfunktionen)

**Es kann sein dass $f$ partiell diffbar aber nicht stetig ist!**

> [!Satz]
> Für $x in D$ gelte: ${} exists B_R (x) subset D {}$ sodass die partiellen Ableitungen $partial_i f(y),i = 1, dots, n$ beschränkt sind $forall in B_R(x)$, d.h.
> $$ sup_(y in B_R(x)) abs(partial_i f(y)) <= M, quad forall i$$
> Dann ist $f$ stetig im Punkt $x$


> [!Satz] Vertauschbarkeit der Differentationsreihenfolge
> Sei $D subset RR^n$ offen und $f : D -> RR$ zweimal **stetig** partiell differenzierbar in einer Umgebung $B_R(x) subset D$ eines Punktes $x in D$. Dann gilt:
> $$ partial_i partial_j f(x) = partial_j partial_i f(x), quad forall i j $$


## Komische sachen

> [!Definition] Gradient
> $$ nabla f(x) := vec(partial_1 f(x), dots.v, partial_i f(x)) $$

> [!Definition] Hesse Matrix
>  $f : D in RR^n -> RR$ zweimal partiell differenzierbar
>  $$ H_f(x) := nabla^2 f(x)  := (partial_i partial_j)_(i,j in [1, n]) quad in RR^(n times n) = mat((partial f)/(partial_1 partial_1), dots, (partial f)/(partial_1 partial_n); dots.v, dots.down, dots.v; (partial f)/(partial_n partial_1), dots,(partial f)/(partial_n partial_n))$$
> Erklärung warum ${} nabla^2$: $H_f (x) = nabla * (nabla f(x))^T$
 
> [!Definition] Jacobi Matrix
> $f : D in RR^n -> RR^m$ partiell diffbare Vektorfunktion
> $$ J_f (x) := mat(partial_1 f_1, dots, partial_n f_1; dots.v , dots.down, dots.v ; partial_1 f_m, dots,  partial_n f_m) $$

## Totale Ableitung
> [!Definition] Totale Ableitung
> $f : D -> RR^m$
> $f$ heißt im Punkt $x in D$ **total differenzierbar**, falls es eine lineare Abbildung $A : RR^n -> RR^m$ gibt, sodass
> $$ lim_(h -> 0, h eq.not 0) (f(x + h) - f(x) - A dot h)/norm(h) = 0$$
> $A$ heißt das **Differential** von $f$ im Punkt $x$.       ($D f(x_0))$)
> 

Schreibweise: $d f(x), d f |_x$

> [!Satz] Differenzierbarkeit und Jacobi Matrix
> - Sei $f : D in RR^n -> RR^m$ in $x in D$ diffbar, dann ist $f$ partiell diffbar und $D f(x) = J_f (x)$ (__Jacobi Matrix__)
> - Sei $f$ partiell diffbar in einer Umgebung von $x in D$ und die partiellen Ableitungen stetig in $x$, dann ist $f$ diffbar in $x$ 


> [!Korollar] stetig partiell diffbar impliziert
> stetig partiell diffbar -> (total) diffbar -> partiell diffbar


	
> [!Satz] Kettenregel für Differentiale
> $D_f subset RR^n$ und $D_g subset RR^m$ offen, $g : D_g -> RR^n$ $f : D_f -> RR^f$ Abbildungen.
> Falls g im Punkt $x in D_g$ und $f$ im Punkt $y = g(x) in D_f$ diffbar sind, gilt:
> ${} h = f compose g {}$ ist diffbar und 
> $$ D_x h(x) = D_x (f(g(x))) D_x (g(x)) $$
$$ D_x h(x) in RR^(r times m) quad D_x (f(g(x))) in RR^(r times n) quad D_x g(x) in RR^(n times m)$$

> [!Definition] Richtungsableitung
> $D subset RR^n$ offen, $f : D -> RR$ imp Unkt $x in D$ diffbar.
> Dann gilt $forall v in RR^n$ mit $norm(v)_2 = 1$ , dass die Ableitungs in Richtung $v$ (**Richtungsableitung**) existiert:
> $$ (partial f)/(partial v) (x) = lim_(t arrow.br 0) ( f(x + t v) - f(x))/t$$
> und $$ (partial f)/(partial v)(x) = (nabla f(x), v)_2$$

$D subset RR^n$

> [!Satz] Mittelwertsatz für Vektorfunktionen
> Sei $f : D -> RR^m$ **stetig diffbar** , $x in D$ und **$h in RR^m$**
> s.d. ${x + t + h | RR^n | t in [0,1]} subset D$ (**konvexe Menge**)
> $$f(x + h) - f(x) = (integral_0^1 J_f (x + s * h) d s) * h $$
(Integral von der matrix $in KK^(m times n)$ komponentenweise und dann matrixprodukt mit h)


> [!Korollar] Stetig differenzierbare Funktionen sind Lipschitz stetig
> Seien $D subset RR^n$ offen, $f : D -> RR^m$ stetig diffbar, $x in D$ und $epsilon > 0$ sodass $B_epsilon(x) subset D$
> Es gilt:
> $f$ ist **lokal Lipschitz stetig**: 
> $$ norm(f(y) - f(x))_2 <= M norm(y - x)_2 quad forall y in B_epsilon(x)$$
> mit $M := sup_(z in B_epsilon(x)) norm(J_f(z))_2$
> (Falls $D$ **konvex** ist und $M < infinity$, ist $f$ auf ganz $D$ Lipschitz stetig)


Hilfslemma:


> [!lemma] Lemma von Gronwall
> Sei $w(t) >= 0$ stückweise stetig und genüge für $a,b in RR$ die Integralungleichung
> $$ w(t) <= a integral^t_t_0 w(s) d s + b, quad t >= t_0$$
> Dann gilt
> $$ w(t) <= e^(a(t-t_0))b, quad t>= t_0$$



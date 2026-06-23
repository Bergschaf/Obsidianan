$$(dot, dot) : V times V -> KK  $$
heißt Skalarprodukt, wenn:
- **Definit**: $(v, v) >= 0 and (x,x) = 0 <=> x = 0$
- **Symmetrisch**: $(x,y) = overline((x,y))$
- **Bilinear**



> [!Satz] Cauchy-Schwarz Ungleichung
> $(a,b) in V$
> $$abs((a,b))^2 <= (a,a)(b,b)$$


### Norm
Ein Skalarprodukt $(dot, dot)$ auf $V$ über $KK$ erzeugt eine Norm durch $$ norm(x) := sqrt((x,x)) quad x in V$$
## L^p Norm
Sei $x in RR^n$
$$ norm(x)_p = (sum_(i = 1)^n abs(x)^p)^(1/p)$$

### Wichtige Ungleichung

### Ungleichung von Young
Seien $p, q in RR$, $p > 1, q < infinity, 1/p + 1/q = 1$
$$ abs(x dot y) <= abs(x)^p / p + abs(y)^q / q quad forall x, y in RR$$
### Ungleichung von Hölder
Seien $p, q in RR$, $p > 1, q < infinity, 1/p + 1/q = 1$
$$ abs((x,y)_2) <= norm(x)_p dot norm(y)_q$$
(mit der $l_p$-Norm  $norm(x)_p$)

### Ungleichung von Minkowski (Dreiecksungelcihung für die lp_Norm)
Sei $p in R, 1 <= p < infinity,$ oder $p = infinity$. Dann gilt:
$$ norm(x + y)_p <= norm(x)_p + norm(y)_p$$

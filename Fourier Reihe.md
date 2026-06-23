Sei $f in cal(R)[0, 2pi]$ eine $2pi$-periodishce Funktion

> [!Definition] Fourier-Koeffizienten 
> $$c_k (f) := 1/(2pi) (f, e^(i k x)) =  1/(2pi) integral_0^(2pi) f(x) e^(i k x) d x$$


> [!Definition] n-te Partialsumme
> $$s_n (f) := sum_(k = -n)^n c_k e^(i k x)$$

Alternative Darstellung:
$$ a_0 / 2 + sum_(k = 1)^infinity (a_k cos(k x) + b_k sin(k x)) $$
mit $a_k = 1/pi integral_0^(2pi) f(x) cos(k x) d x$, $b_k = 1/pi integral_0^(2 pi) f(x) sin(k x) d x$


> [!Lemma] 
> $f in cal(R)[0, 2pi]$ $2pi$ periodisch.
> $$norm(f - s_n(f))^2_2 = norm(f)^2_2 - 2pi sum_(k = -1)^n abs(c_k)^2$$

> [!Lemma] Besselsche Ungleichung
> $$ 2pi sum_(k = - infinity)^infinity abs(c_k)^2 <= norm(f)^2_2$$

> [!Satz] $L^2$ Konvergenz
> $$norm(f)^2 = 2 pi sum_(k = - infinity)^infinity abs(c_k)²$$

> [!Satz] Gleichmäßige Konvergenz
> Sei $f : RR -> CC$ eine $2pi$-periodische, stetige Funktion, die *stückweise stetig differenzierbar* ist.
> Dann konvergiert die Fourier-Reihe von $f$ gleichmäßig gegen $f$


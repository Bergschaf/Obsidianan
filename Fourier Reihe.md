Sei $f in cal(R)[0, 2pi]$ eine $2pi$-periodishce Funktion

> [!Definition]  Fourier Reihe
> $$c_k (f) := 1/(2pi) (f, e^(i k x)) =  1/(2pi) integral_0^(2pi) f(x) e^(i k x) d x$$
> 
Alternative Darstellung:
$$ a_0 / 2 + sum_(k = 1)^infinity (a_k cos(k x) + b_k sin(k x)) $$
mit $a_k = 1/pi integral_0^(2pi) f(x) cos(k x) d x$, $b_k = 1/pi integral_0^(2 pi) f(x) sin(k x) d x$


> [!lemma] Umrechnung reelle-komplexe fourier koeffizienten
> $c_0 = 1/2 a_0$, $c_k = 1/2 (a_k - i b_k)$ $c_(-k) = 1/2(a_k + i b_k)$



> [!Definition] n-te Partialsumme
> $$s_n (f) := sum_(k = -n)^n c_k e^(i k x)$$

TODO hier nochmal in der Übesicht schauen welche man braucht

> [!Lemma] Fehlerformel von fourier Reihe
> $f in cal(R)[0, 2pi]$ $2pi$ periodisch.
> $$norm(f - s_n (f))^2_2 = norm(f)^2_2 - 2pi sum_(k = -1)^n abs(c_k)^2$$

> [!Lemma] Besselsche Ungleichung
> $$ 2pi sum_(k = - infinity)^infinity abs(c_k)^2 <= norm(f)^2_L^2$$

TODO Hilfssatz 1.14: Für $2pi$-periodische Treppenfunktionen konvergiert die Fourier-Reihe im quadratischen Mittel gegen $f$

> [!Satz] $L^2$ Konvergenz von Fourier Reihe
> $$norm(f)^2 = 2 pi sum_(k = - infinity)^infinity abs(c_k)²$$

> [!Satz] Gleichmäßige Konvergenz von Fourier Reihen
> Sei $f : RR -> CC$ eine $2pi$-periodische, stetige Funktion, die *stückweise stetig differenzierbar* ist.
> Dann konvergiert die Fourier-Reihe von $f$ gleichmäßig gegen $f$

TODO $f$ nur stückweise stetig diffbar => 
punktweise Konvergenz überall, gleichmäßige Konvergenu auf Intervallen der Stetigkeit, an Sprungstellen $s_n(xi) -> (f(xi_(-)) + f(xi_+))/2$


> [!lemma] Unterschied Fourier <-> Taylor 
> - Taylor approximiert lokal, Fourier global (für periodische funktionen)
> - Für Fourier muss die funktion nicht $C^infinity$ sein


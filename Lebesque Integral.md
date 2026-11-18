## Treppenfunktionen
$Omega$ Lebesque-messbar
> [!Definition] Lebesque Integral für Treppenfunktionen
> $$f = sum_(n = 1)^N a_n 1_(A_n) in cal(T)(Omega)$$
> $$integral_Omega f dif l_d := sum_(n=1)^N l_d (A_N) a_n $$ 

Sei $f in cal(T)(Omega)$.
> [!Satz] Eigenschaften des Lebesque Inegrals für Treppenfunktionen
> - Linearität 
> - Monotonie
> - Normiertheit ($integral_Omega 1 dif l_d = 1$)

## Nicht negative messbare einfache Funktionen 

> [!Definition]
> $Omega in cal(m)_d, f : Omega -> [0, infinity]$ einfach, messbar
> $$ integral_Omega f dif l_d = sum_(k = 1)^K y_k l_d ( {x | f(x) = y_k}) $$
> mit den **paarweise verschiedenen Werten von f** $y_1, dots, y_k in [0, infinity]$

(Linearität (mit positiven Vorfaktoren), Monotonie und Normierung ergeben sich wie bei Treppenfunktionen)

$Omega in cal(m)_d$
> [!Satz]
> - $f_n : Omega -> [0, infinity]$ einfach, messbar,
> - $f_n <= f_(n+1)$
> - $f(x) := lim_(n -> infinity) f_n (x)$
> Falls $f$ **einfach**, so gilt:
> $$ integral_Omega f dif l_d = lim_(n -> infinity) integral_Omega f_n dif l_d $$

$f : RR^d -> [0, infinity]$ messbar, einfach
> [!Satz] $sigma$-Additivität
> Dann ist 
> $$ F : cal(m)_d -> [0, infinity] := Omega mapsto integral_Omega f dif l_d $$
> $sigma$-Additiv


### Lebesque integral für nicht negative messbare Funktionen

> [!Definition] 
> $f : Omega -> [0, infinity]$ L. messbar
> $$ integral_Omega f dif l-d := sup { integral_Omega g dif l_d | g : Omega -> [0, infinity] "ein. messbar, mit" g <= f} $$
> 

$f : Omega -> [0,infinity]$ messbar
> [!Satz]
> $f_1, f_2, dots : Omega -> [0,infinity]$ einfach, messbar mit
> $f_n (x) arrow.tr_(n -> infinity) f(x) in Omega$
> Dann gilt:
> $$ integral_Omega f dif l_d = lim_(n -> infinity) integral_Omega f_n dif l_n $$
> 



## Messbare Funktionen
> [!Definition]
> $f : Omega -> overline(RR)$
> $$ integral_Omega f dif l_d :=  integral_Omega f^+ dif l_d - integral_Omega f^- dif l_d $$
> - Falls Differenz in $overline(RR)$ definiert: **Quasiintegrierbar**
> - Falls Differenz in $RR$: **Lebesque-Integrierbar**





## Der Raum $L^1(Omega)$




> [!Definition] Vektorraum der Lebesque-intergierbaren Funktionen
> $$ cal(L)^1 ((Omega,cal(M)_d, l_d); RR) = cal(L)^1 (Omega) := {f : Omega -> RR : f "Lebesque integrierbar"} $$
> 

> [!Lemma]
> $$ abs(dot)_1 : cal(L)^1 (Omega) -> [0, infinity) := f mapsto integral_Omega abs(f) dif l_d  $$  
> definiert eine ==Halbnorm==:
> - $abs(0_(cal(L)^1))_1 = 0$
> - $abs(a f)_1 = a abs(f)_1$
> - $abs(f + g)_1 <= abs(f)_1 + abs(g)_1$




Äquivalenzrelation: $$f tilde g <=> l^*_d ({f eq.not g}) = 0$$
> [!lemma]
> $f : Omega -> overline(RR)$ integrierbar und $g tilde f$, dann ist $g$ integrierbar und es gilt: 
> - $abs(f - g)_1 = 0$
> - $integral_Omega f dif l_d = integral_Omega g dif l_d$

Es folgt:

$$ f tilde g <=> abs(f - g)_1 $$

$f, g : Omega -> overline(RR)$ Lebesque integrierbar
$tilde(f) tilde f$
$tilde(g) ~ g$
$a in RR$
> [!lemma]
> - $a tilde(f) ~ a f$
> - $$ f bold(1)_{abs(f) < infinity} + g bold(1)_{abs(g) < infinity} tilde tilde(f) bold(1)_{abs(tilde(f)) < infinity} + tilde(g) bold(1)_{abs(tilde(g)) < infinity}$$


> [!Definition] Vektorraum der Äquivalenzklassen intergrierbarer numerischer Funktionen auf $Omega$
> $$L^1 (Omega) := {[f] : f : Omega -> overline(RR)} = cal(L)^1(Omega)\/~$$

> [!Korollar] 
> $$ norm(dot)_1 : L^1(Omega) -> [0, infinity) := [f] mapsto integral_Omega abs(f) dif l_d$$
definiert eine ==Norm==

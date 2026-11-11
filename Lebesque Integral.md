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












> [!Untermannigfaltikgeit (reguläre Nullstellenmenge)] 
> Eine Teilmegne $M subset RR^n$ heißt $d$-dimensionale **untermannigfaltigkeit** der Klasse $C^l$ $(l >= 1, d <= n -1)$, wenn es zu jedem Punkt $a in M$ eine offene Umgebung $U in RR^n$ und ==$l$-mal stetig diffbare Funktionen== $g_1, dots, g_(n-d) : U -> RR$ gibt, so dass gilt
> - $M inter U = {x in U : g(x) = 0}$
> - $"Rang" D_g (a) = n - d$
$$ D g in RR^(n - d times n) = mat((partial g_1)/(partial x_1), dots, (partial g_1)/(partial x_n); dots, quad, dots; (partial g_(n-d))/(partial x_1), dots, (partial g_(n-d))/(partial x_n) ) $$
> $$ g : U -> RR^(n-d)$$
> d.h. M lässt sich lokal als **Nullstellenmenge** von $(n-d)$ $C^l$-Funktionen von $n$ Variablen mit linear unabhängigen Gradienten schreiben.
> Bedingung:
> $$ "Rang"D g(a) = n d <=> "Die Gradienten" nabla g_1, dots, nabla g_(n-d) "sind in a linear unabhängig"$$




### Beispiel
$n-d$ dimensionale Hyperflächen


> [!Untermannigfaltigkeit als Graph]
> Eine Teilmenge $M subset RR^n$ ist eine d-dimensionale Untermannigfaltigkeit der Klasse $C^l$ genau dann, wenn zu jedem Punkt $a in M$
> offene Umgebungen  (evtl Umnumerierung der Koordinaten)
> $$U' subset RR^d "von" a' := (a_1, dots a_d)^T$$
> $$U'' subset RR^(n-d) "von" a'' := (a_(d+1), dots, a_n)^T$$
> und eine $l$-mal stetig diffbare Abbildung $phi : U' -> U''$ gibt, so dass
> $$ M inter (U' times U'') = {(x', x'') in U' times U'' : x'' = phi(x')}$$

Hier $x' = (x_1, dots, x_d)^T$ und $x'' = (x_(d+1), dots, x_n)^T. d.h. $M$ l#sst sich lokal als **Graph** vo n$n-d)$ $C^l$ Funktionen von d Variablen schreiben.



> [!Untermannigfaltikgeit als $d$-dimensionale Ebene (lost)]
> Sei $E_d subset RR^n$ die $d$ dimensionale Ebene
> $$E_d := {(x_1, dots x_n)^T in RR^n | x_(d+1) = dots = x_n = 0} $$
> Eine Teilmenge $M subset RR^n$ ist genu dann eine $d$ dimensinale Untermannigfaltigkeit der klasse $C_l$, falls es zu jedem $a in M$ 
> - eine offene Umgebungen $U(a) subset RR^n, V subset RR^n$ 
> - und eine $C^l$ invertierbare Abbildung ${} F_a : U -> V {}$ gibt, sodass 
> $$ F_a (M inter U) = E_d inter V$$
> d.h. durch eine lokale Koordinatentransformation der Klasse $C^l$ läßt sich M zu einer $d$-**dimensionalen Ebene** im $RR^n$ geradebiegen.



> [!defintion] Reguläre Parametrisierung/Immersion
> Sei $W subset RR^d$ offen
> EIne stetig diffbare Abbildung $Phi : W -> RR^n$ heißt **Immersion** (oder reguläre Prametrisierung, wenn)
> $$ "Rang" D Phi (w) = d quad forall w in W$$
> $$ D Phi = mat((partial Phi_1)/(partial w_1), dots, (partial Phi_1)/(partial w_d); dots, dots, dots; (partial Phi_n)/(partial w_1), dots, (partial Phi_n)/(partial w_d))$$


> [!Satz] Parametrisierungssatz
> Eine Teilmenge $M subset RR^n$ ist genau dann eine d-dimensionale Untermannigfaltig der Klasse $C$, wenn es jedem Punkt $a in M$
> - eine offene Umgebung $U subset RR^n$ von a
> - eine offene Teilmenge $W subset RR^d$ und
> - eine Immersion $Phi : W -> RR^n$ der Klasse $C^l$ gibt die W homöomorph auf $M inter U$ abbildet.
> Der Homöomorphismus $Phi : W -> (M inter U) subset RR^n$ heißt lokale **parameterdarstellung** oder **Karte** der Untermannigfaltigkeit $M$.
> 


**Homöomorphismus**: $f$ bijektiv und stetig und $f^(-1)$ stetig 


> [!Definition] Tangentialraum
> Sei ${} M subset RR^n {}$ eine Untermannigfaltigkeit und $a in M$ ein Punkt.
> Ein Vektor $v in RR^n$ heißt **Tangentialvektor** an $M$ im Punkt a, wenn es eine stetig diffbare Kurve:
> $$ gamma : (-epsilon, epsilon) -> M subset RR^n quad epsilon > 0$$
> gibt mit
> $gamma(0) = a$ und $gamma'(0) = v$
> Der **Tangentialraum** $T_a M$ and M in a besteht aus allen Tangentialvektoren an M in a.


> [!Satz] Tangentialraum
> Sei $M subset RR^n$ eine d-dimensionale Untermannigfaltigkeit und $a in M$. Dan gilt.
> - $T_a M$ ist ein d dimensionaler Untervektorraum von $RR^n$
> - Sei $Phi : W -> V subset M,$ ( $W subset RR^d$ offen, $V$ offen) eine **karte** von M und $c in W$ ein Punkt mit $Phi(c) = a$. Dann bilden die Vektoren
> 	$$ (partial Phi)/(partial w_1) (c), dots, (partial Phi)/(partial w_d)(c)$$
> 	eine Pasis von $T_a M$
> - Sei $U subset RR^n$ eine offene Umgebung von $a$ und sei $g : U -> RR^(n-d)$ eine stetig diffbare Funktion mit 
> $$M inter U = {x in U | g(x) = 0}$$
und $$"Rang" D g(a) = n -d$$
Dann gilt $$T_a M = {v in RR^n | (v, nabla g_j (a)) = 0 forall j = 1, dots, n - d}$$





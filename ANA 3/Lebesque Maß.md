## Maßprobleme

> [!Definition] Schweres Maßproblem
> Finde $mu : cal(P(RR^d)) -> [0, infinity]$ mit
> 1. $mu (emptyset) = 0$
> 2. $mu(union.big_(k >= 1) A_k) = sum_(k = 1)^infinity mu(A_k)$ für $A_1, dots, A_k in cal(P)(RR^d)$ paarweise Disjukt (**sigma Additivität**)
> 3. $mu([0,1]^d) = 1$ (Normierung)
> 4. $mu(b(A)) = mu(A)$ für $A subset RR^d$, $b$ starre Bewegung

> [!Satz] Das schwere Maßproblem ist für $RR^d$, $d >= 1$ nicht lösbar
> 


> [!Definition] Leichtes Maßproblem (Inhaltsproblem)
>
>
> $mu cal(P)(RR^d) -> [0, infinity]$ mit 1. 3. 4. und 
> 	$mu (A union B) = mu(A) + mu(B)$ für $A, b subset RR^d$, $A inter B = emptyset$ (Additivität)

> [!Satz] Banach-Tarski-Paradoxon


-> Leichtes Maßproblem ist (für $d >= 3$) nicht Lösbar

## Der Jordan Inhalt

$ Q = [a_1,b_1] times dots times [a_d, b_d]$ (achsenparalleler) kompakter Quader in $RR^d$ $a_j <= b_j quad forall j$

-> $"vol"_d (Q) = Pi_(j = 1)^d (b_j - a_j)$

 > [!Definition] Jordan Messbarkeit
 > $A subset RR^d$ beschränkt, nicht leer, setze 
 > $$cal(S)_i (A) := { union.big_(k=1)^n Q_k : Q_1, dots q_n subset A "kompakte Quader"}$$
 > $$ cal(S)_a (A) := { union.big_(k=1) Q_k supset A : Q_1, dots Q_n "kompakte Quader"} $$
> - $lambda_*(A) := sup {"vol"_d (S) : S in cal(S)_i (A)}$ (innerer Jordan Inhalt)
> - $lambda^*(A) := inf {"vol"_d (S) : S in cal(S)_a (A)}$ (äußerer Jordan Inhalt)
> - $lambda^* (emptyset) = lambda_* (emptyset) := 0$
> - $A$ heißt **jordan messbar**, wenn $lambda_* (A) = lambda^* (A)$
> - $lambda (A) := lambda_* (A) = lambda^* (A)$ (**Jordan Inhalt**)
> - $A$ heißt **Jordan-Nullmenge**, falls $lambda^* (A) = 0$

(Volumenberechnung von $S$ möglich, da vereinigung von endlich vielen Quadern, die höchstens Hyperflächen gemeinsam haben)

> [!Satz] 
> Seien $A, B subset RR^d$ beschränkt. Dann  gilt:
> 1. $0 <= lambda_* (A) <= lambda^* (A) < infinity$
> 2. $A subset B => lambda_* (A) <= lambda^* (B) and lambda^* (A) <= lambda^* (B)$ (Monotonie)
> 3. Beschränkte (offene, halboffene, abgeschlossene) Quader sind Jordan-messbar und ihr Jordan-Inhalt ist das Produkt der Kantenlängen
> 4. $A$ Jordan-messbar, $epsilon > 0$, dann ex. $S_i in cal(S)_i (A), S_a in cal(S)_a (A)$ mit $0 <= "vol"_d (s_a) - "vol"_d (s_i) < epsilon$
> 5. Jede Jordan-Nullmenge ist Jordan-Messbar
> 6. $lambda_* (A^°) = lambda_* (A)$, $lambda^* (A) = lambda^* (overline(A))$

Beweis: 
Aussage 1.
- $A = emptyset$ -> trivial
- $exists x in A$, $S = {x} in S_i$ (trivialer Quader) -> $lambda_*(A) > "vol"_d ({x}) > 0$
- A beschränkt -> $exists r in RR, A subset B_r subset [-r,r]^d$ -> $lambda^*(A) < "vol"_d ([-r,r]^d) < infinity$
- $S_i in cal(S)_i (A), S_a in cal(S)_a (A)$ -> $S_i subset A subset S_a$
	finde Quader $tilde(Q_1), dots, tilde(Q_m)$ mit $S_a = S_i union tilde(Q_1) union dots$
	-> $"vol"_d (S_i) <= "vol"_d (S_a)$
	-> supremum und infimum nehmen -> ungleichung bleibt bestehen
$
Aussage 3.



Kacheln eines Dreiecks:
$sum_(n = 0)^infinity 2^n * ((1/2)^n)^2 = sum_(n = 1)^infinity 2^n * (1/2)^(2n) = 1/2$

Allgemein:
Zu $n in NN_0$ betr. Würfel $Q = 10^(-n) (p + w)$ $p in ZZ^d$ $W = [0,1]^d$
Nenne $Q$ **Würfel n-ter Stufe**

Zu beschr. $A in RR^d$ betrachte
$W_n (A) := {Q : Q subset A "Würfel nter Stufe"}$
$W^n (A) := {Q : Q inter A eq.not emptyset "Würfel nter Stufe"}$

$$ union.big_(Q in W_n (A)) Q subset union.big_(Q in W_(n+1) (A)) Q subset A subset union.big_(Q in W^(n+1) (A)) Q subset union.big_(Q in W^(n)) Q $$
Sei $A_n := W_n (A)$ und $A^n := W^n (A)$

$\# W_n (A) 10^(-n d) =  "vol"_d (A_n) <= lambda_* (A) <= lambda^* (A) <= "vol"_d (A^n) = \# W^n (A) 10^(-n d)$

> [!lemma]
> $A in RR^d$ beschränkt
> Dann gitl:
> $a_n := "vol"_d (A_n) arrow.tr lambda_* (A)$, $b_n := "vol"_d (A^n) arrow.br lambda^* (A)$ für $n -> infinity$ 

Beweis:
- $(a_n)_n$ monoton wachsend und nach oben durch $lambda_* (A) < infinity$ beschränkt
-> $a = lim_(n -> infinity) a_n <= lambda_* (A)$
- zu zeigen: $a >= lambda_* (A)$
- zu $epsilon > 0$ finde $S in cal(S)_i (A)$ mit $lambda_* (A) - "vol"_d (S) < epsilon/2$
	$S = Q_1 union dots union Q_k$ (paarweise disjunkt bis auf Hyperflächen)
	Für $n_0$ hinreichend groß verkleinere die $Q_k$ zu $tilde(Q_k)$ mit Eckpunkten in $10^(-n_0) ZZ^d$
	und $"vol"_d (tilde(Q_1) union dots union tilde(Q_k)) >= "vol"_d (S) - epsilon /2$
	$tilde(Q_1) union dots union tilde(Q_k) = tilde(S) subset A_n_0$ -> $"vol"_d(A_n_0) >= "vol"_d (tilde(S)) >= lambda_* (A) - epsilon$
	-> $a_n >= lambda_* (A) - epsilon quad forall n >= n_0$
	Analog: $b_n -> lambda^* (A)$


> [!lemma]
> $U subset RR^d$ offen, $x in U$, $y in.not U$. Dann enthält $|x,y| = { (1-t)x + t y : 0 <= t <= 1}$ (Strecke von x nach y) einen Randpunkt von $U$
> (Mit $(1-t)x + t y =: gamma(t)$)

Beweis:
- $B_epsilon (x) subset U$ für $epsilon > 0$ hinreichend klein -> für hienreichend kleine $t$ liegt $gamma(t) in U$
- $T := sup {t in [0,1], |x,gamma(t)| subset U}$
- $gamma(T) in.not U$ da: 
	- Falls $T = 1$ ist $gamma(T) = y in.not U$
	- Falls $T < 1$ und $gamma(T) in U$, dann auch: $gamma(T + delta) in U$ für $delta$ klein (Weil $U$ offen ist)
- Also: $gamma(T)$ ist Randpunkt von $U$, denn jede Umgebung von $gamma(T) enthält $gamma(T) in.not U$ und $gamma(T - delta) in U$ -> basst 

> [!lemma]
> $A subset RR^d$ bel. $C subset RR^d$ konvex, $A inter C eq.not emptyset$.
> Dann gilt enteder
> - $C subset A^°$
> - oder $C inter partial A eq.not emptyset$

Bew:
- (i) und (ii) nicht gleichzeitig richtig
- Annahme: (i) ist falsch
	Fall 1: $A inter C subset partial A inter C$
	Fall 2: $exists x in A^° inter C subset A^°$ und $exists y in C \\ A^° (y in.not A^°)$ 
	-> $|x,y| in C$ enthält nach Lemme vorher einen Randpunkt von $A$


> [!Satz]
> $A,B subset RR^d$ beschränkt.
> - $lambda_* (A) + lambda^* (partial A) = lambda^* (A)$
> - $lambda^* (A union B) <= lambda^* (A) + lambda^* (B)$ ($lambda^*$ ist subadditiv)
> - $A^° inter B^° = emptyset => lambda_* (A union B) >= lambda_* (A) + lambda_* (B)$

Beweis:
1. $Q in W^n (overline(A))$ konvex
	-> Lemma vorher: entweder:
	$Q in W_n (A^°)$ oder $Q in W^n (partial A)$
	-> $"vol"_d ((A^°)_n) + "vol"_d ((partial A)^n) = "vol"_d (overline(A)^n)$
	-> Für $n -> infinity$: $"vol"_d ((A^°)_n) = lambda_*(A)$
	(TODO des andere konvergiert auch)
	-> $lambda^* (overline(A)) = lambda^*(A)$$
	=> $lambda_* (A) + lambda^* (partial A) = lambda_*(A)$


> [!Satz]
> $A subset RR^d$ beschr. Dann ist $A$ Jordan-Messbar, gdw. $lambda^* (partial A) = 0$

Bew.
Aussage 1 aus dem oberen Satz

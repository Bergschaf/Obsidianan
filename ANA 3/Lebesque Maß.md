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




 
 
 
 
 




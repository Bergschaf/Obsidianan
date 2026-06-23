> [!Definition] Polynom
> - Sei $(R, +, dot)$ ein kommutativer Ring mit Eins
> - Jedes Element von $(R^(NN_0))_"00"$ heißt ein **Polynom über R**
> - **Addition** wird gliederweise addiert: Sei $p = (alpha_n)_(n in NN_0)$ und $q = (beta_n)_(n in NN_0)$ endlich getragene Folgen in R, so ist $$p + q := (alpha_n + beta_n)_(n in NN_0)$$
> - **Multiplikation** durch **Faltung**: $$p dot q := sum_(k=0)^n alpha_k dot beta_(n - k)$$
> - Man sagt **Polynomring über dem Koeffizientenring R** zu $((R^(NN_0)), + , dot)$

Nullpolynom: $(0,0,dots)$
Additives Inverses: Negation der Koeffizienten
Einselement:  $(1, 0,0, dots)$
**Einbettung des Koeffizientenrings in den Polynomring**:
	$$ i : R -> (R^(NN_0))_00 := alpha mapsto (alpha, 0, 0, dots) $$
(man nennt die Elemente des Bilds der Einbettung **konstante Polynome**)	
**Äußere Multiplikation**: $alpha_0 dot q := i(alpha_0) dot q = (alpha_0 dot beta_0, dots, alpha_0, dot beta_n, 0,0, dots)$


**Grad** eines Polynoms $p$ ist definiert als:
$$deg(p) := cases(-infinity quad quad "falls" p = 0,  max{j in NN_0 , | alpha_j eq.not 0})$$

$deg(p + q) <= max(deg(p), deg(q))$
$deg(p dot q) <= deg(p) + deg(q)$
$R$ nullteilerfrei ${} => deg(p dot q) = deg(p) + deg(q)$

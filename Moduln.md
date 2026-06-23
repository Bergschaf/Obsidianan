> [!Definition]
> Sei $(R, +, dot)$ ein kommutativer Ring. Ein **R-Modul** $(M, +, dot)$ hat 
> $$+ : M times M -> M$$
> $$dot : R times M -> M$$
> (gemischtes Assoziativgesetz und Distributivgesetz)
> + $(M, +)$ abelsche Gruppe
> + $M$ heißt **unitärer Modul**, wenn $exists 1 in R$, mit $1 dot u = u quad forall u in M$


> [!Definition]
> Eine Abbildung $f : M_1 -> M_2$ heißt ein **Homomorphismus von Moduln** wenn gilt:
> $$f (u + v) = f(u) + f(v) quad forall u,v in M_1$$
> $$ f(alpha dot u) = alpha dot f(u) forall u in M_1, forall alpha in R$$

### Freie Moduln

$alpha dot u = 0$ impliziert nicht notwenidgerweise $alpha = 0 or u = 0$

> [!Definition]
> Ein unitärer R-Modul $(M, +, dot)$ heißt **frei**, wenn es ein linear unabhängiges Erzeugendensystem (eine **Basis**) gibt.
> (endlich frei falls es eine endliche Basis gibt)

Jeder Vektor lässt sich eindeutig aus dem Basiselementen linearkombinieren

> [!Satz] 
> Sei $R$ kommutativer Ring **mit Eins**, der **nicht der Nullring ist**. Sei $(M, +, dot)$ ein endlich freier, unitärer R-Modl. Dann haben alle Basen von M dieselbe endliche Kardinalität

Dann ist M isomorph zum Standartmodul $R^n$ mit der Kardinalität n einer beliebigen Basis von M. (**Rang**)

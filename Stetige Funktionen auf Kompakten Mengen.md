> [!Satz]
> Seien $(X, d_X)$ und $(Y,d_y)$ zwei metrische Räumen $K subset X$ kompakt und $f : K -> Y$ stetig. Dann ist ${} f(K)subset Y$ kompakt


> [!Satz] Satz vom Extremum
> -	Sei $(X,d)$ metrischer Raum $K subset X$ kompakt und $f : K -> RR$ stetig.
> 	Dann nimmt $f$ sein Maximum und Minimum an, d.h. es gibt $x_min, x_max in K$ mit 
> 	$$ f(x_min) = min_(x in K) f(x) quad f(x_max) = max_(x in K) f(x)$$
(xmin und xmax sind aber nicht zwingend eindeutig)

> [!Definition] Zusammenhängende Mengen
> $(X, d_X)$ metrischer Raum $A subset X$
> $A$ heißt **zusammenhängend**, wenn für alle offenen Teilmengen $U_1, U_2 subset X$ gilt:
> $$A inter U_1 eq.not emptyset and A subset (U_1 union U_2) and (A inter U_1) inter U_2 = emptyset => A inter U_2 = emptyset $$

> [!Satz] Stetiges Bild zusammenhängender Mengen (Analog zu Zwischenwertsatz)
> $K subset X$
> $f(K) subset Y$ ist zusammenhängend
TODO Beweis anschauen

> [!Satz] Stetigkeit der Umkehrfunktion
> Seien $(X, d_x)$ und $(Y, d_y)$ zwei metrische Räume, $K subset X$ **kompakt** und $f :  -> B subset Y$ **stetig**
> Dann ist die Umkehrfunktion ${} f^(-1) : B -> K$ stetig 

> [!Satz] Gleichmäßige Stetigkeit
> Seien X, Y metrische Räume, $F subset E subset X$ und $f : E -> Y$
> $f$ heißt **gleichmäßig stetig in $F$**, wenn es zu jedem $epsilon > 0$ ein $delta = delta(epsilon) > 0$ gibt, sodass für alle $x,y in F$ gilt
> $$ d_x(x,y) < delta => d_Y(f(x), f(y)) < epsilon$$

> [!Lipschitz Stetigkeit]
> Seien X, Y metrische Räume, $F subset E subset X$ und $f : E -> Y$
> Dann heißt $f$ **Lipschitzstetig in $F$**, falls es eine Konstante $L > 0$ gibt, sodass
> $$d_y (f(x), f(y)) < L d_x(x,y) quad forall x, y in F$$


Lipschitz stetig => gleichmäßig Stetig => Stetig


 > [!Satz] Stetige Funktionen auf kompakten Mengen sind gleichmäßig stetig
 > Sei $K subset X$ kompakt und $f : K -> Y$ stetig.
 > Dann ist $f$ gleichmäßig stetig.

 
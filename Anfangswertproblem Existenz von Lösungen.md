$$y'(t) = f(t, y(t))$$
> [!lemma] Existenz von Peano
> Die Funktion $f(t,x)$ sei stetig auf dem $(n+1)$ dimensionalen Zylinder (???)
> $$D = {(t,x) in RR times RR^n | abs(t - t_0) <= alpha, norm(x - y_0) <= beta}$$
> Dann existiert eine Lösung $y(t)$ auf dem Intervall $I := [t_0 - T, t_0 + T]$ mit 
> $$ T := min (alpha, beta/M), M := max_(t,x in D) norm((f,t(x)))$$

> TODO bedingung siehe skript

Hiflsmittel

**Gleichgradige Stetigkeit**
Sei $cal(F) subset C[a,b]$. Dann ist $cal(F)$ gleichgradig stetig, falls $forall epsilon > 0, exists delta > 0$, sodass $forall f in cal(F)$ gilt:
$$ forall t, t' in [a,b], abs(t-t') < delta => norm(f(t) - f(t')) < epsilon$$

[[Arzela-Ascoli]]


**Dreiecksugleichung für Integrale** 



> [!Satz] Fortsetzungsatz
> Sei $f(t,x)$ stetig auf $D subset RR times RR$ D, abgeschlossen, $(t_0, y_0)$ in D.
> Sei $y(t)$ Lösung der AWA auf $[t_0 - T, t_0 + T]$
Dann ist y nach links und rehcts auf ein maximales Existenzintervall $$I_max = (t_0 - T_*, t_0 + T_*)$$ 
bis zum Rand von D stetig diffbar fortsetzbar


> [!lemma] Regularitätssatz
> Sei $f in C^m (D), m >= 1$. Dann gilt $y in C^(m+1)(I)$

${} D subset RR times RR^n {}$, $f : D -> RR^n$
> [!definition] Lokale Lipschitz stetigkeit
> $f$ ist lokal lipschitz stetig bzgl $x$, falls für alle Punkte $t,x in D$ eine Umgebung $U$ existiert, s.h. $f in D inter U$ Lipschitz stetig bezüglich $x$ ist.
> TODO genaue Formel hier
TODO Bedingung mit stetig diffbar impliziert lokal lipschitz stetig
## Stabilitäts- und Eindeutigketissatz
Sei $f(t,x)$ stetig auf $D subset RR times RR^n$ und ==lokal Lipschitz stetig== bzgl $x$.
Seien $y,v$ zwei beliebige Lösungen der GLS
$$ y'(t) = f(t, y(t)) quad t in I$$
auf einem gemeinsamen Intervall $I$.
Dann gilt
$$ norm(y(t) - v(t)) <= e^(L(t-t_0)) norm(y(t_0) - v(t_0)) quad t in I, t >= t_0$$
wobei $t_0 in I$ und $L$ die Lipschitz konstante von $f(t,x)$ auf $K subset D$ mit $K$ beschränkt und $"Graph"(y) subset K, "Graph"(v) subset K$

Weiterhin:
Falls $y(t_0) = v(t_0)$ dann gilt $y(t) = v(t) quad forall t in I$
d.h. die lokale Lösung der AWA ist eindeutig bestimmt.

=>  Sagt wie float ungenauigkeit fortgepflanzt wird

## Existenzsatz von Picard Lindelöf

Sei $f : D -> RR^n$ stetig und **lokal Lipschitz-stetig** bzgl x.
Dann gilt $forall (t_0,y_0) in D, exists epsilon > 0$ und es existiert eine Lösnug
$$ y : I = [t_0 - epsilon, t_0 + epsilon] -> RR^n$$
der AWA
$$y'(t) = f(t,y(t)) quad t in I$$
$$y(t_0) = y_0$$


==TODO Beweis klausurrelevant (TOOD Claudi und Oberst Macker erinnern ;) ==

stetigkeit nicht mehr eindeutig aber existenz trotzdem (Satz von Peano)

ohne lipschitz
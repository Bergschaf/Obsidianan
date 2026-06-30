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
> $$y' (t) = f(t,y(t))$$
> Sei $f(t,x)$ stetig auf $D subset RR times RR$ D, abgeschlossen, $(t_0, y_0)$ in D.
> Sei $y(t)$ Lösung der AWA auf $[t_0 - T, t_0 + T]$
Dann ist y nach links und rehcts auf ein maximales Existenzintervall $$I_max = (t_0 - T_*, t_0 + T_*)$$ 
bis zum Rand von D stetig diffbar fortsetzbar


> [!lemma] Regularitätssatz
> $$y'(t) = f(t,y(t))$$
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

> [!Satz] TODO Picard lindelöf
==TODO Beweis klausurrelevant (TOOD Claudi und Oberst Macker erinnern ;) ==

stetigkeit nicht mehr eindeutig aber existenz trotzdem (Satz von Peano)

ohne lipschitz




> [!Satz] Existenzsatz von Picard-Lindelöf II
> Intervall $I = [a,b] subset RR$ mit $t_0 in I$
> $f : I times RR^n -> RR^n$ stetig und **(global) Lipschitz-stetig** bzgl. $x$, d.h. 
> $$ exists L > 0, abs(f(t,x_1) - f(t,x_2)) <= L abs(x_1 - x_2) quad forall t in I, x_1, x_2 in RR^n $$
> Dann hat für jedes $y_0 in RR^n$ die AWA
> $$ dot(y)(t) = f(t,y(t)) quad y(t_0) = y_0 $$
> eine eindeutige Lösung
> $$ y in C^1(I, RR^n)$$
> im gesamten Intervall $I$.


## Stabilit#t

> [!Definition] Stabilität von Lösungen von AWAs
> Sei $y(t) : [t_0, infinity) -> RR^n$ eine Lösung der AWA
> $$ y' = f(t,y) quad y(t_0)= y_0 $$
> Sei $f : (D : RR times RR^n) -> RR^n$ **lokal Lipschitz-stetig bzgl y** auf
> $$D := {(t,x) in RR times RR^n | t_0 <= t < infinity, norm(y(t) -x) < alpha} quad alpha > 0$$
> - $y(t)$ heißt **(Lyapunov-)stabil** (bzgl $t_0$), falls für jedes $epsilon > 0$ ein $delta (epsilon, t_0) > 0$ existiert,
   sodass für alle Anfangswerte $(t_0,v_0) in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** $v' = f(t,v), quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und 
   $$ norm(v(t) - y(t)) < epsilon quad forall t >= t_0$$
   > - $y(t)$ heißt **asymptotisch stabil**, falls $y(t)$ Lyapuniv-stabil ist und $delta > 0$ existiert, sodass für alle Anfagnswerte $(t_0, v_0) in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** 
   > 	$v' = f(t,v) quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und es gilt
   > 	$$ norm(v(t) - y(t)) ->^(t -> infinity) 0 $$
> - $y(t)$ heißt **exponentiell stabil** falls Konstanten $delta, alpha, A > 0$ existieren, sodass für alle Anfangswerte $(t_0, v_0)  in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** $v' = f(t,v), quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und es gilt
>  $$ norm(v(t) - y(t)) <= A e^(-alpha(t-t_0)) norm(v_0 - y_0)  quad forall t >= t_0 $$

x-stabil am Zeitpunkt $t_0$ => x-stabil am zeitpunkt $t > t_0$

> [!definition] Monotone AWA
> Die Funktion $f(t,x)$ genügt einer **Monotoniebedingung**, falls ein $lambda > 0$ existiert, sodass für alle $(t,x), (t,y) in D$ gilt:
> $$ - (f(t,x) - f(t,y)) dot (x - y) >= lambda norm(x -y)^2_2 $$
> Eine AWA die der Monotiniebedingung genügt heißt **stark monoton**


> [!Satz] Globaler Stabilitätssatz
> Sei $f(t,x)$ eine stetige AWA, **global Lipschitz-stetig** bezüglich $x$ und genüge der Monotoniebedingung.
> Dann sind alle Lösungen der AWA **global** und **expontiell stabil**, mit $delta$ beliebig und $alpha = lambda, A = 1$.
> Gilt $sup_(t >= t_0) norm(f(t,0)) < infinity$, dann sind alle Lösungen gleichmäßig beschränkt.




> [!Definition] Fixpunkt
> Sei $g : X -> X$ eine Abbildung. Ein punkt $a in X$ ist ein Fixpukt, wenn $g(a) = a$

> [!Definition] Kontraktion
> Sei $(X, d)$ ein metrischer Raum. Eine Abbildung $g : X -> X$ heißt **Kontraktion**, falls es ein $q in (0,1)$ gibt mit 
> $$d(g(x),g(y)) <= q dot d(x,y) quad forall x,y in X$$

Impliziert Lipschitz stetigkeit mit konstante $q$

> [!Definition] Banachscher Fixpunktsatz
> - Sei $(X,d)$ ein ==vollständiger== metrischer Raum
> - $D subset X$ abgeschlossen
> - $g : D -> D$ eine **Kontraktion**
> Dann gilt
> + $g$ besitzt genau einen Fixpunkt $a in D$
> + Ist $x^(0) in D$ ein bebliebiger Startwert, so konvergiert die Folge der iterationen
> 	$$x^(0), x^(1) := g(x^(0)), dots, x^(k+1) := g(x^k)$$ gegen den Fixpunkt $a$
> + Es gilt die Fehlerabschätzung
> 	$$d(a,x^(k) <= 1/(q-1)d(x^(k+1), x^(k)) <= q^k/(1-q) d(x^(1), x^(0))$$


 > [!Definition] Starke Monotonie
 > Eine Funktion $f : D subset RR^n -> RR^n$ heißt **stark monoton**, wenn eine Konstatne $m > 0$ existiert, s.d. $forall x,y in D$ gilt
 > $$(f(x)- f(y), x -y)_2 >= m norm(x-y)_2^2$$

### Nichtlineare Gleichungssysteme
Sei $f : RR^n -> RR^n$ **nichtlinear**, **lipschitz-stetig**, **stark Monoton** mit $L > 0$ und Monotoniekonstante $m> 0$

Dann hat die Gleichung $f(x) = b$
für jedes $b in RR^n$ eine eindeutige Lösung $x* in RR^n$
Für jeden Startpunkt $x^((0)) in RR$ konvergiert die Iteration
$$x^((k+1)) := x^((k)) - sigma (f(x^((k))) - b) $$
für jedes $sigma in (0,2m / L ^2)$ gegen $x*$





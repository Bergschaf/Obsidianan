
## Lineare DGLs 1. Ordnung 
$y'(t) = g(t) y(t) + h(t)$ mit $y(0) = y_0$      ($g,h$ stetig)

##### 1. Lösen des homogenen Teils 
$y'(t) = g(t)y(t)$
$$ y(t) = exp( integral^t_xi g(s) d s) =: C dot e^G(t) $$(mit $G$ stammfunktion von $g$) 
#####  2. Lösen der inhomogenen Gleichung durch "Variation der Konstanten"

Ansatz: $y(t) = C(t) dot e^G(t)$

Jetzt $C(t)$ bestimmen
$y'(t) = c'(t) e^G(t) + c(t)g(t)e^G(t)$ 

$y'(t) = g(t) c(t) e^(G(t)) +  h(t)$ (weil lösung von 1.)

$$=> c'(t) e^G(t) = h(t)$$
$$ integral^t_xi  c'(s) d s = integral^t_xi h(s) e^(-ln(s)) d s $$ (TODO passt das -ln (s))???
$c(t) = eta$

$$ phi(t) = e^G(t) (eta - integral^t_xi h(s) e^(-ln (s)) d s)$$ Lösung der DGL


## Seperation der Variablen
$$ y'(t) = a(t)g(y(t)) $$
mit $a,g : RR -> RR$ stetig.
Wenn $g(y) eq.not 0 quad forall y in RR$ kann man durch $g$ teilen und dann intergrieren (ggf intervall einschränken sodass $g eq.not 0$)

$$ integral^t_xi (y'(s))/g(y(s)) d s = integral^t_xi a(s) d s $$
substitution mit $y(s) = u$

$$ integral^(y(t))_eta 1/g(u) d u = integral^t_xi a(s) d s$$

-> implizite gleichung für $y(t)$, die wir einfach auflösen können







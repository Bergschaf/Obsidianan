#import "@preview/ankify:0.1.0": note, configure

#configure(defaults: (deck: "Obsidianan"))

#note(
  "card-0",
  data: (
    Front: "lemma: Existenzsatz von Peano",
    Back: [Die Funktion $f(t,x)$ sei stetig auf dem $(n+1)$ dimensionalen Zylinder 
 $ D = {(t,x) in RR times RR^n | abs(t - t_0) <= alpha, norm(x - y_0) <= beta} $ 
Dann existiert eine Lösung $y(t)$ auf dem Intervall $I := [t_0 - T, t_0 + T]$ mit 
 $  T := min (alpha, beta/M), M := max_((t,x) in D) norm((f,t(x))) $ ],
  ),
)

#note(
  "card-1",
  data: (
    Front: "Satz: Fortsetzungsatz",
    Back: [ $ y' (t) = f(t,y(t)) $ 
Sei $f(t,x)$ stetig auf $D subset RR times RR$,
 $D$ abgeschlossen, $(t_0, y_0) in D$.
Sei $y(t)$ Lösung der AWA auf $[t_0 - T, t_0 + T]$
Dann ist y nach links und rehcts auf ein maximales Existenzintervall  $ I_max = (t_0 - T_*, t_0 + T^*) $  
**bis zum Rand von $D$** stetig diffbar fortsetzbar
(Es kann passieren dass das Zeitintervall für $t$ unendlich ist, $norm(y(t))$ aber gegen unendlich geht für $t -> t_0 + T^*$, d.h. der Rand von $D$ nicht mit $t$ sondern mit $y(t)$ erreicht wird.)],
  ),
)

#note(
  "card-2",
  data: (
    Front: "Korollar: Globale Existenz",
    Back: [Sei $f(t,x)$ stetig auf $RR times RR^n$. Seien alle lokalen Lösungen $y(t)$ (definiert durch Satz von Peano) beschränkt durch eine stetige Funktion $rho : RR -> RR$:
 $ norm(y(t)) <= rho(t), quad t in [t_0 - T , t_0 + T] $ 
Dann ist $y$ auf ganz $RR$ fortsetzbar.],
  ),
)

#note(
  "card-3",
  data: (
    Front: "lemma: Regularitätssatz",
    Back: [Sei $y$ eine Lösung von $y'(t) = f(t,y(t))$ auf $I$ und $f in C^m (D), m >= 1$.
Dann gilt $y in C^(m+1)(I)$],
  ),
)

#note(
  "card-4",
  data: (
    Front: "definition: Lokale Lipschitz stetigkeit",
    Back: [$D subset RR times RR^n {}$, $f : D -> RR^n$
-  $f$ ist lokal lipschitz stetig bzgl $x$, falls für alle Punkte $t,x in D$ eine Umgebung $U$ existiert, s.h. $f "auf" D inter U$ Lipschitz stetig bezüglich $x$ ist.],
  ),
)

#note(
  "card-5",
  data: (
    Front: "Satz: Stabilitäts- und Eindeutigkeitssatz",
    Back: [Sei $f(t,x)$ stetig auf $D subset RR times RR^n$ und ==lokal Lipschitz stetig== bzgl $x$.

Seien $y,v$ zwei beliebige Lösungen der DGL 
 $  y'(t) = f(t, y(t)) quad t in I $ 
auf einem gemeinsamen Intervall $I$.
Dann gilt
 $  norm(y(t) - v(t)) <= e^(L(t-t_0)) norm(y(t_0) - v(t_0)) quad t in I, t >= t_0 $ 
wobei $t_0 in I$ und $L$ die Lipschitz konstante von $f(t,x)$ auf $K subset D$ mit $K$ beschränkt und $"Graph"(y) subset K, "Graph"(v) subset K$

Weiterhin:
Falls $y(t_0) = v(t_0)$, (d.h. $y$ und $v$ lösen die Gleiche AWA) dann gilt  $ y(t) = v(t) quad forall t in I $ 
d.h. die lokale Lösung der AWA ist eindeutig bestimmt.],
  ),
)

#note(
  "card-6",
  data: (
    Front: "Satz: Existenzsatz von Picard-Lindelöf",
    Back: [Sei $f : D -> RR^n$ stetig und **lokal Lipschitz-stetig** bzgl x.
Dann gilt $forall (t_0,y_0) in D, exists epsilon > 0$ und es existiert eine Lösnug
 $  y : I = [t_0 - epsilon, t_0 + epsilon] -> RR^n $ 
der AWA
 $ y'(t) = f(t,y(t)) quad t in I $ 
 $ y(t_0) = y_0 $ ],
  ),
)

#note(
  "card-7",
  data: (
    Front: "Satz: TODO Picard lindelöf",
    Back: [==TODO Beweis klausurrelevant (TOOD Claudi und Oberst Macker erinnern ;) ==],
  ),
)

#note(
  "card-8",
  data: (
    Front: "Satz: Existenzsatz von Picard-Lindelöf II",
    Back: [Intervall $I = [a,b] subset RR$ mit $t_0 in I$

$f : I times RR^n -> RR^n$ stetig und **(global) Lipschitz-stetig** bzgl. $x$, d.h. 
 $  exists L > 0, abs(f(t,x_1) - f(t,x_2)) <= L abs(x_1 - x_2) quad forall t in I, x_1, x_2 in RR^n  $ 
Dann hat für jedes $y_0 in RR^n$ die AWA
 $  dot(y)(t) = f(t,y(t)) quad y(t_0) = y_0  $ 
eine eindeutige Lösung
 $  y in C^1(I, RR^n) $ 
im gesamten Intervall $I$.],
  ),
)

#note(
  "card-9",
  data: (
    Front: "Definition: Stabilität von Lösungen von AWAs",
    Back: [Sei $y(t) : [t_0, infinity) -> RR^n$ eine Lösung der AWA
 $  y' = f(t,y) quad y(t_0)= y_0  $ 
Sei $f : D -> RR^n$ **lokal Lipschitz-stetig bzgl y** auf
 $ D := {(t,x) in RR times RR^n | t_0 <= t < infinity, norm(y(t) -x) < alpha} quad alpha > 0 $ 
- $y(t)$ heißt **(Lyapunov-)stabil** (bzgl $t_0$), falls für jedes $epsilon > 0$ ein $delta (epsilon, t_0) > 0$ existiert,
   sodass für alle Anfangswerte $(t_0,v_0) in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** $v' = f(t,v), quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und 
    $  norm(v(t) - y(t)) < epsilon quad forall t >= t_0 $ 
   > - $y(t)$ heißt **asymptotisch stabil**, falls $y(t)$ Lyapuniv-stabil ist und $delta > 0$ existiert, sodass für alle Anfagnswerte $(t_0, v_0) in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** 
   > 	$v' = f(t,v) quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und es gilt
   > 	 $  norm(v(t) - y(t)) ->^(t -> infinity) 0  $ 
- $y(t)$ heißt **exponentiell stabil** falls Konstanten $delta, alpha, A > 0$ existieren, sodass für alle Anfangswerte $(t_0, v_0)  in D$ mit $norm(v_0 - y_0) < delta$ die **gestörte AWA** $v' = f(t,v), quad v(t_0) = v_0$ eine Lösung $v(t) : [t_0, infinity) -> RR^n$ besitzt und es gilt
  $  norm(v(t) - y(t)) <= A e^(-alpha(t-t_0)) norm(v_0 - y_0)  quad forall t >= t_0  $ ],
  ),
)

#note(
  "card-10",
  data: (
    Front: "definition: Monotone AWA (stark Monoton)",
    Back: [Die Funktion $f(t,x)$ genügt einer **Monotoniebedingung**, falls ein $lambda > 0$ existiert, sodass für alle $(t,x), (t,y) in D$ gilt:
 $  - chevron.l f(t,x) - f(t,y) ,x - y chevron.r_2 >= lambda norm(x -y)^2_2  $ 
Eine AWA die der Monotiniebedingung genügt heißt **stark monoton**],
  ),
)

#note(
  "card-11",
  data: (
    Front: "Satz: Globaler Stabilitätssatz",
    Back: [Sei $f(t,x)$ eine stetige AWA, **global Lipschitz-stetig** bezüglich $x$ und genüge der Monotoniebedingung.
Dann sind alle Lösungen der AWA **global** und **expontiell stabil**, mit $delta$ beliebig und $alpha = lambda, A = 1$.
Gilt $sup_(t >= t_0) norm(f(t,0)) < infinity$, dann sind alle Lösungen gleichmäßig beschränkt.],
  ),
)

#note(
  "card-12",
  data: (
    Front: "Definition: Fixpunkt",
    Back: [Sei $g : X -> X$ eine Abbildung. Ein punkt $a in X$ ist ein Fixpukt, wenn $g(a) = a$],
  ),
)

#note(
  "card-13",
  data: (
    Front: "Definition: Kontraktion",
    Back: [Sei $(X, d)$ ein metrischer Raum. Eine Abbildung $g : X -> X$ heißt **Kontraktion**, falls es ein $q in (0,1)$ gibt mit 
 $ d(g(x),g(y)) <= q dot d(x,y) quad forall x,y in X $ ],
  ),
)

#note(
  "card-14",
  data: (
    Front: "Definition: Banachscher Fixpunktsatz",
    Back: [- Sei $(X,d)$ ein ==vollständiger== metrischer Raum
- $D subset X$ abgeschlossen
- $g : D -> D$ eine **Kontraktion**
Dann gilt
+ $g$ besitzt genau einen Fixpunkt $a in D$
+ Ist $x^(0) in D$ ein bebliebiger Startwert, so konvergiert die Folge der iterationen
	 $ x^(0), x^(1) := g(x^(0)), dots, x^(k+1) := g(x^k) $  gegen den Fixpunkt $a$
+ Es gilt die Fehlerabschätzung
	 $ d(a,x^(k) <= 1/(q-1)d(x^(k+1), x^(k)) <= q^k/(1-q) d(x^(1), x^(0)) $ ],
  ),
)

#note(
  "card-15",
  data: (
    Front: "Definition: Riemann Integrierbarkeit",
    Back: [Eine Funktion $f : [a,b] -> CC$ heißt **Riemann-integrierbar** auf $[a,b] subset RR$ falls $Re(f)$ und $Im(f)$ R-integierbar sind. Man setzt
 $  integral_a^b f(x) d x := integral_a^b Re(f) d x + i integral_a^b Im(f) d x  $ ],
  ),
)

#note(
  "card-16",
  data: (
    Front: "Definition: Stückweise-Stetigkeit",
    Back: [Eine Funktion $f : [a,b] -> KK$ heißt **stückweise stetig**, falls
+ $f$ in [a,b] beschränkt und bis auf endlich viele Stellen stetig ist
+ an jeder Unstetigkeitsstelle $xi in [a,b]$ die links- bz.w rechtsseiteigen Grenzwerte existieren:
  $ f(xi plus.minus) := lim_(h arrow.b 0) f (xi plus.minus h) $ ],
  ),
)

#note(
  "card-17",
  data: (
    Front: "Definition: Sesquilinearform (-> $L^2$-Skalarprodukt)",
    Back: [$f, g in cal(R)[a,b]$
 $  (f,g) := integral_a^b f(x)overline(g(x))d x $ 
linear im ersten argument und konjugiert linear im anderen:
- $(f, alpha g_1 + beta g_2) = overline(alpha) (f,g_1) + overline(beta) (f, g_2)$
  $  (f,g) = overline((g,f)) $ 
$(f,f) = 0 => f = 0 "auf" [a,b]$
(Da f an unstetigkeitsstellen auf die hälfte des linken und rechten Grenzwerts gesetzt wurde)],
  ),
)

#note(
  "card-18",
  data: (
    Front: "definition: L²-Norm auf R[a,b]",
    Back: [ $  norm(f)_2 := sqrt((f,f)) = (integral_a^b f(x) overline(f(x))d x)^(1/2) $ ],
  ),
)

#note(
  "card-19",
  data: (
    Front: "lemma: **Gleichmäßige Konvergenz impliziert L² Konvergenz**",
    Back: [ $ norm(f_n - f)^2_infinity -> 0 => norm(f_n - f)_2^2 -> 0 $ ],
  ),
)

#note(
  "card-20",
  data: (
    Front: "lemma: Auf $2pi$ periodizität reduzieren",
    Back: [Sei $f(x + L) = f(x) quad forall x$, dann ist $tilde(f)(x) = f(L/2pi x)$ $2pi$-Periodisch],
  ),
)

#note(
  "card-21",
  data: (
    Front: "Definition: Partielle Ableitung",
    Back: [Sei $D subset RR^n$ offen und $f : D -> RR$ Partielle Ableitung.
- $f$ heißt im Punkt $x in D$ **partiell Differenzierbar** nach i-ter Koordinatenrichtung, falls der Grenzwert existiert:
	  $ partial f(x) := lim_(h -> 0) (f (x + h dot e^((i))) - f(x))/h $ 
- $f$ heißt partiell differenzierbar in $x in D$, falls $partial_i f(x)$ für alle $1 <= i <= n$ existiert
- Falls $partial_i f(x)$ stetig, dann ist f stetig partiell differenzierbar],
  ),
)

#note(
  "card-22",
  data: (
    Front: "Satz: Stetigkeitsbedingung über partielle Ableitungen",
    Back: [Für $x in D$ gelte: $exists B_R (x) subset D$ sodass die partiellen Ableitungen $partial_i f(y),i = 1, dots, n$ beschränkt sind $forall in B_R(x)$, d.h.
 $  sup_(y in B_R(x)) abs(partial_i f(y)) <= M, quad forall i $ 
Dann ist $f$ stetig im Punkt $x$],
  ),
)

#note(
  "card-23",
  data: (
    Front: "Satz: Vertauschbarkeit der Differentationsreihenfolge",
    Back: [Sei $D subset RR^n$ offen und $f : D -> RR$ zweimal **stetig** partiell differenzierbar in einer Umgebung $B_R(x) subset D$ eines Punktes $x in D$. Dann gilt:
 $  partial_i partial_j f(x) = partial_j partial_i f(x), quad forall i j  $ ],
  ),
)

#note(
  "card-24",
  data: (
    Front: "Definition: Gradient",
    Back: [ $  nabla f(x) := vec(partial_1 f(x), dots.v, partial_i f(x))  $ ],
  ),
)

#note(
  "card-25",
  data: (
    Front: "Definition: Hesse Matrix",
    Back: [$f : D in RR^n -> RR$ zweimal partiell differenzierbar
  $  H_f(x) := nabla^2 f(x)  := (partial_i partial_j)_(i,j in [1, n]) quad in RR^(n times n) = mat((partial f)/(partial_1 partial_1), dots, (partial f)/(partial_1 partial_n); dots.v, dots.down, dots.v; (partial f)/(partial_n partial_1), dots,(partial f)/(partial_n partial_n)) $ 
Erklärung warum ${} nabla^2$: $H_f (x) = nabla * (nabla f(x))^T$],
  ),
)

#note(
  "card-26",
  data: (
    Front: "Definition: Jacobi Matrix",
    Back: [$f : D in RR^n -> RR^m$ partiell diffbare Vektorfunktion
 $  J_f (x) := mat(partial_1 f_1, dots, partial_n f_1; dots.v , dots.down, dots.v ; partial_1 f_m, dots,  partial_n f_m)  $ ],
  ),
)

#note(
  "card-27",
  data: (
    Front: "Definition: Totale Ableitung",
    Back: [$f : D -> RR^m$
$f$ heißt im Punkt $x in D$ **total differenzierbar**, falls es eine lineare Abbildung $A : RR^n -> RR^m$ gibt, sodass
 $  lim_(h -> 0, h eq.not 0) (f(x + h) - f(x) - A dot h)/norm(h) = 0 $ 
$A$ heißt das **Differential** von $f$ im Punkt $x$.       ($D f(x_0))$)],
  ),
)

#note(
  "card-28",
  data: (
    Front: "Satz: Differenzierbarkeit und Jacobi Matrix",
    Back: [- Sei $f : D in RR^n -> RR^m$ in $x in D$ diffbar, dann ist $f$ partiell diffbar und $D f(x) = J_f (x)$ (__Jacobi Matrix__)
- Sei $f$ partiell diffbar in einer Umgebung von $x in D$ und die partiellen Ableitungen stetig in $x$, dann ist $f$ diffbar in $x$],
  ),
)

#note(
  "card-29",
  data: (
    Front: "Korollar: stetig partiell diffbar impliziert",
    Back: [stetig partiell diffbar -> (total) diffbar -> partiell diffbar],
  ),
)

#note(
  "card-30",
  data: (
    Front: "Satz: Kettenregel für Differentiale",
    Back: [$D_f subset RR^n$ und $D_g subset RR^m$ offen, $g : D_g -> RR^n$ $f : D_f -> RR^f$ Abbildungen.
Falls g im Punkt $x in D_g$ und $f$ im Punkt $y = g(x) in D_f$ diffbar sind, gilt:
${} h = f compose g {}$ ist diffbar und 
 $  D_x h(x) = (D_x f) (g(x)) D_x (g(x))  $ 
 $  D_x h(x) in RR^(r times m) quad (D_x f)(g(x)) in RR^(r times n) quad D_x g(x) in RR^(n times m) $ ],
  ),
)

#note(
  "card-31",
  data: (
    Front: "Definition: Richtungsableitung",
    Back: [$D subset RR^n$ offen, $f : D -> RR$ imp Unkt $x in D$ diffbar.
Dann gilt $forall v in RR^n$ mit $norm(v)_2 = 1$ , dass die Ableitungs in Richtung $v$ (**Richtungsableitung**) existiert:
 $  (partial f)/(partial v) (x) = lim_(t arrow.br 0) ( f(x + t v) - f(x))/t $ 
und  $  (partial f)/(partial v)(x) = (nabla f(x), v)_2 $ ],
  ),
)

#note(
  "card-32",
  data: (
    Front: "Satz: Mittelwertsatz für Vektorfunktionen",
    Back: [Sei $f : D -> RR^m$ **stetig diffbar** , $x in D$ und **$h in RR^m$**
s.d. ${x + t + h | RR^n | t in [0,1]} subset D$ (**konvexe Menge**)
 $ f(x + h) - f(x) = (integral_0^1 J_f (x + s * h) d s) * h  $ 
(Integral von der matrix $in KK^(m times n)$ komponentenweise und dann matrixprodukt mit h)],
  ),
)

#note(
  "card-33",
  data: (
    Front: "Korollar: Stetig differenzierbare Funktionen sind Lipschitz stetig",
    Back: [Seien $D subset RR^n$ offen, $f : D -> RR^m$ stetig diffbar, $x in D$ und $epsilon > 0$ sodass $B_epsilon(x) subset D$
Es gilt:
$f$ ist **lokal Lipschitz stetig**: 
 $  norm(f(y) - f(x))_2 <= M norm(y - x)_2 quad forall y in B_epsilon(x) $ 
mit $M := sup_(z in B_epsilon(x)) norm(J_f(z))_2$
(Falls $D$ **konvex** ist und $M < infinity$, ist $f$ auf ganz $D$ Lipschitz stetig)],
  ),
)

#note(
  "card-34",
  data: (
    Front: "lemma: Lemma von Gronwall",
    Back: [Sei $w(t) >= 0$ stückweise stetig und genüge für $a,b in RR$ die Integralungleichung
 $  w(t) <= a integral^t_t_0 w(s) d s + b, quad t >= t_0 $ 
Dann gilt
 $  w(t) <= e^(a(t-t_0))b, quad t>= t_0 $ ],
  ),
)

#note(
  "card-35",
  data: (
    Front: "definition: Eigenwerte und Eigenvektoren",
    Back: [$v in RR^n \\ {0}$ heißt **Eigenvektor** der Matrix $A in RR^(n times n)$ zum **Eigenwert** $lambda in RR$, wenn $A v = lambda v$],
  ),
)

#note(
  "card-36",
  data: (
    Front: "Definition: Differentialgleichungen",
    Back: [Implizite Form: $F(t, y, y',dots, y^((n))) = 0$
Explizite Form: $y^(n) = f(t, y, y', dots, y^(n-1))$],
  ),
)

#note(
  "card-37",
  data: (
    Front: "Definition: System von DGLs 1. Ordnung",
    Back: [Sei $D = I times Omega subset R times RR^n$, $f : D -> RR^n$ stetig. Dann heißt
 $ (*) quad quad y' = f(t,y) $ 
ein **System von $n$ Differentialgleichungen 1. Ordnung**
- Eine Lösung von $(*)$ ist eine diffbare FUnktion $y : I -> RR^n$ mit 
	- $"Graph"(y) := {(t,y(t) in RR times RR^n | t in I)} subset D$
	- $y'(t) = f(t,y(t)) quad forall t in I$],
  ),
)

#note(
  "card-38",
  data: (
    Front: "Definition: Anfangswertproblem",
    Back: [$y' = f(t,y), quad forall t in I$
$y(t_0) = y_0$
Gesucht wird eine diffbare Funktion $y : I -> RR^n$ mit
- $"Graph"(y) subset D$
- $y'(t) = f(t,y(t)) quad t in I$
 > - $y(t_0) = y_0$],
  ),
)

#note(
  "card-39",
  data: (
    Front: "lemma: DGL <=> Integralgleichung",
    Back: [Sei $D subset R times RR^n$, $f : D -> RR^n$ stetig, $(t_0, y_0) in D$ und $y : I -> RR^n$ stetig mit ${} "Graph"(y) subset D {}$, $t_0 in I$. Dann ist äquivalent:
- $y$ löst $y' = f(t,y)$ und $y(t_0) = y_0$
- $y(t) = y_0 + integral^t_t_0 f(s, y(s)) d s$],
  ),
)

#note(
  "card-40",
  data: (
    Front: "Satz: Multiplikatorregel von Lagrange",
    Back: [Notwendige Bed. 1. Ordnung für lokales Minimum unter Nebenbedingungen
$f : D -> RR$, $g : D -> RR^k$ partiell stetig diffbar
Sei 
- $hat(x) in D$ ein Extremum unter der Nebenbedingung $g(x) = 0$ und
- Gradienten $nabla g_1(hat(x)), dots, nabla g_k (hat(x))$ linear unabhängig in $RR^n$
Dann gilt
 $  exists hat(lambda) = vec(hat(lambda_1), dots.v, hat(lambda_k)) in RR^k quad "mit" sum_(i=1)^k hat(lambda_i) nabla g_i (hat(x)) = nabla f(hat(x)) <=> nabla g(hat(x)) hat(lambda) = nabla f(hat(x))  $ ],
  ),
)

#note(
  "card-41",
  data: (
    Front: "Definition: Lokales Minimum/Maximum",
    Back: [$x in D$ heißt **lokales Minimum/Maximum**, falls eine Umgebung $B_delta(x) subset RR^n$ von x existiert mit 
 $  f(x) <= f(y) quad forall y in B_delta(x) $ 
(strikt falls $<$)],
  ),
)

#note(
  "card-42",
  data: (
    Front: "Satz: Notwendige Bedingung für lokales Extremum",
    Back: [$f : D -> RR$ stetig diffbar
 $  x "lokales Extremum " => nabla f = 0 $ ],
  ),
)

#note(
  "card-43",
  data: (
    Front: "Satz: Hinreichende Bedingung für lokales Extremum",
    Back: [$f in C^2(D, RR)$ und $x in D$ mit $nabla f(x) = 0$
+ $H_f (x)$ positiv definit => $x$ ist striktes lokales Minimum 
+ $H_f (x)$ negativ  definit => $x$ ist striktes lokales Maximum
+ $H_f (x)$ indefinit => $x$ kein lokales Extremum],
  ),
)

#note(
  "card-44",
  data: (
    Front: "Definition: positiv definit",
    Back: [Symm. Matrix $A$.
$A$ ist **positiv definit** falls $(x, A x)_2 > 0 quad forall x eq.not 0$ (=> alle Eigenwerte > 0)],
  ),
)

#note(
  "card-45",
  data: (
    Front: "Definition: Fourier Reihe",
    Back: [ $ c_k (f) := 1/(2pi) (f, e^(i k x)) =  1/(2pi) integral_0^(2pi) f(x) e^(i k x) d x $ 

Alternative Darstellung:
 $  a_0 / 2 + sum_(k = 1)^infinity (a_k cos(k x) + b_k sin(k x))  $ 
mit $a_k = 1/pi integral_0^(2pi) f(x) cos(k x) d x$, $b_k = 1/pi integral_0^(2 pi) f(x) sin(k x) d x$],
  ),
)

#note(
  "card-46",
  data: (
    Front: "lemma: Umrechnung reelle-komplexe fourier koeffizienten",
    Back: [$c_0 = 1/2 a_0$, $c_k = 1/2 (a_k - i b_k)$ $c_(-k) = 1/2(a_k + i b_k)$],
  ),
)

#note(
  "card-47",
  data: (
    Front: "Definition: n-te Partialsumme",
    Back: [ $ s_n (f) := sum_(k = -n)^n c_k e^(i k x) $ ],
  ),
)

#note(
  "card-48",
  data: (
    Front: "Lemma: Fehlerformel von fourier Reihe",
    Back: [$f in cal(R)[0, 2pi]$ $2pi$ periodisch.
 $ norm(f - s_n (f))^2_2 = norm(f)^2_2 - 2pi sum_(k = -1)^n abs(c_k)^2 $ ],
  ),
)

#note(
  "card-49",
  data: (
    Front: "Lemma: Besselsche Ungleichung",
    Back: [ $  2pi sum_(k = - infinity)^infinity abs(c_k)^2 <= norm(f)^2_L^2 $ ],
  ),
)

#note(
  "card-50",
  data: (
    Front: "Satz: $L^2$ Konvergenz von Fourier Reihe",
    Back: [ $ norm(f)^2 = 2 pi sum_(k = - infinity)^infinity abs(c_k)² $ ],
  ),
)

#note(
  "card-51",
  data: (
    Front: "Satz: Gleichmäßige Konvergenz von Fourier Reihen",
    Back: [Sei $f : RR -> CC$ eine $2pi$-periodische, stetige Funktion, die *stückweise stetig differenzierbar* ist.
Dann konvergiert die Fourier-Reihe von $f$ gleichmäßig gegen $f$],
  ),
)

#note(
  "card-52",
  data: (
    Front: "lemma: Unterschied Fourier <-> Taylor",
    Back: [- Taylor approximiert lokal, Fourier global (für periodische funktionen)
- Für Fourier muss die funktion nicht $C^infinity$ sein],
  ),
)

#note(
  "card-53",
  data: (
    Front: "Definition: Punktweise Konvergenz",
    Back: [-	 $ f_k (x) -> f(x) "für " k -> infinity quad forall x in E $ ],
  ),
)

#note(
  "card-54",
  data: (
    Front: "Definition: Gleichmäßige Konvergenz",
    Back: [ $ forall epsilon > 0, exists k* in NN, "sodass" quad norm(f_k (x) - f(x)) < epsilon quad forall k >= k* quad forall x in E $ ],
  ),
)

#note(
  "card-55",
  data: (
    Front: "Satz: Satz der Impliziten Funktionen",
    Back: [Sei $X subset RR^n$ offen, $Y subset RR^m$ offen, $F in C^1(X times Y, RR^m)$ 
**stetig diffbar** und $(hat(x), hat(y)) in X times Y$ mit $F(hat(x), hat(y)) = 0$.
Die $m times m$ matrix $D_y F(x,y)$ sei im Punkt $(hat(x), hat(y))$ invertierbar.
+ Es existieren die offenen Umgebungen $U(hat(x)) subset X, U(hat(y)) subset Y$ und eine stetige Funktion $f : U(hat(x)) -> U(hat(y))$ s.h.
	 $ F(x,f(x)) = 0 quad forall x in U(hat(x)) $ 
+ $f$ ist **eindeutig** bestimmt, d.h
	 $ F(x,y) = 0 quad forall (x,y) in U(hat(x)) times U(hat(y)) <=> y = f(x) $ 
+ $f$ ist in $hat(x)$ **stetig diffbar** und ${} J_f (hat(x)) = D_x f(hat(x)) in RR^(m times m) {}$ ist  $ D_x f(hat(x)) = - (D_y F(hat(x), hat(y)))^(-1) D_x F(hat(x), hat(y)) $ ],
  ),
)

#note(
  "card-56",
  data: (
    Front: "Definition: ",
    Back: [$D subset R^n$ heißt **konvex**, genau dann, wenn 
 $  forall x, x' in D, lambda in [0,1], lambda x + (1- lambda)x' in D' $ 
(Alle Punkte auf der Verbindungslinie sind in der Menge)],
  ),
)

#note(
  "card-57",
  data: (
    Front: "Untermannigfaltikgeit (reguläre Nullstellenmenge): ",
    Back: [Eine Teilmegne $M subset RR^n$ heißt $d$-dimensionale **untermannigfaltigkeit** der Klasse $C^l$ $(l >= 1, d <= n -1)$, wenn es zu jedem Punkt $a in M$ eine offene Umgebung $U in RR^n$ und ==$l$-mal stetig diffbare Funktionen== $g_1, dots, g_(n-d) : U -> RR$ gibt, so dass gilt
- $M inter U = {x in U : g(x) = 0}$
- $"Rang" D_g (a) = n - d$
 $  D g in RR^(n - d times n) = mat((partial g_1)/(partial x_1), dots, (partial g_1)/(partial x_n); dots, quad, dots; (partial g_(n-d))/(partial x_1), dots, (partial g_(n-d))/(partial x_n) )  $ 
 $  g : U -> RR^(n-d) $ 
d.h. M lässt sich lokal als **Nullstellenmenge** von $(n-d)$ $C^l$-Funktionen von $n$ Variablen mit linear unabhängigen Gradienten schreiben.
Bedingung:
 $  "Rang"D g(a) = n d <=> "Die Gradienten" nabla g_1, dots, nabla g_(n-d) "sind in a linear unabhängig" $ ],
  ),
)

#note(
  "card-58",
  data: (
    Front: "Untermannigfaltigkeit als Graph: ",
    Back: [Eine Teilmenge $M subset RR^n$ ist eine d-dimensionale Untermannigfaltigkeit der Klasse $C^l$ genau dann, wenn zu jedem Punkt $a in M$
offene Umgebungen  (evtl Umnumerierung der Koordinaten)
 $ U' subset RR^d "von" a' := (a_1, dots a_d)^T $ 
 $ U'' subset RR^(n-d) "von" a'' := (a_(d+1), dots, a_n)^T $ 
und eine $l$-mal stetig diffbare Abbildung $phi : U' -> U''$ gibt, so dass
 $  M inter (U' times U'') = {(x', x'') in U' times U'' : x'' = phi(x')} $ ],
  ),
)

#note(
  "card-59",
  data: (
    Front: "Untermannigfaltikgeit als $d$-dimensionale Ebene (lost): ",
    Back: [Sei $E_d subset RR^n$ die $d$ dimensionale Ebene
 $ E_d := {(x_1, dots x_n)^T in RR^n | x_(d+1) = dots = x_n = 0}  $ 
Eine Teilmenge $M subset RR^n$ ist genu dann eine $d$ dimensinale Untermannigfaltigkeit der klasse $C_l$, falls es zu jedem $a in M$ 
- eine offene Umgebungen $U(a) subset RR^n, V subset RR^n$ 
- und eine $C^l$ invertierbare Abbildung ${} F_a : U -> V {}$ gibt, sodass 
 $  F_a (M inter U) = E_d inter V $ 
d.h. durch eine lokale Koordinatentransformation der Klasse $C^l$ läßt sich M zu einer $d$-**dimensionalen Ebene** im $RR^n$ geradebiegen.],
  ),
)

#note(
  "card-60",
  data: (
    Front: "defintion: Reguläre Parametrisierung/Immersion",
    Back: [Sei $W subset RR^d$ offen
EIne stetig diffbare Abbildung $Phi : W -> RR^n$ heißt **Immersion** (oder reguläre Prametrisierung, wenn)
 $  "Rang" D Phi (w) = d quad forall w in W $ 
 $  D Phi = mat((partial Phi_1)/(partial w_1), dots, (partial Phi_1)/(partial w_d); dots, dots, dots; (partial Phi_n)/(partial w_1), dots, (partial Phi_n)/(partial w_d)) $ ],
  ),
)

#note(
  "card-61",
  data: (
    Front: "Satz: Parametrisierungssatz",
    Back: [Eine Teilmenge $M subset RR^n$ ist genau dann eine d-dimensionale Untermannigfaltig der Klasse $C$, wenn es jedem Punkt $a in M$
- eine offene Umgebung $U subset RR^n$ von a
- eine offene Teilmenge $W subset RR^d$ und
- eine Immersion $Phi : W -> RR^n$ der Klasse $C^l$ gibt die W homöomorph auf $M inter U$ abbildet.
Der Homöomorphismus $Phi : W -> (M inter U) subset RR^n$ heißt lokale **parameterdarstellung** oder **Karte** der Untermannigfaltigkeit $M$.],
  ),
)

#note(
  "card-62",
  data: (
    Front: "Definition: Tangentialraum",
    Back: [Sei ${} M subset RR^n {}$ eine Untermannigfaltigkeit und $a in M$ ein Punkt.
Ein Vektor $v in RR^n$ heißt **Tangentialvektor** an $M$ im Punkt a, wenn es eine stetig diffbare Kurve:
 $  gamma : (-epsilon, epsilon) -> M subset RR^n quad epsilon > 0 $ 
gibt mit
$gamma(0) = a$ und $gamma'(0) = v$
Der **Tangentialraum** $T_a M$ and M in a besteht aus allen Tangentialvektoren an M in a.],
  ),
)

#note(
  "card-63",
  data: (
    Front: "Satz: Tangentialraum",
    Back: [Sei $M subset RR^n$ eine d-dimensionale Untermannigfaltigkeit und $a in M$. Dan gilt.
- $T_a M$ ist ein d dimensionaler Untervektorraum von $RR^n$
- Sei $Phi : W -> V subset M,$ ( $W subset RR^d$ offen, $V$ offen) eine **karte** von M und $c in W$ ein Punkt mit $Phi(c) = a$. Dann bilden die Vektoren
	 $  (partial Phi)/(partial w_1) (c), dots, (partial Phi)/(partial w_d)(c) $ 
	eine Pasis von $T_a M$
- Sei $U subset RR^n$ eine offene Umgebung von $a$ und sei $g : U -> RR^(n-d)$ eine stetig diffbare Funktion mit 
 $ M inter U = {x in U | g(x) = 0} $ 
und  $ "Rang" D g(a) = n -d $ 
Dann gilt  $ T_a M = {v in RR^n | (v, nabla g_j (a)) = 0 forall j = 1, dots, n - d} $ ],
  ),
)

#note(
  "card-64",
  data: (
    Front: "Definition: Stetigkeit",
    Back: [Eine Funktion $F : E -> Y$ heißt stetig in $a in E$, falls für jede Folge $(x_k)_(k in NN)$ in $E$ mit $x_k ->_(k -> infinity) a$ gilt $f(x_k) ->_(k -> infinity) f(a)$],
  ),
)

#note(
  "card-65",
  data: (
    Front: "lemma: Stetige funktionen nach $RR^n$",
    Back: [Eine Funktion $f : E -> RR^n$ ist genau dann in $a in E$ stetig, wenn jede Komponente $f_1, dots, f_n$ stetig ist.],
  ),
)

#note(
  "card-66",
  data: (
    Front: "lemma: $epsilon$-$delta$ Kriterium",
    Back: [$f : E -> Y$ ist genau dann stetig in $a$, wenn für jedes $epsilon > 0$ ein $delta > 0$ existiert sodass $forall x in E$ gilt  $ abs(x-a) < delta => abs(f(x) - f(a)) < epsilon $ ],
  ),
)

#note(
  "card-67",
  data: (
    Front: "lemma: Topologisches Kriterium der Stetigkeit",
    Back: [$f : X -> Y$
- $f$ ist genau dann stetig in $a$, wenn für jede offene Umgebung ${} V_y {}$ von $y := f(a)$ eine Offene Umgebung $U_a$ von $a$ existiert mit  $ f(U) subset V $ 
- $f$ ist genau dann stetig in $X$, wnn für alle offenen Mengen $V in Omega(Y)$ das Urbild $f^(-1) in Omega(X)$ ist.
- $f$ ist genau dann stetig, wann das Urbild abgeschlossener Mengen abgeschlossen ist],
  ),
)

#note(
  "card-68",
  data: (
    Front: "Definition: ",
    Back: [Sei $(R, +, dot)$ ein kommutativer Ring. Ein **R-Modul** $(M, +, dot)$ hat 
 $ + : M times M -> M $ 
 $ dot : R times M -> M $ 
(gemischtes Assoziativgesetz und Distributivgesetz)
+ $(M, +)$ abelsche Gruppe
+ $M$ heißt **unitärer Modul**, wenn $exists 1 in R$, mit $1 dot u = u quad forall u in M$],
  ),
)

#note(
  "card-69",
  data: (
    Front: "Definition: ",
    Back: [Eine Abbildung $f : M_1 -> M_2$ heißt ein **Homomorphismus von Moduln** wenn gilt:
 $ f (u + v) = f(u) + f(v) quad forall u,v in M_1 $ 
 $  f(alpha dot u) = alpha dot f(u) forall u in M_1, forall alpha in R $ ],
  ),
)

#note(
  "card-70",
  data: (
    Front: "Definition: ",
    Back: [Ein unitärer R-Modul $(M, +, dot)$ heißt **frei**, wenn es ein linear unabhängiges Erzeugendensystem (eine **Basis**) gibt.
(endlich frei falls es eine endliche Basis gibt)],
  ),
)

#note(
  "card-71",
  data: (
    Front: "Satz: ",
    Back: [Sei $R$ kommutativer Ring **mit Eins**, der **nicht der Nullring ist**. Sei $(M, +, dot)$ ein endlich freier, unitärer R-Modl. Dann haben alle Basen von M dieselbe endliche Kardinalität],
  ),
)

#note(
  "card-72",
  data: (
    Front: "Definition: Multiindex Notation",
    Back: [Für $alpha = (alpha_1, dots, alpha_n) in NN^n_0$
- $abs(alpha) := alpha_1 + dots + alpha_n quad in NN_0$
-  $ partial^alpha f := partial_1^alpha_1 f dots partial_n^alpha_n f = (partial^abs(alpha) f)/(partial x_1^alpha_1 dots partial x_n^alpha_n) $ 
-  $ alpha! := a_1 ! dot dot dot dot alpha_n !  $ 
-  $ h^alpha := h_1^alpha_1 dot dot dot h_n^alpha_n quad in RR $ 
	für $h = (h_1, dots h_n) in RR^n$],
  ),
)

#note(
  "card-73",
  data: (
    Front: "definition: **Norm**:",
    Back: [$norm(dot) : X -> RR$  für die gilt
- **Homogen**: $norm(alpha dot x) = abs(alpha) dot norm(x)$
- **Definit**: $norm(x) >= 0 and norm(x) = 0 <=> x = 0$
- **Dreiecksungleichung** $norm(x+y) <= norm(x) + norm(y)$],
  ),
)

#note(
  "card-74",
  data: (
    Front: "Definition: Normäquivalenz",
    Back: [ $ exists m, M > 0, m norm(x)_1 <= norm(x)_2 <= M norm(x)_1 quad forall x  $ ],
  ),
)

#note(
  "card-75",
  data: (
    Front: "Definition: Polynom",
    Back: [- Sei $(R, +, dot)$ ein kommutativer Ring mit Eins
- Jedes Element von $(R^(NN_0))_"00"$ heißt ein **Polynom über R**
- **Addition** wird gliederweise addiert: Sei $p = (alpha_n)_(n in NN_0)$ und $q = (beta_n)_(n in NN_0)$ endlich getragene Folgen in R, so ist  $ p + q := (alpha_n + beta_n)_(n in NN_0) $ 
- **Multiplikation** durch **Faltung**:  $ p dot q := sum_(k=0)^n alpha_k dot beta_(n - k) $ 
- Man sagt **Polynomring über dem Koeffizientenring R** zu $((R^(NN_0)), + , dot)$],
  ),
)

#note(
  "card-76",
  data: (
    Front: "Definition: Reguläre Abbildung",
    Back: [$f : D -> RR^n$ heißt **regulär** in $hat(x) in D$, wenn $exists B_delta (hat(x)) subset D$ sodass 
- $f$ ist in $B_delta (hat(x))$ **stetig diffbar** und
- die Jacobimatrix $J_f (hat(x))$ **regulär** (also invertierbar) ist],
  ),
)

#note(
  "card-77",
  data: (
    Front: "Satz: Umkehrabbildung (lokal!) (Inverse Function Theorem)",
    Back: [Sei $f  : D -> RR^n$ **regulär** in $hat(x) in D$
Dann existiert offene Umgebung $V(hat(x)) subset D$ so, dass
- $U(hat(y)) := f(V(hat(x)))$ eine offene Umgebung von $hat(y) = f(hat(x))$ und
- $f : V(hat(x)) -> U(hat(y))$ **bijektiv** ist
Außerdem: Die Umkehrabildung $f^(-1) : U(hat(y)) -> V(hat(x))$ ist regulär in $hat(y)$ und 
 $ J_(f^(-1)) (hat(y)) = (J_f (hat(x)))^(-1) quad det J_(f^(-1)) (hat(y)) = 1/(det J_f (hat(x))) $ ],
  ),
)

#note(
  "card-78",
  data: (
    Front: "lemma: Bild offener Mengen von regulären Abbildungen",
    Back: [Ist  $f : D -> RR^n$ **regulär** und $U subset D$ offen, dann ist auch $f(U)$ offen.
(Man nennt solche Abbildungen ==offen==)],
  ),
)

#note(
  "card-79",
  data: (
    Front: "definition: Skalarprodukt",
    Back: [ $ (dot, dot) : V times V -> KK   $ 
heißt Skalarprodukt, wenn:
- Positiv **Definit**: $(v, v) >= 0 and (x,x) = 0 <=> x = 0$
- **Symmetrisch**: $(x,y) = overline((x,y))$
- **Bilinear**],
  ),
)

#note(
  "card-80",
  data: (
    Front: "Satz: Cauchy-Schwarz Ungleichung",
    Back: [$(a,b) in V$
 $ abs((a,b))^2 <= (a,a)(b,b) $ ],
  ),
)

#note(
  "card-81",
  data: (
    Front: "lemma: Cauchy-Schwarz Ungleichung Beweis",
    Back: [ $  0 <= (u - beta v, u - beta v) = (u,u) - 2 beta (u,v) + beta^2 (v,v)  $ 
Für $(v,v) eq.not 0$ -> $beta = (u,v)/((v,v))$ ->
 $  0 <= (u,u) - 2 ((u,v))^2/((v,v)) + ((u,v))^2/((v,v)) = (u,u) - ((u,v))/((v,v)) $ ],
  ),
)

#note(
  "card-82",
  data: (
    Front: "Satz: ",
    Back: [Seien $(X, d_X)$ und $(Y,d_y)$ zwei metrische Räumen $K subset X$ kompakt und $f : K -> Y$ stetig. Dann ist ${} f(K)subset Y$ kompakt],
  ),
)

#note(
  "card-83",
  data: (
    Front: "Satz: Satz vom Extremum",
    Back: [-	Sei $(X,d)$ metrischer Raum $K subset X$ kompakt und $f : K -> RR$ stetig.
	Dann nimmt $f$ sein Maximum und Minimum an, d.h. es gibt $x_min, x_max in K$ mit 
	 $  f(x_min) = min_(x in K) f(x) quad f(x_max) = max_(x in K) f(x) $ 
(xmin und xmax sind aber nicht zwingend eindeutig)],
  ),
)

#note(
  "card-84",
  data: (
    Front: "Definition: Zusammenhängende Mengen",
    Back: [$(X, d_X)$ metrischer Raum $A subset X$
$A$ heißt **zusammenhängend**, wenn für alle offenen Teilmengen $U_1, U_2 subset X$ gilt:
 $ A inter U_1 eq.not emptyset and A subset (U_1 union U_2) and (A inter U_1) inter U_2 = emptyset => A inter U_2 = emptyset  $ ],
  ),
)

#note(
  "card-85",
  data: (
    Front: "Satz: Stetiges Bild zusammenhängender Mengen (Analog zu Zwischenwertsatz)",
    Back: [$K subset X$
$f(K) subset Y$ ist zusammenhängend
TODO Beweis anschauen],
  ),
)

#note(
  "card-86",
  data: (
    Front: "Satz: Stetigkeit der Umkehrfunktion",
    Back: [Seien $(X, d_x)$ und $(Y, d_y)$ zwei metrische Räume, $K subset X$ **kompakt** und $f :  -> B subset Y$ **stetig**
Dann ist die Umkehrfunktion ${} f^(-1) : B -> K$ stetig],
  ),
)

#note(
  "card-87",
  data: (
    Front: "Satz: Gleichmäßige Stetigkeit",
    Back: [Seien X, Y metrische Räume, $F subset E subset X$ und $f : E -> Y$
$f$ heißt **gleichmäßig stetig in $F$**, wenn es zu jedem $epsilon > 0$ ein $delta = delta(epsilon) > 0$ gibt, sodass für alle $x,y in F$ gilt
 $  d_x(x,y) < delta => d_Y(f(x), f(y)) < epsilon $ ],
  ),
)

#note(
  "card-88",
  data: (
    Front: "Lipschitz Stetigkeit: ",
    Back: [Seien X, Y metrische Räume, $F subset E subset X$ und $f : E -> Y$
Dann heißt $f$ **Lipschitzstetig in $F$**, falls es eine Konstante $L > 0$ gibt, sodass
 $ d_y (f(x), f(y)) < L d_x(x,y) quad forall x, y in F $ ],
  ),
)

#note(
  "card-89",
  data: (
    Front: "note: Definition #definition",
    Back: [Eine lineare Abbildung $f : V -> W$ von normierten VR $(V, norm( dot)_V)$ und $(W, norm(dot)_W)$  ist stetig, wenn die Operatornorm
 $ norm(f)_"op" := sup_(x in V \\ {0}) norm(f(x))_W /norm(x)_V = sup_(x in V \\ {0} "mit" norm(x) = 1) norm(f(x))_W  $ 
**endlich ist**.],
  ),
)

#note(
  "card-90",
  data: (
    Front: "Satz: Stetigkeit linearer Abbildungen",
    Back: [$A : V -> W$
$A$ ist genau dann stetig, wenn es eine Konstante $C in (0, infinity)$ gibt mit 
 $ norm(A(x))_W <= C norm(x)_V quad forall x in V $ ],
  ),
)

#note(
  "card-91",
  data: (
    Front: "Satz: ",
    Back: [$x in D$, $h in RR^n$ mit ${x + t h | t in [0,1]} subset D$ und $f in C^(r+1)(D, RR)$
Dann existiert ein $theta in [0,1]$ sodass
 $  f(x+h) = f(x) + sum_(j=1)^r 1/k! sum_(i_1, dots, i_k = 1)^n (partial^k f)/(partial_i_k, dots, partial_i_1) (x) dot h_i_1 dot dot dot h_i_k + "Restglied" $ 
 $  f(x + h) = sum_(abs(alpha) <= r) (partial^alpha f(x))/(alpha!) h^alpha + sum_(abs(alpha) = r + 1) (partial^alpha f(x + theta h))/alpha! h^alpha $ ],
  ),
)

#note(
  "card-92",
  data: (
    Front: "lemma: Erste und zweite Mehrdimensionale Taylor-Entwicklung",
    Back: [$f in C^1(D, RR)$, $x in D$, $h in RR^n$ mit $x + t h in D quad forall t in [0,1]$
 $  f(x+h) = f(x) + (nabla f(x), h )_2 + omega_1(x,h), quad "mit" (omega_1(x,h))/norm(h) ->_(h -> 0) 0 $ 
für $f in C^2(D, RR)$ gilt:
 $ f(x+h) = f(x)+ (nabla f(x), h)_2 + 1/2 (H_f (x) h ,h)_2 + omega_2(x,h), quad (omega_2(x,h))/norm(h)^2 ->_(h->0) 0  $ 
mit der Hesse matrix $H_f (x)$],
  ),
)

#note(
  "card-93",
  data: (
    Front: "Definition: Mehrdimensionale Taylorreihen",
    Back: [Sei $f : D -> RR$ beliebig oft diffbar:
 $ T_infinity^f (x +h) = sum_(abs(alpha) = 0)^infinity (partial^alpha f(x))/(alpha!)h^alpha $ ],
  ),
)

#note(
  "card-94",
  data: (
    Front: "Lemma: Konvergenz von mehrdimensionalen Taylorreihen",
    Back: [Taylor Reihe konvergiert, wenn  $ R^f_(r+1)(x,h) ->_(r -> infinity) 0, quad x in D $ 
hinreichend dafür:
 $ sup_(abs(alpha)> 0) sup_(x in D) abs(partial^alpha f(x)) <= M_f <= infinity $ 
(d.h. alle partiellen Ableitungen von $f$ sind gleichmäßig beschränkt)],
  ),
)

#note(
  "card-95",
  data: (
    Front: "Satz: Überdeckungskompakt $<=>$ Folgenkompakt",
    Back: [Sei $(X, d)$ ein Metrischer Raum. $K subset X$ ist Überdeckungskompakt genau dann, wenn $K$ folgenkompakt ist],
  ),
)

#note(
  "card-96",
  data: (
    Front: "Definition: Lineare AWA",
    Back: [Sei $A(dot) : I -> RR^(n times n)$ eine matrixfunktion, sowie $b(dot) : I -> RR^n$ eine Vektorfunktion. Dann ist eine lineare AWA der Form
 $  y'(t) = A(t) y(t) + b(t) quad forall t >= t_0 $ 

 $  y(t_0) = y_0 $ 
eine lineare AWA],
  ),
)

#note(
  "card-97",
  data: (
    Front: "Satz: Lösung einer linearen AWA",
    Back: [Seien $A : [t_0, infinity) -> RR^(n times n), b : [t_0, infinity) -> RR^(n times n)$ stetig. Dann gilt
- Die lineare AWA besitzt eine eindeutige globale Lösung $y : [t_0, infinity) -> RR^n$
- Falls $A(dot)$ gleichmäßig negativ definit auf $[t_0,infinity)$ ist und $b(dot)$ beschränkt ist, dann ist $y(t)$ beschränkt und exponentiell stabil.],
  ),
)

#note(
  "card-98",
  data: (
    Front: "Definition: Homogene lineare Systeme",
    Back: [Ein homogenes lineares System ist der Form $y'(t) = A(t) y(t)$
- Die Menge der Lösnugen bildet einen Vektorraum $H$
- $B = {y^1_0, dots, y^n_0}$ basis von $RR^n$
  ${y^1, dots, y^n}$ die Lösungen von der AWA
  $  (y^i)' = A(t)y^i, quad y^i(t_0) y_0^i quad i in {1, dots, n} $ 
 Dann ist ${y^1, dots, y^n}$ eine basis von $H$ nud es gilt $dim(H) = n$
- Sei $B = {y^1, dots, y^n}$ eine Basis der Lösungsraums $H$, dann bilden die Vektoren ${y^1 (t), dots, y^n(t)}$ für jedes $t >= t_0$ eine Basis des $RR^n$],
  ),
)

#note(
  "card-99",
  data: (
    Front: "Definition: Fundamentalmatrix",
    Back: [Eine Basis ${phi^1, dots phi^n}$ des Lösungsraums $H$ von $y'(t) = A(t) y(t)$ zu den Anfangswerten $phi^i (t_0) = e^i$ (Standartbasisvektor) heißt **Fundamentalsystem** des linearen Systems.

 Die matrix $Phi = [phi^1, dots, phi^n]$ der Spaltenvektoren $phi^i$ heißt **Fundamentalmatrix** des linearen Systems.
 Diese Matrix ist **regulär** und löst die AWA (kompontenweise):
  $  Phi'(t) = A(t)Phi(t), quad forall t >= t_0, quad Phi(t_0) = bb(1) $ ],
  ),
)

#note(
  "card-100",
  data: (
    Front: "satz: Inhomogene lineare Systeme",
    Back: [ $ y'(t) = A(t) y(t) + b(t) $ 
Seien $A : [t_0, infinity) -> RR^(n times n), b : [t_0, infinity) -> RR^n$ **stetig**. Dann gilt:
- Für einen konstanten Vektor $c in RR^n$ ist 
  $ y_p (t) := Phi(t) (integral^t_(t_0) Phi^(-1)(s)b(s)d s + c)  $ 
eine partiukäre Lösung des inhomogenen linearen Systems.
- Alle Lösungen der inhomogenen Gleichung haben die Form:
    $ y(t) = y_p (t) + nu(t)  $ 
   wobei $nu in H$ (Lösungsraum des homogenen systems).
- Gilt $c = y_0$, dann gilt $y_p(t_0) = y_0$],
  ),
)

#note(
  "card-101",
  data: (
    Front: "Definition: Allgemeine inhomogenen lineare RWA",
    Back: [Seien $B_a, B_b in RR^(n times n), g in RR^n$ sowie $A : I -> RR^(n times n), f : I -> RR^n$ stetig. Dann ist eine allgemeine inhomogene lineare RWA der Form:
 $  y'(t) = A(t)y(t) + f(t) quad t in I $ 
 $ B_a y(a) + B_b y(b) = g  $ ],
  ),
)

#note(
  "card-102",
  data: (
    Front: "Satz: Existenzsatz für lineare RWA",
    Back: [Die lineare RWA besitzt eine eindeutige Lösung $y(t)$ für beliebge $f(t)$ und $g$ genau dann, wenn 
 $  B_a + B_b Phi (b) in RR^(n times n) $ 
Regulär ist, bzw die assoziierte homogene RWA nur die triviale Lösung $y eq.triple 0$ hat],
  ),
)

#note(
  "card-103",
  data: (
    Front: "Satz: Lokale eindeutigkeit von nichtlinearer RWA",
    Back: [Eine Lösung $y$ von nichtlinearer RWA ist lokal eindeitig, genau dann, wenn die lineare RWA
 $ v'(t) = f'_x (t,y(t))v(t) quad t in I $ 
 $  r'_x (y(a),y(b)) dot v(a) + r'_y (y(a), y(b)) dot v(b) = 0  $ 
nur die triviale Lösung $v = 0$ besitzt],
  ),
)

#note(
  "card-104",
  data: (
    Front: "Satz: Sturm Lioville Probleme",
    Back: [Es sei $p(t) >= rho > 0$. Falls 
 $  rho/(b-a)^2 + min_(t in I)(r(t) - 1/2q'(t)) > 0 $ 
dann besitzt das Sturm-Lioville Problem (SL-RWA) mit Dirichletschen Randbedingungen (D-RB) eine eindeutige Lösung $y(t) in C^2(I)$.

Falls  $  rho/(b-a)^2 + min_(t in I) (r(t) - 1/2 q'(t)) >= gamma > 0 $ 
mit einer Konstante $gamma$, dann gilt für idese Lösung die a-priori-Abschätzung bzugl. der $L^2$ Norm:
 $  norm(y)_2 + norm(y')_2 + norm(y'')_2 <= c dot (norm(f)_2 + abs(g_a) + abs(g_b))  $ 
mit einer von $y$ und $f$ unabhängigen Konstante $c > 0$.],
  ),
)

#note(
  "card-105",
  data: (
    Front: "lemma: $1, cos(k x), sin(k x)$ sind auf $RR[0,2pi]$ ein **Orthogonalsystem**",
    Back: [Beweis: Partielle  integration],
  ),
)

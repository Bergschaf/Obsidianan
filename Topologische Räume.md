Für eine Menge $X$ heißt ein System $cal(T) subset cal(P)(X)$ von Teilmengen eine ==Topologie==
auf ${} X$, wenn gilt:
- $emptyset, X subset cal(T)$
- $U, V in cal(T) => U inter V in cal(T)$
- $forall I, U_i in cal(T) forall i in I => union.big_(i in I) U_i in cal(T)$

## Kompaktkeit
Sei $(X,d)$ ein [[Metrischer Raum]] und $K subset X$

Eine **offene Überdeckung** von $K$ ist eine Familie ${V_i}_(i in I)$ von offenen Mengen mit $K subset union.big_(i in I) V_i$

### Folgenkompakt
$K$ heißt **folgenkompakt**, wenn für jede Folge ${} (x_k)_(k in NN) subset K$ eine __konvergente Teilfolge__ $(x_k_i)_(i in NN)$ und ein Grenzwert $x in K$ existieren mit $x_k_j ->_(j -> infinity) x$
### Überdeckungskompakt
$K$ heißt **Überdeckungskompakt**, wenn es zu jeder offenen Überdeckung eine endliche Teilüberdeckung gibt.

> [!Satz] Überdeckungskompakt $<=>$ Folgenkompakt
> Sei $(X, d)$ ein Metrischer Raum. $K subset X$ ist Überdeckungskompakt genau dann, wenn $K$ folgenkompakt ist

In einem metrischen Raum ist jede kompakte Menge abgeschlossen und beschränkt

Sei $(X,d)$ ein Metrischer Raum und  $K subset X$ kompakt und $A subset K$ abgeschlossen. Dann ist $A$ kompakt.
### Stetigkeit 
Seien $(X, cal(T)_X)$ und $(Y, cal(T)_Y)$ Topologische Räume
$f : X -> Y$ heißt stetig, wenn
$$forall U in cal(T)_Y, quad f^(-1)(U) in cal(T)_X$$
(Urbilder offener Mengen sind offen)



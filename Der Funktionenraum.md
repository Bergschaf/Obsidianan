
> [!Definition] Riemann Integrierbarkeit
> Eine Funktion $f : [a,b] -> CC$ heißt **Riemann-integrierbar** auf $[a,b] subset RR$ falls $Re(f)$ und $Im(f)$ R-integierbar sind. Man setzt
> $$ integral_a^b f(x) d x := integral_a^b Re(f) d x + i integral_a^b Im(f) d x $$

Rechenregeln vom komplexen Zahlen funktionieren, insbesondere:
$$ integral_a^b overline(f(x)) d x = overline(integral_a^b f(x) d x)$$

> [!Definition] Stückweise-Stetigkeit
> Eine Funktion $f : [a,b] -> KK$ heißt **stückweise stetig**, falls
> + $f$ in [a,b] beschränkt und bis auf endlich viele Stellen stetig ist
> + an jeder Unstetigkeitsstelle $xi in [a,b]$ die links- bz.w rechtsseiteigen Grenzwerte existieren:
>  $$f(xi plus.minus) := lim_(h arrow.b 0) f (xi plus.minus h)$$

Für $xi in (a,b)$ setzt man $$f(xi) := (f(xi-) + f(xi+))/2$$
Diese Funktionen bilden einen Vektorraum $$cal(R)[a,b]$$
>[!Definition] Sesquilinearform
> $f, g in cal(R)[a,b]$
> $$ (f,g) := integral_a^b f(x)overline(g(x))d x$$
linear im ersten argument und konjugiert linear im anderen:
> - $(f, alpha g_1 + beta g_2) = overline(alpha) (f,g_1) + overline(beta) (f, g_2)$
>  $$ (f,g) = overline((g,f))$$
> $(f,f) = 0 => f = 0 "auf" [a,b]$
(Da f an unstetigkeitsstellen auf die hälfte des linken und rechten Grenzwerts gesetzt wurde)

$(dot, dot)$ besitzt die Eigenschaften eines [[Skalarprodukt]]s


## L²-Norm auf R[a,b]

$$ norm(f)_2 := sqrt((f,f)) = (integral_a^b f(x) overline(f(x))d x)^(1/2)$$

(erfüllt die Normeigenschaften ([[Normierter Raum]]))

## L² Konvergenz

Eine[[Funktionenfolgen]] $f_n$ konvergiert gegen $f$ im quadratischen Mittel, wenn gilt
$$norm(f_n - f)_2 -> 0 quad "für" n -> infinity$$


> **Gleichmäßige Konvergenz impliziert L² Konvergenz**
> $$norm(f_n - f)^2_infinity -> 0 => norm(f_n - f)_2^2 -> 0$$


## Periodische Funktionen
Eine Funktion $f : RR -> KK$ heißt **L-periodisch**, falls
$$ f(x + L) = f(x) quad forall x in RR$$


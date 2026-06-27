
Sei $D subset RR^n$ offen, $f : D -> RR$

> [!Definition] Lokales Minimum/Maximum
> $x in D$ heißt **lokales Minimum/Maximum**, falls eine Umgebung $B_delta(x) subset RR^n$ von x existiert mit 
> $$ f(x) <= f(y) quad forall y in B_delta(x)$$
> (strikt falls $<$)


> [!Satz]  Notwendige Bedingung für lokales Extremum
> $f : D -> RR$ stetig diffbar
> $$ x "lokales Extremum " => nabla f = 0$$

> [!Satz] Hinreichende Bedingung für lokales Extremum
> $f in C^2(D, RR)$ und $x in D$ mit $nabla f(x) = 0$
> + $H_f (x)$ positiv definit => $x$ ist striktes lokales Minimum 
> + $H_f (x)$ negativ  definit => $x$ ist striktes lokales Maximum
> + $H_f (x)$ indefinit => $x$ kein lokales Extremum



> [!Definition]
> Symm. Matrix $A$.
> $A$ ist **positiv definit** falls $(x, A x)_2 > 0 quad forall x eq.not 0$ (=> alle Eigenwerte > 0)


> Hauptminorenkriterium
> Sei $A$ symmetrisch
> A ist positiv definit $<=>$ $$det(a_11) dot det(mat(a_11, a_12; a_21, a_22)) det("3x3 Matrix")dots > 0$$

A ist negativ definit genau dann, wenn $-A$ postiv definit ist (vorzeichen von der Determinante immer abwechselnd)




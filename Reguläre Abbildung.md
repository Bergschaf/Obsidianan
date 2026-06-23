
Sei $D subset RR^n$ offen
> [!Definition] Reguläre Abbilung
> $f : D -> RR^n$ heißt **regulär** in $hat(x) in D$, wenn $exists B_delta (hat(x)) subset D$ sodass 
> - $f$ ist in $B_delta (hat(x))$ stetig diffbar und
> - die Jacobimatrix $J_f (hat(x))$ regulär (also invertierbar) ist

> [!Satz] Umkehrabbildung (lokal!) (Inverse Function Theorem)
> Sei $f  : D -> RR^n$ **regulär** in $hat(x) in D$
> Dann existiert offene Umgebung $V(hat(x)) subset D$ so, dass
> - $U(hat(y)) := f(V(hat(x)))$ eine offene Umgebung von $hat(y) = f(hat(x))$ und
> - $f : V(hat(x)) -> U(hat(y))$ bijektiv ist
> Außerdem: Die Umkehrabildung $f^(-1) : U(hat(y)) -> V(hat(x))$ ist regulär in $hat(y)$ und 
> $$J_(f^(-1)) (hat(y)) = (J_f (hat(x)))^(-1) quad det J_(f^(-1)) (hat(y)) = 1/(det J_f (hat(x)))$$

Ist  $f : D -> RR^n$ **regulär** und $U subset D$ offen, dann ist auch $f(U)$ offen.
(Man nennt solche Abbildungen ==offen==)

 


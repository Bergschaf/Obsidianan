Sei $V = RR^n$
> [!definition] 
> $v in RR^n \\ {0}$ heißt **Eigenvektor** der Matrix $A in RR^(n times n)$ zum **Eigenwert** $lambda in RR$, wenn $A v = lambda v$

Die Menge aller Eigenvektoren zum Eigenwert $lambda$ ist ein Unter-VR von $RR^n$ (Eigenraum).

### Bestimmen
Die Eigenwerte von $A in RR^(n times n)$ sind die Nullstellen des **charakteristischen Polynoms** $$chi(lambda) = det(A - lambda bb(1))$$
denn $$0 = det(A - lambda bb(1)) <=> exists v, (A - lambda bb(1)) v = 0 <=> A v = lambda v$$
### Braucht man das??
> [!Definition] ??
$A, B in RR^(n times n)$ heißen **ählich**, wenn $exists quad T in "GL"(n, RR)$ mit $A = T^(-1) B T$ 
Ähnliche Matritzen haben gleiche Eigenwerte aber andere Eigenvektoren

> [!Definition] Spektrum??
$$sigma(A) = {lambda in RR | lambda "ist EW von A"}$$

> [!Definition] Positiv Definit??
> $$forall v in RR^n\\{0} : (A x,x) > 0 $$







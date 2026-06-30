#set page(width: 210mm, height: 297mm, margin: 18mm)
#set text(font: "New Computer Modern")

//#import "Preamble.typ" : *
//#show: thmrules
#import "@preview/commute:0.3.0": node, arr, commutative-diagram
#set page(
  paper: "a4",                    // A4 paper
  margin: (                      // tight margins
    top: 0.2cm,
    bottom: 0.2cm,
    left: 0.2cm,
    right: 0.2cm,
  ),
  columns: 3,                 // three columns to pack more text
)

#set columns(gutter:0.4em)
#set text(
  font: "Libertinus Serif",       // readable serif
  size: 9pt                       // small but legible
)

#set par(
  leading: 0.7em                  // slightly tighter line spacing
)

// Optionally remove headers/footers if you don’t need them:
#set page(header: none, footer: none)

#let _compact-mathblock(title, content, fill: rgb(100,100,100)) = block(
  //fill: fill, // TODO anders fü
  inset: (x: 3pt, y: 4pt),
  radius: 4pt,
  stroke: 1pt + fill,
  spacing: 5pt,[#if title != none [*#title* ] 
  #content
])
#let pset = $cal(P)$
#let definition(..args) = if args.at(1,default: none) == none   [#_compact-mathblock(none, args.at(0))] else [#_compact-mathblock(args.at(0), args.at(1))]

#let lemma(..args) = if args.at(1,default: none) == none   [#_compact-mathblock(none, args.at(0), fill: rgb(100,100,220))] else [#_compact-mathblock(args.at(0), args.at(1), fill: rgb(100,100,220))]

#let theorem(..args) = if args.at(1,default: none) == none   [#_compact-mathblock(none, args.at(0), fill:rgb(100,220,110))] else [#_compact-mathblock(args.at(0), args.at(1), fill:rgb(100,220,100))]

#let prea(x) = $attach(#x, tl: 0)$
#let Hom = "Hom"
#let injektiv = "injektiv"
#let surjektiv = "surjektiv"
#let Bild = "Bild"
#let Kern = "Kern"
#let coBild = "coBild"
#let coKer = "coKer"
#let Bil = "Bil"

= Dualräume

$ V^* := Hom(V, K) $

#emph[Dual Pairing] $ (v^*, v) := v^*(v) $ (ist bilinear)

$ V^* ≅ V $

durch

$ T_B : V^* → K^n, v^* ↦ (v^*(v_i))_{i=1}^n $

(Zuordnung einer linearen Form zu den Bildern der Basis)

(für $dim(V) ∈ NN$ gleich dimensional, im Unendlichen kann
$dim(V^*) > dim(V)$ gelten)


= Basiswechsel

Seien $B = (v_i)_{i∈I}$ und $tilde(B) = (tilde(v_i))_{i∈I}$ Basen von $V$.
Dann gilt

$ T_(tilde(B) ← B)^* = T_(B ← tilde(B))^-1 $

= Annihilator

$ M^0 := {v^* ∈ V^* | (v^*, v) = 0 quad forall v ∈ M} $

$ = {v^* ∈ V^* | M ⊆ ker(v^*)} $

$ = ⋂_(v∈M) ker(v^*) ⊆ V^* $

Für $F ⊆ V^*$:


$ prea(F) := {v ∈ V | (v^*, v) = 0 quad forall v^* ∈ F} $

$ = ⋂_(v^*∈F) ker(v^*) ⊆ V $

Sind beides Unterräume und es gilt

$ prea((M^0)) = M $
und
$ (prea(F))^0 = F $

Wenn $(v_1, …, v_k)$ Basis von $U ⊆ V$, dann ist
$(v_(k+1)^*, …, v_n^*)$ eine Basis von $U^0$.

(Prä-Annihilator analog)


= Duale Homomorphismen

$ f : V → W $

$ f^* : W^* → V^*, w^* ↦ w^* ∘ f $

$ (f ∘ g)^* = g^* ∘ f^* $

$ D : (V → W) → (W^* → V^*), f ↦ f^* $

ist injektiv (im endlichdimensionalen Fall surjektiv).

$ f injektiv ⇒ f^* surjektiv $

(und andersrum)

$ M_(B_W ← B_V)(f)^T = M_(B_V^* ← B_W^*)(f^*) $


= Fundamentale Unterräume

$ Bild(f^*) = ker(f)^0 $
und
$ ker(f^*) = Bild(f)^0 $

$ Bild(f) = ^0 ker(f^*) $
und
$ ker(f) = ^0 Bild(f^*) $

$ A ∈ K^(m × n) $

$ coBild(A) = Bild(A^T) $

$ coKer(A) = ker(A^T) $

$ (V/U)^* ≅ U^0 $

TODO: so hinschreiben

$ V^* / U^0 ≅ U^* $

TODO: bisschen Faktor-Sachen


= Bidualraum

Kanonische Injektion

$ i_V : V → V^{**}, v ↦ ⟨·, v⟩ $

Surjektiv im endlichdimensionalen Fall.

Annihilatoren im Dualraum: $F ⊆ V^*$

$ F^0 = i_V(prea(F)) $

$ (prea(U))^0 = i_V(U) $

= Bidualer Homomorphismus

$ f : V → W $

$ f^{**} : V^{**} → W^{**}, v^{**} ↦ v^{**} ∘ f^* $

Diagramm ist kommutativ.

$ f injektiv ⇔ f^* surjektiv $

(und andersrum)

$ M_(B_{V^{**}} ← B_{W^{**}})(f^{**}) = (M_(B_V ← B_W)(f))^T $


= Bilineare Abbildungen

sind ein UVR von $W^(U × V)$ (= $U × V → W$),
eindeutig durch Bilder auf dem Produkt der Basen festgelegt.

Für jedes bilinear $b : U × V → W$ gibt es ein eindeutiges,
lineares $f : T → W$, sodass

$ b = f ∘ ⊗ $

$ Bil (U, V; W) ≅ Hom(U ⊗ V, W) $

(man kann eine Abbildung $f : U ⊗ V → W$ eindeutig
durch die Bilder der Elementartensoren definieren.
Vorschrift muss aber bilinear sein.)

Elementartensoren bilden ein Erzeugendensystem:

$ (u_i ⊗ v_j)_(i,j∈I×J) $

$ dim(U ⊗ V) = dim(U) · dim(V) $

Rang von $t ∈ U ⊗ V$:

minimale Anzahl an Summanden, sodass

$ t = sum_i α_i u_i ⊗ v_i $

$ u ⊗ v = 0 ⇔ u = 0 or v = 0 $


= Tensorprodukt linearer Abbildungen

$ f_1 : U_1 → V_1 $
und
$ f_2 : U_2 → V_2 $

$ f_1 ⊗ f_2 : U_1 ⊗ U_2 → V_1 ⊗ V_2,
u_1 ⊗ u_2 ↦ f_1(u_1) ⊗ f_2(u_2) $

$ A = M_(B_{V_1} ← B_{U_1})(f_1) $
und
$ B = M_(B_{V_2} ← B_{U_2})(f_2) $

Wir ordnen $B_{V_1 ⊗ V_2}$ und $B_{U_1 ⊗ U_2}$ lexikographisch.

$ M_(B_{V_1 ⊗ V_2} ← B_{U_1 ⊗ U_2})(f_1 ⊗ f_2) = A ⊗ B $

in $K^(n_1 n_2 × m_1 m_2)$.

$ A ⊗ B = $
blockmatrix mit Einträgen
$ a_11 B, a_12 B, …, a_1m B $
$ a_21 B, … $
$ … $
$ a_(n 1) B, …, a_(n m) B $

* bilinear
* verträglich: $(A_1 A_2) ⊗ (B_1 B_2) = (A_1 ⊗ B_1)(A_2 ⊗ B_2)$

$ (A ⊗ B)^-1 = A^-1 ⊗ B^-1 $

#let Rang = "Rang"
$ Rang(A ⊗ B) = Rang(A) Rang(B) $


= Darstellung von Tensoren

(alle $U_R$ endlichdimensional)

$ B_U = (u_i) $, $ B_V = (v_j) $

$ Phi_(B_U, B_V) : K^(n × m) ≅ U ⊗ V,
A ↦ sum_(i=1)^n sum_(j=1)^m a_(i j) (u_i ⊗ v_j) $

$ U^* ⊗ V^* ≅ (U ⊗ V)^* $

Rang eines Tensors ist Rang der Komponentematrix.

$ t ∈ U ⊗ V $

$ Rang(t) = Rang(Phi_(B_U, B_V)^-1(t)) $

$ ⇒ Rang(t) ≤ min{dim(U), dim(V)} $

Komponentenmatrix bei Basiswechsel

Sei $A$ Komponentenmatrix von $t ∈ U ⊗ V$.

$ tilde(A) = T_(B_U ← tilde(B_U)) A T_(B_V ← tilde(B_V)) $


= Tensoren als lineare Abbildungen

$ T : U ⊗ V → Hom(V^*, U), u ⊗ v ↦ ⟨·, v⟩ u $
(iso)

Komponentenmatrix analog zu 2D.

= Multilineare Dinge

#let Mult = "Mult"
$ Mult (U_1, …, U_n, W) $ ist Vektorraum.

Tensorprodukt analog zu 2D.

$ V_1, …, V_n$ VR über $K $

$ V_1 ⊗ … ⊗ V_n = 0 ⇔ ∃ i,; V_i = 0 $

Elementartensoren haben Rang 1.

$ A ∈ U^(n_1 × … × n_N) $

Rang: minimale Anzahl an Summanden, sodass

$ A = sum_(i=1)^n x_1^(i) ⊗ … ⊗ x_N^(i) $

mit $x_1^(i), x_2^(i), …, x_N^(i) ∈ U^N$.

Komponentenhypermatrix → Tensor (iso).

$ Rang(t) = Rang(A) $

Sind beide auch lineare Abbildungen.


= Tensoren über einem VR

$ T^(r,s)(V) := V^⊗r ⊗ (V^*)^⊗s $

Basis unendliches Zeug.

$ V^⊗r := T^(r,0)(V) = ⨂_(u=1)^r V $

= Permutation

$ P_sigma : V^⊗r → V^⊗r,
v_1 ⊗ … ⊗ v_r ↦
v_(sigma^-1(1)) ⊗ … ⊗ v_(sigma^-1(r)) $

$ P_(sigma_1) ∘ P_(sigma_2) = P_(sigma_1 ∘ sigma_2) $

⇒ Permutation der Achsen der Komponententhypermatrix.

= Symmetrisch

$ P_sigma(t) = t quad forall sigma ∈ S_r $

= Schiefsymmetrisch

#let sgn = $op("sgn")$
$ P_sigma(t) = sgn(sigma) t $

= Alternierend

$ ∃ i ≠ j,; v_i = v_j ⇒ t(v_1, …, v_r) = 0 $

⇒ kann man auch auf Matrix überprüfen:
$a_(sigma(1), …, sigma(r)) = a_(…)$

$t$ ist alternierend ⇔ $t(v_1, …, v_r) = 0$
für linear abhängige Familien $(v_i)$.

TODO Zusammenhang zwischen Schief und Alt
(for quizfragen)

TODO Dimensionsformel dafür

Symmetrisierung:
$ t ↦ 1/r! sum_(sigma∈S_r) P_sigma(t) $

Schiefsymmetrisierung:
$ t ↦ 1/r! sum_(sigma∈S_r) sgn(sigma) P_sigma(t) $


= Determinanten

(nicht triviale alternierende multilineare Form
$ Δ ∈ Mult(V^n, K)$)

$ Δ(v_1, …, v_i + w_i, …, v_n) = Δ(v_1, …, v_n) $

(vertauschen von zwei Argumenten wechselt Vorzeichen)

⇒ 1D Unterraum

$ Δ(v_1, …, v_n) = sum_(sigma∈S_n) sgn(sigma) a_(sigma(1)n) … a_(sigma(n)n) $

$ det(A) = sum_(sigma∈S_n) sgn(sigma) a_(sigma(1)n) … a_(sigma(n)n) $

$ det(α A) = α^n det(A) $

$ det(A B) = det(A) det(B) $

$ det(A^-1) = 1 / det(A) $

$ det(A^T) = det(A) $

$ A ∈ K^(n × n), det(A) = a_11 … a_(n n) $

$ A = mat(A_11, A_12; 0, A_22) = det(A_11) det(A_22) $

Streichungsmatrix := $(A)_(i,j)$

Unterdeterminante $[A]_(i j) := det(A_(i,j))$

Cofaktor $ tilde(a)_(i j) := (-1)^(i+j) [A]_(i j) $

#let adj = $op("adj")$
#let cof = $op("cof")$

adjugate $ adj(A) = cof(A)^T $

$ adj(A) A = A adj(A) = det(A) I $

⇒ nützlich bei $2 × 2$ Inversen

$ A ∈ K^(2 × 2) $
$ A^-1 = 1/det(A) mat(a_22, -a_12; -a_21, a_11) $

Laplace:

$ det(A) = sum_(j=1)^n (-1)^(i+j) a_(i j) [A]_(i j) $

(Entwicklung nach der i-ten Spalte)


= Cramersche Regel

$ A $ invertierbar.

$ x ∈ K^n $, Lsg: $ A x = b $.

$ x_i = det(mat(a_1, …, a_(i-1), b, a_(i+1), …, a_n)) / det(A) $

= Orientierung eines Vektorraums

#let Aut = $op("Aut")$
$ f : Aut(V) $

orientierungsfrei $ det(f) > 0 $

(sonst orientierungsumkehrend)

Zwei Basen sind gleich orientiert, wenn $T_(B ← B')$ orientierungsfrei ist.

= Polynome

endlich gebrannte Folge $p = (a_n)_n∈NN$.

$ p · q = r $

mit $r_n = sum_(k=0)^n α_k β_(n-k)$.

normiert: führender Koeffizient $(p) = 0$.

Auf Nullteile aufpassen.

$ R $ Integritätsring ⇒ $R[t]$ ist Integritätsring.

kommutativ, nullteilerfrei mit Einselement und nicht der Nullring.


= Modul über kommutativem Ring

$ + : M × M → M $

$(M, +)$ abelsche Gruppe.

$ · : R × M → M $

assoziativ mit Ringmultiplikation.

gemischte Distributivität.

unitärer Modul: $1 · u = u$ für $1 ∈ R, u ∈ M$.

$U$ ist Untermodul ⇔ $u, v ∈ U,; u-v ∈ U,; α · u ∈ U$.

unitärer $R$-Modul heißt frei, wenn es eine Basis von $M$ gibt
(linear unabhängiges Erzeugendensystem).

endlich frei, wenn die Basis dazu noch endlich ist.

Sei $R$ komm. Ring mit Eins und $(M_i)_i$ endlich frei unitär,
dann ist $M$ iso zu $R^n$ mit $n = |B_M|$.

$ Rang(M) = n $

= Algebra

$(A, +, ·)$ ist $R$-Modul.

$(A, +, *)$ ist Ring.

$*$ assoziativ mit $·$.

kommutativ, wenn $*$ komm.

unitär, wenn $(A, +, *)$ unitär.

mit Eins, wenn es ein bzgl. $*$ neutrales Element gibt.

$*$ ist bilinear.

$U$ ist Unteralgebra ⇔ $a-b ∈ U,; α · a ∈ U,; a * b ∈ U$.

= Polynomfunktion

$ Phi : (R[t], +, ·) → (A^A, +, ·, *) := p ↦ p(·) $

Homomorphismus von Algebren mit Eins.

Unendlich ⇒ $Phi$ injektiv (sonst ggf. nicht).

= Polynomdivision

$ p_2 | p_1 := ∃ q ∈ R[t],; p_1 = q p_2 $

$ ∀ p_1, p_2 ∃ q, r ∈ K[t] : p_1 = q p_2 + r deg(r) < deg(p_2) $

TODO Polynomdivision

$ K[t] $ ist ein Hauptidealring.

$ p(λ) = 0 ⇔ (t-λ) | p $

$ p = (t-λ_1)^{n_1} ⋯ (t-λ_s)^{n_s} · q $

(keine Nullstellen)


= Normalformen von Endos

#let Endo = $op("Endo")$
$ M_(B_V ← B_V)(id_(Endo(U))) ≅ (K^(n × n), +, ·, o) $

Isomorphismus von Algebren mit Eins.

= Ähnlichkeit

$ A, tilde(A) ∈ K^(n × n) $ heißen ähnlich, wenn es eine invertierbare Matrix $T ∈ K^(n × n)$ gibt, sodass

$ tilde(A) = T^-1 A T $

⇒ Darstellungsmasse vom gleichen Endo nur mit anderer Basis.

$U ⊆ V$ heißt invariant, wenn $f(U) ⊆ U$,
bzw. ${A x | x ∈ U} ⊆ U$.

$f$-invariante Unterräume mit $U_1 ⊕ ⋯ ⊕ U_l = V$
⇒ $∃ B_U$ (Basis von $U$) sodass

$ M_(B_V ← B_V)(f) =
mat(A_11, 0, …, 0;
 0, A_22, …, 0;
 ⋮, ⋮, ⋱, ⋮;
 0, 0, …, A_(n n)) $

Blockdiagonalgestalt.

= Eigenwerte / Vektoren

$ f(v) = λ v (v ≠ 0) $
#let Eig = $op("Eig")$ 
$ Eig(A, λ) = {x ∈ K^n | A x = λ x} = ker(λ I - A) $
#let geo = "geo"
#let alg = "alg"
$ p_geo = dim(Eig(A, λ)) $

(geometrische Vielfachheit)

$f$ ist injektiv ⇔ $0$ ist kein EW von $f$.
(wenn $dim(V) < ∞$, dann sogar $f$ bijektiv ⇔)

$A$ ist regulär ⇔ $0$ ist kein EW von $A$.

$ ker(λ I - A) = "Lösung von" (λ I - A)x = 0 $

= Spektrum

$ Δ(f) := {λ | λ "ist EW von" f} $

$ = {λ | id λ - f "ist nicht invertierbar"} $

$ ⇒ det(I λ - A_f) = 0 $

= charakteristisches Polynom

$ x_A = det(I t - A) $

("charakteristische Matrix")

Sei $x_A = sum_(k=0)^n a_k t^k$.

$ a_n = 1 $

#let Spur = $op("Spur")$
#let ii = $i i$
$ Spur(A) = sum_(i=1)^n a_ii $

$ a_(n-1) = -Spur(A) $

$ a_0 = (-1)^n det(A) $

$ mu_alg(A, λ_i) = n_i $

(Exponent des Linearfaktors $(t-λ_i)$ in der eindeutigen Zerlegung des Polynoms)

$ 1 ≤ mu_geo(A, λ) ≤ mu_alg(A, λ) ≤ n $

$ x_A = x_Ä $

(ähnliche Matrizen besitzen das selbe charakteristische Polynom)

$ ⇒ Spur(A) = Spur(A^T) $

(ähnliche Matrizen haben die selbe Spur)

= Diagonalisierbare Endomorphismen

A heißt diagonalisierbar, wenn ähnlich an Diagonalmatrix.

⇒ Eigenwerte auf der Diagonalen.

⇒ Eigenbasis, wenn alle Basisvektoren EVs sind.

TODO Spektralzerlegung

A ist diagonalisierbar ⇔

- $ sum_(i=1)^s p_geo(A, λ_i) = n $

- $x_A$ zerfällt in Linearfaktoren und
- $mu_geo(A, λ_i) = mu_alg(A, λ_i) $ für alle $i$.
- $mu_A$ zerfällt vollständig in Linearfaktoren und besitzt nur einfache Nullstellen

($n$ paarweise verschiedene EW $=>$ diagonalisierbar)

= Projektoren

$ P^2 = P $

$ V = Bild(P) ⊕ ker(P) $

Sei $V = U ⊕ W$ (Zerlegung in Komplementäre),
dann $P : V → V$ mit $Bild(P)=U$ und $ker(P)=W$.

Komplementärer Projektor: $id - P$.

#line(length : 80%)

#theorem("Cayley Hamilton")[
  $chi_A (A) = 0 $
]
$=> exists p in K_(n-1) [t], A^(-1) = p(A)$

(gilt da $alpha_0 = (-1)^n det(A) eq.not 0$ wenn A invertierbar)

#lemma[Die annulierenden Polynome bilden ein Ideal $J_A$]
#definition("Minimalpolynom")[
  Das normierte Polynom kleinsten grades mit $mu_A in J_A \\ {0}$ 
]
Ähnliche matritzen haben die selben Minimalpolynome

=== Minimalpolynom bestimmen (nervig) (TODO wichtig?)
$F = mat("vec"(A^0), "vec"(A^1), dots, "vec"(A^n)) in K^(n^2 times (n +1))$
-> ZSTF

Spalte $m in [|0,n|]$ ohne Pivot Element $->$ Grad von $mu_A$

Koeffizienten von $mu_A$ sind Lösung von

$ ["vec"(A^0), dots, "vec"(A^m)] vec(alpha_0, dots, alpha_m) = 0 in K^n^2$
(mit $alpha_m := 1$)
#line()

$mu_A$ teilt jedes annulierende Polynom (wegen Hauptidealring)

$mu_A$ und $chi_A$ haben die selben Nullstellen



$ p = t^n + sum_(i = 1)^(n-1) alpha_i t^i$ normiert
#definition("Begleitmatrix")[
  $ C_p = mat(0, dots,dots, 0, -alpha_0; 1, dots.down,,,  -alpha_1; 0, dots.down, dots.down, ,-alpha_2; dots.v, quad, dots.down, 0, dots.v; 0, dots, 0 , 1, -alpha_(n-1)) $
]
$chi_(C_p) = mu_(C_p) = p$

== Frobenius Normalform
#let Kry = $cal(K)$
#definition("Krylov-Unterraum")[
  $ Kry_k (A; x) := chevron.l x, A x , A^2 x, dots, A^(k-1) x chevron.r subset K^n  $
]
$Kry_infinity (A; x)$ (vereinigung über alle k) => der von *x erzeugete $A$-zyklische Unterraum*
(der kleinste $A$ invariante UR, der $x$ enthält)

#lemma("Lokal annullierende Polynome bilden ein Ideal")[
  $ J_(A,x) := {p in K[t] | p(A) x = 0} $
]
$->$ lokales minimalpolynom wird definiert

Bestimmung ähnlich wie bei $mu_A$, man prüft jetzt allerdings $A^0 x, A^1 x, dots$ auf lineare unabh.


$mu_(A,x)$ teilt offensichtlich jedes annulierend epolynom

#lemma("Zerlegung in Komplementäre Unterräume")[
Sei $x in K^n$ so gewählt, dass 
$ deg(mu_(A,x)) = d = max{deg(mu_(A,y)) | y in K^n} $
Basis: $B = (x, A x, dots, A^(d-1), x_(d+1), dots, x_n)$
TODO wilde sachen
  -> $ exists W,  K^n = Kry_d (A;x) plus.o W $
]
#lemma("Das lokale Minimalpolynom maximalen Grades ist das Minimalpolynom")[
  $mu_(A,x) = mu_A$ 
]

#lemma("Frobenius Normalform")[
  Es existieren normierte Polynome $p_1, dots p_3$ (*invariantenteiler*) mit $deg(p_j) >= 1$ und
  - $p_1 = mu_A$ und $p_(j+1) divides p_j$
  - $ A "ist ähnlich zu" mat(C_p_1,,,,;,C_p_2;,,dots.down;,,,C_p_r) $
]
$chi_A = p_1 dot p_2 dots p_r$

(Eindeutiger Repräsentant der Äquivalenzklasse der ähnlichen Matritzen)
== Jordan Normalform
Existiert, wenn das charakteristische Polynom vollständig in Linearfaktoren zerfällt

#definition("Verallgemeinerter Eigenvektor der Stufe k")[
  $(lambda I - A)^k x = 0$
]
verallgemeinerter Eigenraum $"GEig"(A, lambda)$ analog (die sind $A$ invariant)

=== Potenzen
${0} = Kern(A^0) subset.eq Kern(A^1) subset.eq dots subset.eq Kern(A^k) subset.eq dots$

$K^n = Bild(A^0) subset.eq Bild(A) subset.eq Bild(A^k) subset.eq dots$
Wenn sich eins (dimensionsmäßig) stabilisert, dann stabilisert sich alles

Solange noch keine Stabiliserung eingetreten ist gelten strenge inklusionen

#lemma("Zerlegung in verallgemeinerte Eigenräme")[
  $chi_A = (t - lambda_1)^(n_1) dots (t - lambda_s)^(n_s) $
  $ K^n = plus.o.big_(j=1)^s "GEig"(A, lambda_j) $
]
#definition("Jordan Block")[
  $ J_r = mat(lambda, 1,0, dots, 0;0, dots.down, dots.down,,,; dots.v,,dots.down, dots.down, 0;dots.v,,,dots.down,1;0,dots,dots,0,lambda ) $
]

TODO jordan normalform lemma

$mu_alg (lambda)$ summe der Dimensionen aller Jordan-Blöcke mit dem Diagonaleintrag $lambda$

$mu_geo (lambda)$ anzahl der Jordanblöcke mit Diagonaleintrag $lambda$

*Vielfachheit von $lambda$* in $mu_A$ ist die Größe des größten Jordan Blocks mit Diagonaleintrag $lambda$

TODO Begleitmatrix

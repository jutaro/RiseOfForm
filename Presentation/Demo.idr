||| Demo module for the Cardano talk. Self-contained, no imports beyond Prelude,
||| %default total: every definition is checked to be total, so a silent
||| `idris2 --check Demo.idr` is the whole verification.
|||
||| Run the demo:   idris2 --check Demo.idr
||| Trace live:     idris2 Demo.idr   then   :exec traceCrown
module Demo

import Data.Nat

%default total

-- ---------------------------------------------------------------------------
-- 1. Two moves. The whole language.
-- ---------------------------------------------------------------------------

public export
data Term : Type where
  K   : Term
  S   : Term
  App : Term -> Term -> Term

export infixl 9 :$
public export
(:$) : Term -> Term -> Term
(:$) = App

||| One step of reduction: the two rules, and the two ways of stepping inside.
public export
data Step : Term -> Term -> Type where
  RedK : {x, y : Term} -> Step (K :$ x :$ y) x
  RedS : {x, y, z : Term} -> Step (S :$ x :$ y :$ z) (x :$ z :$ (y :$ z))
  AppL : {f, f', a : Term} -> Step f f' -> Step (f :$ a) (f' :$ a)
  AppR : {f, a, a' : Term} -> Step a a' -> Step (f :$ a) (f :$ a')

||| A walk: zero or more steps.
public export
data Steps : Term -> Term -> Type where
  Done : Steps t t
  Then : Step t u -> Steps u v -> Steps t v

-- ---------------------------------------------------------------------------
-- 2. The crown: identity is not primitive.  S K K t  ->  K t (K t)  ->  t
-- ---------------------------------------------------------------------------

||| The proof is the walk itself: two constructors, one per rule fired.
export
skIdentity : (t : Term) -> Steps (S :$ K :$ K :$ t) t
skIdentity t = Then RedS (Then RedK Done)

-- ---------------------------------------------------------------------------
-- 3. The ledger: count what is there, and prove what the moves do to it.
-- ---------------------------------------------------------------------------

||| Occurrences of the atom K in a term.
public export
occK : Term -> Nat
occK K         = 1
occK S         = 0
occK (App f a) = occK f + occK a

||| Occurrences of the atom S in a term.
public export
occS : Term -> Nat
occS K         = 0
occS S         = 1
occS (App f a) = occS f + occS a

||| Leaves of a term: the total number of atoms, K and S together.
public export
leaves : Term -> Nat
leaves K         = 1
leaves S         = 1
leaves (App f a) = leaves f + leaves a

||| The K rule forgets: it removes exactly the leaves of the discarded argument,
||| plus the K itself.  This is the only place in the calculus where anything is lost.
export
kForgets : (x, y : Term) -> leaves (K :$ x :$ y) = leaves x + (1 + leaves y)
kForgets x y = plusSuccRightSucc (leaves x) (leaves y)

||| The S rule shares: the argument z is handed to both x and y, whole.
||| Its leaves appear twice afterwards; nothing else changes.
export
sShares : (x, y, z : Term) ->
          leaves (x :$ z :$ (y :$ z)) = leaves x + leaves z + (leaves y + leaves z)
sShares x y z = Refl

-- ---------------------------------------------------------------------------
-- 4. Nothing is ever minted.  If an atom is absent, no walk can create it.
--    (Absence is hereditary along walks: the provenance lemma in miniature.)
-- ---------------------------------------------------------------------------

sumZero : (m, n : Nat) -> m + n = 0 -> (m = 0, n = 0)
sumZero Z     Z Refl = (Refl, Refl)
sumZero (S _) _ Refl impossible

||| One step never mints a K.
export
stepNoMintK : Step t u -> occK t = 0 -> occK u = 0
stepNoMintK (RedK {x} {y}) prf =
  let (kx, _) = sumZero (occK K + occK x) (occK y) prf
      (_, ox) = sumZero (occK K) (occK x) kx
  in ox
stepNoMintK (RedS {x} {y} {z}) prf =
  let (sxy, oz) = sumZero (occK S + occK x + occK y) (occK z) prf
      (sx, oy)  = sumZero (occK S + occK x) (occK y) sxy
      (_, ox)   = sumZero (occK S) (occK x) sx
  in rewrite ox in rewrite oy in rewrite oz in Refl
stepNoMintK (AppL {f} {f'} {a} s) prf =
  let (of', oa) = sumZero (occK f) (occK a) prf
  in rewrite stepNoMintK s of' in oa
stepNoMintK (AppR {f} {a} {a'} s) prf =
  let (of', oa) = sumZero (occK f) (occK a) prf
  in rewrite of' in stepNoMintK s oa

||| ... and therefore no walk does either.
export
stepsNoMintK : Steps t u -> occK t = 0 -> occK u = 0
stepsNoMintK Done       prf = prf
stepsNoMintK (Then s w) prf = stepsNoMintK w (stepNoMintK s prf)

-- ---------------------------------------------------------------------------
-- 5. A runnable engine, for the live trace.  Leftmost-outermost, fuelled.
-- ---------------------------------------------------------------------------

export
Show Term where
  show K = "K"
  show S = "S"
  show (App f a) = show f ++ " " ++ arg a
    where arg : Term -> String
          arg (App g b) = "(" ++ show (App g b) ++ ")"
          arg t = show t

||| One leftmost step, if any.
export
step : Term -> Maybe Term
step (App (App K x) y)          = Just x
step (App (App (App S x) y) z)  = Just (x :$ z :$ (y :$ z))
step (App f a)          = case step f of
                            Just f' => Just (f' :$ a)
                            Nothing => map (f :$) (step a)
step _                  = Nothing

||| The trace of a term under a fuel bound, one line per state.
export
trace : Nat -> Term -> List String
trace Z     t = [show t ++ "   (out of fuel)"]
trace (S n) t = show t :: case step t of
                            Nothing => []
                            Just u  => trace n u

||| :exec traceCrown
export
traceCrown : IO ()
traceCrown = traverse_ putStrLn (trace 10 (S :$ K :$ K :$ (K :$ S)))

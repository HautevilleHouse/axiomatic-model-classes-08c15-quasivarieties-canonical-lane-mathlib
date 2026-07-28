import Mathlib.ModelTheory.Basic

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure Signature where
  functionSymbols : Type u
  relationSymbols : Type v
  arityFunction : functionSymbols → ℕ
  arityRelation : relationSymbols → ℕ

structure Algebra (S : Signature) where
  carrier : Type w
  functions : (f : S.functionSymbols) → (Fin (S.arityFunction f) → carrier) → carrier
  relations : (r : S.relationSymbols) → (Fin (S.arityRelation r) → carrier) → Prop

structure Homomorphism (A B : Algebra S) where
  map : A.carrier → B.carrier
  preservesFunctions : ∀ (f : S.functionSymbols) (args : Fin (S.arityFunction f) → A.carrier),
    map (A.functions f args) = B.functions f (map ∘ args)
  preservesRelations : ∀ (r : S.relationSymbols) (args : Fin (S.arityRelation r) → A.carrier),
    A.relations r args → B.relations r (map ∘ args)

structure Quasivariety (S : Signature) where
  class : Set (Algebra S)
  closedUnderIsomorphic : ∀ (A B : Algebra S), A ∈ class → (A ≅ B) → B ∈ class
  closedUnderSubalgebras : ∀ (A : Algebra S) (B : Subalgebra A), A ∈ class → B.toAlgebra ∈ class
  closedUnderProducts : ∀ (I : Type u) (A : I → Algebra S), (∀ i, A i ∈ class) → (∀ i, A i) ∈ class

structure QuasivarietyEvidence (Q : Quasivariety S) where
  closedUnderIsomorphicClosed : Q.closedUnderIsomorphic
  closedUnderSubalgebrasClosed : Q.closedUnderSubalgebras
  closedUnderProductsClosed : Q.closedUnderProducts

def QuasivarietyClosed (Q : Quasivariety S) : Prop :=
  Q.closedUnderIsomorphic ∧ Q.closedUnderSubalgebras ∧ Q.closedUnderProducts

theorem quasivariety_closed_from_evidence (Q : Quasivariety S) (E : QuasivarietyEvidence Q) :
    QuasivarietyClosed Q := by
  exact And.intro E.closedUnderIsomorphicClosed
    (And.intro E.closedUnderSubalgebrasClosed E.closedUnderProductsClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
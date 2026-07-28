import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.ClosureProperties

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure FreeAlgebra (S : Signature) (X : Type u) where
  carrier : Algebra S
  injection : X → carrier.carrier
  universalProperty : ∀ (A : Algebra S) (f : X → A.carrier),
    ∃! (h : Homomorphism carrier A), ∀ x, h.map (injection x) = f x

structure FreeAlgebraEvidence (F : FreeAlgebra S X) where
  injectionInjective : Function.Injective F.injection
  universalPropertyClosed : F.universalProperty

def FreeAlgebraClosed (F : FreeAlgebra S X) : Prop :=
  Function.Injective F.injection ∧ F.universalProperty

theorem free_algebra_closed_from_evidence (F : FreeAlgebra S X) (E : FreeAlgebraEvidence F) :
    FreeAlgebraClosed F := by
  exact And.intro E.injectionInjective E.universalPropertyClosed

structure BasisPackage (S : Signature) (Q : Quasivariety S) where
  freeAlgebraExists : ∀ (X : Type u), FreeAlgebra S X
  freeAlgebraInQ : ∀ (X : Type u), (freeAlgebraExists X).carrier ∈ Q.class
  finiteBasisProperty : Prop

structure BasisEvidence (B : BasisPackage S Q) where
  freeAlgebraExistsClosed : B.freeAlgebraExists
  freeAlgebraInQClosed : B.freeAlgebraInQ
  finiteBasisPropertyClosed : B.finiteBasisProperty

def BasisClosed (B : BasisPackage S Q) : Prop :=
  B.freeAlgebraExists ∧ (∀ X, (B.freeAlgebraExists X).carrier ∈ B.1.class) ∧ B.finiteBasisProperty

theorem basis_closed_from_evidence (B : BasisPackage S Q) (E : BasisEvidence B) : BasisClosed B := by
  exact And.intro E.freeAlgebraExistsClosed
    (And.intro E.freeAlgebraInQClosed E.finiteBasisPropertyClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
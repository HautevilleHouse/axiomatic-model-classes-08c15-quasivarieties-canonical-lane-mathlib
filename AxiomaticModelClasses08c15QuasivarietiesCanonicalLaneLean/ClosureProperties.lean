import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.QuasivarietyBasics

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure ClosurePackage (S : Signature) (Q : Quasivariety S) where
  productClosure : ∀ (I : Type u) (A : I → Algebra S), (∀ i, A i ∈ Q.class) → (∀ i → A i) ∈ Q.class
  subalgebraClosure : ∀ (A : Algebra S) (B : Subalgebra A), A ∈ Q.class → B.toAlgebra ∈ Q.class
  reducedProductClosure : ∀ (I : Type u) (F : Filter I) (A : I → Algebra S),
    (∀ i, A i ∈ Q.class) → (∏ A i / F) ∈ Q.class

structure ClosureEvidence {S : Signature} {Q : Quasivariety S} (C : ClosurePackage S Q) where
  productClosureClosed : C.productClosure
  subalgebraClosureClosed : C.subalgebraClosure
  reducedProductClosureClosed : C.reducedProductClosure

def ClosureClosed {S : Signature} {Q : Quasivariety S} (C : ClosurePackage S Q) : Prop :=
  C.productClosure ∧ C.subalgebraClosure ∧ C.reducedProductClosure

theorem closure_closed_from_evidence {S : Signature} {Q : Quasivariety S}
    (C : ClosurePackage S Q) (E : ClosureEvidence C) : ClosureClosed C := by
  exact And.intro E.productClosureClosed
    (And.intro E.subalgebraClosureClosed E.reducedProductClosureClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
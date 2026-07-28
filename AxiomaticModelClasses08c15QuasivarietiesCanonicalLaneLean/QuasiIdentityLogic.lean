import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasiIdentity where
  premises : List (Formula)
  conclusion : Formula
  varSet : List String

inductive Formula where
  | eq (t1 t2 : Term)
  | rel (r : String) (args : List Term)

data Term where
  | var (x : String)
  | op (f : String) (args : List Term)

structure QuasiIdentityEvidence (Q : QuasiIdentity) where
  premiseClosures : Q.premises.all (λ f => f.holdsInAlgebra (some Algebra))
  conclusionClosed : Q.conclusion.holdsInAlgebra (some Algebra)

def QuasiIdentityClosed (Q : QuasiIdentity) : Prop :=
  (∀ (A : QuasivarietyAlgebra), (∀ p ∈ Q.premises, p.holdsInAlgebra A) → Q.conclusion.holdsInAlgebra A)

theorem quasi_identity_closure_from_evidence (Q : QuasiIdentity) (E : QuasiIdentityEvidence Q) : QuasiIdentityClosed Q := by
  intro A hpremises
  sorry

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

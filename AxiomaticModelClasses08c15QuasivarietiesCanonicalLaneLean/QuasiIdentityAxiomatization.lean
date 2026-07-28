import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasiIdentity where
  premises : List (Formula)
  conclusion : Formula

definition Formula : Type := String

structure QuasiIdentityAxiomatizationPackage where
  quasiIdentities : List QuasiIdentity
  axiomatizedClass : QuasivarietyPackage
  allAxiomsHold : Prop
  closureUnderConsequence : Prop

structure QuasiIdentityAxiomatizationEvidence (A : QuasiIdentityAxiomatizationPackage) where
  allAxiomsHoldClosed : A.allAxiomsHold
  closureUnderConsequenceClosed : A.closureUnderConsequence

def QuasiIdentityAxiomatizationClosed (A : QuasiIdentityAxiomatizationPackage) : Prop :=
  A.allAxiomsHold ∧ A.closureUnderConsequence

theorem quasi_identity_axiomatization_closed_from_evidence
    (A : QuasiIdentityAxiomatizationPackage) (E : QuasiIdentityAxiomatizationEvidence A) :
    QuasiIdentityAxiomatizationClosed A := by
  exact And.intro E.allAxiomsHoldClosed E.closureUnderConsequenceClosed

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure FiniteBasisPackage where
  quasivariety : QuasivarietyPackage
  finiteAxiomatization : Prop
  finiteQuasiIdentityBasis : Prop
  basisExists : Prop

structure FiniteBasisEvidence (F : FiniteBasisPackage) where
  finiteAxiomatizationClosed : F.finiteAxiomatization
  finiteQuasiIdentityBasisClosed : F.finiteQuasiIdentityBasis
  basisExistsClosed : F.basisExists

def FiniteBasisClosed (F : FiniteBasisPackage) : Prop :=
  F.finiteAxiomatization ∧ F.finiteQuasiIdentityBasis ∧ F.basisExists

theorem finite_basis_closed_from_evidence (F : FiniteBasisPackage) (E : FiniteBasisEvidence F) :
    FiniteBasisClosed F := by
  exact And.intro E.finiteAxiomatizationClosed
    (And.intro E.finiteQuasiIdentityBasisClosed E.basisExistsClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
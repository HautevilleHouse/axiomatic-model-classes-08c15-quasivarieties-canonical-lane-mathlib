import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyClosurePackage where
  subalgebraClosure : Prop
  productClosure : Prop
  ultraproductClosure : Prop

def QuasivarietyClosureClosed (P : QuasivarietyClosurePackage) : Prop :=
  P.subalgebraClosure ∧ P.productClosure ∧ P.ultraproductClosure

structure QuasivarietyClosureEvidence (P : QuasivarietyClosurePackage) where
  subalgebraClosed : P.subalgebraClosure
  productClosed : P.productClosure
  ultraproductClosed : P.ultraproductClosure

theorem quasivariety_closure_closed_from_evidence (P : QuasivarietyClosurePackage) (E : QuasivarietyClosureEvidence P) : QuasivarietyClosureClosed P := by
  exact And.intro E.subalgebraClosed (And.intro E.productClosed E.ultraproductClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.QuasivarietyDefinitions

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure HornClosurePackage {Q : QuasivarietyPackage} where
  closureUnderHornFormulas : Prop
  closureUnderFiniteProducts : Prop
  closureUnderSubalgebras : Prop
  closureUnderDirectLimits : Prop

structure HornClosureEvidence {Q : QuasivarietyPackage} (H : HornClosurePackage Q) where
  closureUnderHornFormulasClosed : H.closureUnderHornFormulas
  closureUnderFiniteProductsClosed : H.closureUnderFiniteProducts
  closureUnderSubalgebrasClosed : H.closureUnderSubalgebras
  closureUnderDirectLimitsClosed : H.closureUnderDirectLimits

def HornClosureClosed {Q : QuasivarietyPackage} (H : HornClosurePackage Q) : Prop :=
  H.closureUnderHornFormulas ∧ H.closureUnderFiniteProducts ∧ H.closureUnderSubalgebras ∧ H.closureUnderDirectLimits

theorem horn_closure_closed_from_evidence {Q : QuasivarietyPackage} (H : HornClosurePackage Q) (E : HornClosureEvidence H) :
    HornClosureClosed H := by
  exact And.intro E.closureUnderHornFormulasClosed
    (And.intro E.closureUnderFiniteProductsClosed
      (And.intro E.closureUnderSubalgebrasClosed E.closureUnderDirectLimitsClosed))

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
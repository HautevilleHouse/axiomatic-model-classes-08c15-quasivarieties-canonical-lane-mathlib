import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyPackage where
  signature : Type
  carrier : Type
  operations : List (List Type → Type)
  quasiIdentities : List (Prop)
  closureUnderSubalgebras : Prop
  closureUnderProducts : Prop
  closureUnderDirectLimits : Prop
  quasivarietyDefinition : closureUnderSubalgebras ∧ closureUnderProducts ∧ closureUnderDirectLimits

structure QuasivarietyEvidence (Q : QuasivarietyPackage) where
  closureUnderSubalgebrasClosed : Q.closureUnderSubalgebras
  closureUnderProductsClosed : Q.closureUnderProducts
  closureUnderDirectLimitsClosed : Q.closureUnderDirectLimits

def QuasivarietyClosed (Q : QuasivarietyPackage) : Prop :=
  Q.closureUnderSubalgebras ∧ Q.closureUnderProducts ∧ Q.closureUnderDirectLimits

theorem quasivariety_closed_from_evidence (Q : QuasivarietyPackage) (E : QuasivarietyEvidence Q) : QuasivarietyClosed Q := by
  exact And.intro E.closureUnderSubalgebrasClosed
    (And.intro E.closureUnderProductsClosed E.closureUnderDirectLimitsClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
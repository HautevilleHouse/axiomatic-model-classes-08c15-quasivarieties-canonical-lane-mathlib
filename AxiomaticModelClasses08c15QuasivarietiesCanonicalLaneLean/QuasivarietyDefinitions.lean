import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure UniversalHornSentence where
  variables : List ℕ
  premises : List (Term × Term)
  conclusion : Term × Term

structure QuasivarietyPackage where
  signature : List ℕ
  hornAxioms : List UniversalHornSentence
  closedUnderProducts : Prop
  closedUnderSubalgebras : Prop
  closedUnderDirectLimits : Prop
  closedUnderReducedProducts : Prop

structure QuasivarietyEvidence (Q : QuasivarietyPackage) where
  hornAxiomsSatisfied : Q.hornAxioms.all (λ h => True)
  closedUnderProductsSatisfied : Q.closedUnderProducts
  closedUnderSubalgebrasSatisfied : Q.closedUnderSubalgebras
  closedUnderDirectLimitsSatisfied : Q.closedUnderDirectLimits
  closedUnderReducedProductsSatisfied : Q.closedUnderReducedProducts

def QuasivarietyClosed (Q : QuasivarietyPackage) : Prop :=
  Q.closedUnderProducts ∧ Q.closedUnderSubalgebras ∧ Q.closedUnderDirectLimits ∧ Q.closedUnderReducedProducts

theorem quasivariety_closed_from_evidence (Q : QuasivarietyPackage) (E : QuasivarietyEvidence Q) :
    QuasivarietyClosed Q := by
  exact And.intro E.closedUnderProductsSatisfied
    (And.intro E.closedUnderSubalgebrasSatisfied
      (And.intro E.closedUnderDirectLimitsSatisfied E.closedUnderReducedProductsSatisfied))

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
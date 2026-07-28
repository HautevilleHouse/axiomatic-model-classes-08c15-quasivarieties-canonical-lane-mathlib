import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.HornClosure

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure MalcevCondition where
  existenceOfTernaryTerm : Prop
  congruencePermutability : Prop
  pointRegularity : Prop

structure MalcevConditionPackage {Q : QuasivarietyPackage} (M : MalcevCondition) where
  existenceOfTernaryTermSatisfied : M.existenceOfTernaryTerm
  congruencePermutabilitySatisfied : M.congruencePermutability
  pointRegularitySatisfied : M.pointRegularity

structure MalcevConditionEvidence {Q : QuasivarietyPackage} {M : MalcevCondition} (P : MalcevConditionPackage M) where
  existenceOfTernaryTermClosed : P.existenceOfTernaryTermSatisfied
  congruencePermutabilityClosed : P.congruencePermutabilitySatisfied
  pointRegularityClosed : P.pointRegularitySatisfied

def MalcevConditionClosed {M : MalcevCondition} : Prop :=
  M.existenceOfTernaryTerm ∧ M.congruencePermutability ∧ M.pointRegularity

theorem malcev_condition_closed_from_evidence {Q : QuasivarietyPackage} {M : MalcevCondition} (P : MalcevConditionPackage M) (E : MalcevConditionEvidence P) :
    MalcevConditionClosed M := by
  exact And.intro E.existenceOfTernaryTermClosed
    (And.intro E.congruencePermutabilityClosed E.pointRegularityClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
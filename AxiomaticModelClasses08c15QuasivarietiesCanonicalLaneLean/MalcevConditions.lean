import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure MalcevConditionPackage where
  quasivariety : QuasivarietyPackage
  termExists : Prop
  congruencePermutability : Prop
  distributivity : Prop
  modularity : Prop

structure MalcevConditionEvidence (M : MalcevConditionPackage) where
  termExistsClosed : M.termExists
  congruencePermutabilityClosed : M.congruencePermutability
  distributivityClosed : M.distributivity
  modularityClosed : M.modularity

def MalcevConditionClosed (M : MalcevConditionPackage) : Prop :=
  M.termExists ∧ M.congruencePermutability ∧ M.distributivity ∧ M.modularity

theorem malcev_condition_closed_from_evidence (M : MalcevConditionPackage) (E : MalcevConditionEvidence M) :
    MalcevConditionClosed M := by
  exact And.intro E.termExistsClosed
    (And.intro E.congruencePermutabilityClosed
      (And.intro E.distributivityClosed E.modularityClosed))

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
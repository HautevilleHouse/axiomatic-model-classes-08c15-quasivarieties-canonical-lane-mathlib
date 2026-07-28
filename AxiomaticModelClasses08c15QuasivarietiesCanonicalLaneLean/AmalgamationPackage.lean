import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure AmalgamationPackage {S : QuasivarietyBasePackage} where
  amalgamationProperty : Prop
  embeddingPairs : Type
  pushoutExists : Prop
  transferOfEquations : Prop

structure AmalgamationEvidence {S : QuasivarietyBasePackage}
    (A : AmalgamationPackage S) where
  amalgamationPropertyClosed : A.amalgamationProperty
  pushoutExistsClosed : A.pushoutExists
  transferOfEquationsClosed : A.transferOfEquations

def AmalgamationClosed {S : QuasivarietyBasePackage}
    (A : AmalgamationPackage S) : Prop :=
  A.amalgamationProperty ∧ A.pushoutExists ∧ A.transferOfEquations

theorem amalgamation_closed_from_evidence {S : QuasivarietyBasePackage}
    (A : AmalgamationPackage S) (E : AmalgamationEvidence A) :
    AmalgamationClosed A := by
  exact And.intro E.amalgamationPropertyClosed
    (And.intro E.pushoutExistsClosed E.transferOfEquationsClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

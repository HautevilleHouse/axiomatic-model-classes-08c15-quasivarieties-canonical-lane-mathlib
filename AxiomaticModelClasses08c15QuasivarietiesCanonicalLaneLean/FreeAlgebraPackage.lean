import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure FreeAlgebraPackage {S : QuasivarietyBasePackage} where
  freeAlgebraOnGeneratorSet : Type u → Type v
  universalMappingProperty : Prop
  freenessWitness : freeAlgebraOnGeneratorSet → freeAlgebraOnGeneratorSet → Prop
  basisClosedUnderEquations : Prop

structure FreeAlgebraEvidence {S : QuasivarietyBasePackage}
    (F : FreeAlgebraPackage S) where
  universalMappingPropertyClosed : F.universalMappingProperty
  basisClosedUnderEquationsClosed : F.basisClosedUnderEquations

def FreeAlgebraClosed {S : QuasivarietyBasePackage}
    (F : FreeAlgebraPackage S) : Prop :=
  F.universalMappingProperty ∧ F.basisClosedUnderEquations

theorem free_algebra_closed_from_evidence {S : QuasivarietyBasePackage}
    (F : FreeAlgebraPackage S) (E : FreeAlgebraEvidence F) :
    FreeAlgebraClosed F := by
  exact And.intro E.universalMappingPropertyClosed E.basisClosedUnderEquationsClosed

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

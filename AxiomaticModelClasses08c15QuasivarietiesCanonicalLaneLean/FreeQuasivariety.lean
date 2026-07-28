import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure FreeQuasivarietyPackage where
  quasivariety : QuasivarietyPackage
  generatorSet : Type u
  freeAlgebra : Type v
  universalMappingProperty : Prop
  freeAlgebraInQuasivariety : Prop

structure FreeQuasivarietyEvidence (F : FreeQuasivarietyPackage) where
  universalMappingPropertyClosed : F.universalMappingProperty
  freeAlgebraInQuasivarietyClosed : F.freeAlgebraInQuasivariety

def FreeQuasivarietyClosed (F : FreeQuasivarietyPackage) : Prop :=
  F.universalMappingProperty ∧ F.freeAlgebraInQuasivariety

theorem free_quasivariety_closed_from_evidence (F : FreeQuasivarietyPackage) (E : FreeQuasivarietyEvidence F) :
    FreeQuasivarietyClosed F := by
  exact And.intro E.universalMappingPropertyClosed E.freeAlgebraInQuasivarietyClosed

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
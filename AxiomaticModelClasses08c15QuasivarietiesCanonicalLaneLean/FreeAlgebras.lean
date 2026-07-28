import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure FreeAlgebraPackage where
  generatingSet : Type
  freeAlgebra : QuasivarietyAlgebra
  universalProperty : Prop

def FreeAlgebraClosed (F : FreeAlgebraPackage) : Prop :=
  F.universalProperty

structure FreeAlgebraEvidence (F : FreeAlgebraPackage) where
  universalPropertyClosed : F.universalProperty

theorem free_algebra_closed_from_evidence (F : FreeAlgebraPackage) (E : FreeAlgebraEvidence F) : FreeAlgebraClosed F := by
  exact E.universalPropertyClosed

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

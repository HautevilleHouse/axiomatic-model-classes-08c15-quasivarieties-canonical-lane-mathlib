import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyBasePackage where
  signature : Type u
  equations : List (Term signature)
  finiteBasis : Prop
  closedUnderSubdirectProducts : Prop
  freeAlgebraExists : Prop

structure QuasivarietyBaseEvidence (P : QuasivarietyBasePackage) where
  finiteBasisClosed : P.finiteBasis
  closedUnderSubdirectProductsClosed : P.closedUnderSubdirectProducts
  freeAlgebraExistsClosed : P.freeAlgebraExists

def QuasivarietyBaseClosed (P : QuasivarietyBasePackage) : Prop :=
  P.finiteBasis ∧ P.closedUnderSubdirectProducts ∧ P.freeAlgebraExists

theorem quasivariety_base_closed_from_evidence (P : QuasivarietyBasePackage)
    (E : QuasivarietyBaseEvidence P) : QuasivarietyBaseClosed P := by
  exact And.intro E.finiteBasisClosed
    (And.intro E.closedUnderSubdirectProductsClosed E.freeAlgebraExistsClosed)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

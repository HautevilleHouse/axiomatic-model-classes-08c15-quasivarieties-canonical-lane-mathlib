import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyLatticePackage {S : QuasivarietyBasePackage} where
  latticeOfSubquasivarieties : Type u
  joinOperation : latticeOfSubquasivarieties → latticeOfSubquasivarieties → latticeOfSubquasivarieties
  meetOperation : latticeOfSubquasivarieties → latticeOfSubquasivarieties → latticeOfSubquasivarieties
  bottomElement : latticeOfSubquasivarieties
  topElement : latticeOfSubquasivarieties
  latticeLaws : Prop
  closureUnderJoins : Prop

structure QuasivarietyLatticeEvidence {S : QuasivarietyBasePackage}
    (L : QuasivarietyLatticePackage S) where
  latticeLawsClosed : L.latticeLaws
  closureUnderJoinsClosed : L.closureUnderJoins

def QuasivarietyLatticeClosed {S : QuasivarietyBasePackage}
    (L : QuasivarietyLatticePackage S) : Prop :=
  L.latticeLaws ∧ L.closureUnderJoins

theorem quasivariety_lattice_closed_from_evidence {S : QuasivarietyBasePackage}
    (L : QuasivarietyLatticePackage S) (E : QuasivarietyLatticeEvidence L) :
    QuasivarietyLatticeClosed L := by
  exact And.intro E.latticeLawsClosed E.closureUnderJoinsClosed

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse

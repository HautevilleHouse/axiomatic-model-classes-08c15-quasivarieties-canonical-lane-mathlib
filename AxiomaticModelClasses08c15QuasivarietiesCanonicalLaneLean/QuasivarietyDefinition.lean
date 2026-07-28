import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyPackage where
  signature : Type u
  structures : Type v
  closedUnderIsomorphisms : Prop
  closedUnderSubalgebras : Prop
  closedUnderProducts : Prop
  closedUnderUltraproducts : Prop

structure QuasivarietyEvidence (Q : QuasivarietyPackage) where
  closedUnderIsomorphismsClosed : Q.closedUnderIsomorphisms
  closedUnderSubalgebrasClosed : Q.closedUnderSubalgebras
  closedUnderProductsClosed : Q.closedUnderProducts
  closedUnderUltraproductsClosed : Q.closedUnderUltraproducts

def QuasivarietyClosed (Q : QuasivarietyPackage) : Prop :=
  Q.closedUnderIsomorphisms ∧ Q.closedUnderSubalgebras ∧
  Q.closedUnderProducts ∧ Q.closedUnderUltraproducts

theorem quasivariety_closed_from_evidence (Q : QuasivarietyPackage) (E : QuasivarietyEvidence Q) :
    QuasivarietyClosed Q := by
  exact And.intro E.closedUnderIsomorphismsClosed
    (And.intro E.closedUnderSubalgebrasClosed
      (And.intro E.closedUnderProductsClosed E.closedUnderUltraproductsClosed))

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
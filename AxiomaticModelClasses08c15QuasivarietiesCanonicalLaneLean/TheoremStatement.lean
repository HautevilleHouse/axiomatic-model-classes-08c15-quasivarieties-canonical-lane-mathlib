import AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.QuasivarietyObjects

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyStructure where
  carrier : Type
  signature : Type
  operations : List (Type → Type)
  relations : List (Type → Type)
  quasivarietyAxioms : Prop

def universalHornClosure (Q : QuasivarietyStructure) : Prop :=
  Q.quasivarietyAxioms

structure QuasivarietyAdmittedObject where
  structure : QuasivarietyStructure
  closedUnderSubstructures : Prop
  closedUnderProducts : Prop
  axiomatizedByUniversalHorn : Prop
  conclusion : closedUnderSubstructures ∧ closedUnderProducts ∧ axiomatizedByUniversalHorn

def QuasivarietyWitnessClosed (O : QuasivarietyAdmittedObject) : Prop :=
  O.closedUnderSubstructures ∧ O.closedUnderProducts

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
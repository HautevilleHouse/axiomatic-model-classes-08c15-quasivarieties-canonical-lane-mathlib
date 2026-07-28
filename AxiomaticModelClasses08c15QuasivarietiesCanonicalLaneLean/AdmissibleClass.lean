import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

structure QuasivarietyAdmittedObject where
  signature : Type
  carrier : Type
  operations : List (List Type → Type)
  axioms : List (Prop)
  isQuasivariety : Prop
  conclusion : isQuasivariety

def QuasivarietyWitnessClosed (O : QuasivarietyAdmittedObject) : Prop :=
  O.isQuasivariety

structure AdmissibleClass where
  object : QuasivarietyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QuasivarietyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
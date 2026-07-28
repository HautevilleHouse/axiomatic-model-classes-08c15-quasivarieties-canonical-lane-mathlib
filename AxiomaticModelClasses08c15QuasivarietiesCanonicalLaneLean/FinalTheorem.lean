import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.QuasivarietyBridge

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedQuasivarietyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quasivariety_endgame (A : AdmissibleClass) :
    ConstrainedQuasivarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
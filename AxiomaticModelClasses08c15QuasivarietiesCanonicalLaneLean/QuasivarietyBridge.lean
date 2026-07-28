import HautevilleHouse.AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  QuasivarietyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AxiomaticModelClasses08c15QuasivarietiesCanonicalLaneLean
end HautevilleHouse
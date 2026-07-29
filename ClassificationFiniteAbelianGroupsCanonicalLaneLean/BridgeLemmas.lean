import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbelianGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
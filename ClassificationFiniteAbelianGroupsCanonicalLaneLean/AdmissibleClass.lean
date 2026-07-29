import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedAbelianGroup
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbelianGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
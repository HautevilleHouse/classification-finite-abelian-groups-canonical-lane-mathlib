import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

def ConstrainedClassificationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classification_endgame (A : AdmissibleClass) :
    ConstrainedClassificationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure PrimaryDecompositionPackage where
  group : Type u
  groupIsFiniteAbelian : Prop
  primePowerFactors : List (Nat × Type u)
  decompositionIsomorphism : Prop
  primaryComponentsIndependent : Prop

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.decompositionIsomorphism ∧ P.primaryComponentsIndependent

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  decompositionIsomorphismClosed : P.decompositionIsomorphism
  primaryComponentsIndependentClosed : P.primaryComponentsIndependent

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage)
    (E : PrimaryDecompositionEvidence P) : PrimaryDecompositionClosed P :=
  And.intro E.decompositionIsomorphismClosed E.primaryComponentsIndependentClosed

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

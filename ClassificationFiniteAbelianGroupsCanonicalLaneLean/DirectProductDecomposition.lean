import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure DirectProductDecompositionPackage where
  G : Type u
  H : Type v
  K : Type w
  [instGroupG : Group G]
  [instGroupH : Group H]
  [instGroupK : Group K]
  [instFintypeG : Fintype G]
  [instFintypeH : Fintype H]
  [instFintypeK : Fintype K]
  isomorphism : G ≃* (H × K)
  decompositionInCyclicComponents : Prop
  factorOrdersKnown : Prop
  decompositionInCyclicComponentsTerm : decompositionInCyclicComponents
  factorOrdersKnownTerm : factorOrdersKnown

structure DirectProductDecompositionEvidence (D : DirectProductDecompositionPackage) where
  decompositionInCyclicComponentsClosed : D.decompositionInCyclicComponents
  factorOrdersKnownClosed : D.factorOrdersKnown

def DirectProductDecompositionClosed (D : DirectProductDecompositionPackage) : Prop :=
  D.decompositionInCyclicComponents ∧ D.factorOrdersKnown

theorem direct_product_decomposition_closed_from_evidence (D : DirectProductDecompositionPackage)
    (E : DirectProductDecompositionEvidence D) : DirectProductDecompositionClosed D := by
  exact And.intro E.decompositionInCyclicComponentsClosed E.factorOrdersKnownClosed

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

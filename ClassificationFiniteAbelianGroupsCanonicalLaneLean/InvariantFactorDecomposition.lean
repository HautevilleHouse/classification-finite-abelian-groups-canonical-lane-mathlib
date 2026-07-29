import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure InvariantFactorDecompositionPackage where
  group : Type u
  groupIsFiniteAbelian : Prop
  invariantFactors : List ℕ
  factorsChainDivisibility : Prop
  productIsomorphism : Prop

def InvariantFactorDecompositionClosed (D : InvariantFactorDecompositionPackage) : Prop :=
  D.factorsChainDivisibility ∧ D.productIsomorphism

structure InvariantFactorDecompositionEvidence (D : InvariantFactorDecompositionPackage) where
  factorsChainDivisibilityClosed : D.factorsChainDivisibility
  productIsomorphismClosed : D.productIsomorphism

theorem invariant_factor_decomposition_closed_from_evidence
    (D : InvariantFactorDecompositionPackage)
    (E : InvariantFactorDecompositionEvidence D) : InvariantFactorDecompositionClosed D :=
  And.intro E.factorsChainDivisibilityClosed E.productIsomorphismClosed

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

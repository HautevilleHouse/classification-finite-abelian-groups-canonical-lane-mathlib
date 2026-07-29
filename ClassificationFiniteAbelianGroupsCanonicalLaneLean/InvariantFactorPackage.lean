import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure InvariantFactorPackage (A : AdmissibleClass) where
  group : Type u
  groupIsFiniteAbelian : Prop
  invariantFactors : List ℕ
  eachDivisor : Prop
  eachGreaterOne : Prop
  productEqualsOrder : Prop
  uniqueness : Prop

structure InvariantFactorEvidence {A : AdmissibleClass} (P : InvariantFactorPackage A) where
  groupIsFiniteAbelianClosed : P.groupIsFiniteAbelian
  eachDivisorClosed : P.eachDivisor
  eachGreaterOneClosed : P.eachGreaterOne
  productEqualsOrderClosed : P.productEqualsOrder
  uniquenessClosed : P.uniqueness

def InvariantFactorClosed {A : AdmissibleClass} (P : InvariantFactorPackage A) : Prop :=
  P.groupIsFiniteAbelian ∧ P.eachDivisor ∧ P.eachGreaterOne ∧
  P.productEqualsOrder ∧ P.uniqueness

theorem invariant_factor_closed_from_evidence
    {A : AdmissibleClass} (P : InvariantFactorPackage A)
    (E : InvariantFactorEvidence P) : InvariantFactorClosed P := by
  exact And.intro E.groupIsFiniteAbelianClosed
    (And.intro E.eachDivisorClosed
      (And.intro E.eachGreaterOneClosed
        (And.intro E.productEqualsOrderClosed E.uniquenessClosed)))

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
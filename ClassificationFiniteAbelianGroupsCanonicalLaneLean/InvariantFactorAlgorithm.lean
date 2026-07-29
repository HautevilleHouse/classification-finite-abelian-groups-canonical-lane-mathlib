import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure InvariantFactorAlgorithmPackage where
  algorithmType : Type
  computesInvariantFactors : Prop
  correctnessProof : Prop
  terminatesOnAllInputs : Prop
  algorithmTypeTerm : algorithmType
  computesInvariantFactorsTerm : computesInvariantFactors
  correctnessProofTerm : correctnessProof
  terminatesOnAllInputsTerm : terminatesOnAllInputs

structure InvariantFactorAlgorithmEvidence (A : InvariantFactorAlgorithmPackage) where
  computesInvariantFactorsClosed : A.computesInvariantFactors
  correctnessProofClosed : A.correctnessProof
  terminatesOnAllInputsClosed : A.terminatesOnAllInputs

def InvariantFactorAlgorithmClosed (A : InvariantFactorAlgorithmPackage) : Prop :=
  A.computesInvariantFactors ∧ A.correctnessProof ∧ A.terminatesOnAllInputs

theorem invariant_factor_algorithm_closed_from_evidence (A : InvariantFactorAlgorithmPackage)
    (E : InvariantFactorAlgorithmEvidence A) : InvariantFactorAlgorithmClosed A := by
  exact And.intro E.computesInvariantFactorsClosed
    (And.intro E.correctnessProofClosed E.terminatesOnAllInputsClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

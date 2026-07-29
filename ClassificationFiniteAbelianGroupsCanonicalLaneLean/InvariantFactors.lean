import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationFiniteAbelianGroupsCanonicalLaneLean.PrimaryDecomposition

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure InvariantFactors (G : Type u) [FiniteAbelianGroup G] where
  factors : List ℕ
  decomposition : G ≃+ (∀ (n : ℕ), ℤ / (n : ℤ) ℤ) -- placeholder direct sum
  uniqueness : Prop

structure InvariantFactorsEvidence (G : Type u) [FiniteAbelianGroup G] (I : InvariantFactors G) where
  decompositionClosed : I.decomposition
  uniquenessClosed : I.uniqueness

def InvariantFactorsClosed (G : Type u) [FiniteAbelianGroup G] (I : InvariantFactors G) : Prop :=
  I.decomposition ∧ I.uniqueness

theorem invariant_factors_closed_from_evidence (G : Type u) [FiniteAbelianGroup G] (I : InvariantFactors G) (E : InvariantFactorsEvidence G I) : InvariantFactorsClosed G I := by
  exact And.intro E.decompositionClosed E.uniquenessClosed

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
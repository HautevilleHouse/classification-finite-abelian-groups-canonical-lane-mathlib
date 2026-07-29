import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationFiniteAbelianGroupsCanonicalLaneLean.InvariantFactors
import HautevilleHouse.ClassificationFiniteAbelianGroupsCanonicalLaneLean.PrimaryDecomposition

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure ClassificationTheorem (G : Type u) [FiniteAbelianGroup G] where
  primaryDecomp : PrimaryDecomposition G
  invFactors : InvariantFactors G
  equivalence : Prop

structure ClassificationTheoremEvidence (G : Type u) [FiniteAbelianGroup G] (C : ClassificationTheorem G) where
  primaryDecompClosed : PrimaryDecompositionClosed G C.primaryDecomp
  invFactorsClosed : InvariantFactorsClosed G C.invFactors
  equivalenceClosed : C.equivalence

def ClassificationTheoremClosed (G : Type u) [FiniteAbelianGroup G] (C : ClassificationTheorem G) : Prop :=
  PrimaryDecompositionClosed G C.primaryDecomp ∧ InvariantFactorsClosed G C.invFactors ∧ C.equivalence

theorem classification_theorem_closed_from_evidence (G : Type u) [FiniteAbelianGroup G] (C : ClassificationTheorem G) (E : ClassificationTheoremEvidence G C) : ClassificationTheoremClosed G C := by
  exact And.intro E.primaryDecompClosed (And.intro E.invFactorsClosed E.equivalenceClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
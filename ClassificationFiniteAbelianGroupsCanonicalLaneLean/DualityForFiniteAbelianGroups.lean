import ClassificationFiniteAbelianGroupsCanonicalLaneLean.SmithNormalForm

/-!
# Duality for Finite Abelian Groups Package
-/

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure DualityPackage {I : InvariantFactorPackage}
    {P : PrimaryDecompositionPackage I} {S : SmithNormalFormPackage I P} where
  characterGroup : Type
  pontryaginDuality : Prop
  selfDuality : Prop
  dualityPreservesDecomposition : Prop

structure DualityEvidence {I : InvariantFactorPackage}
    {P : PrimaryDecompositionPackage I} {S : SmithNormalFormPackage I P}
    (D : DualityPackage I P S) where
  pontryaginDualityClosed : D.pontryaginDuality
  selfDualityClosed : D.selfDuality
  dualityPreservesDecompositionClosed : D.dualityPreservesDecomposition

def DualityClosed {I : InvariantFactorPackage}
    {P : PrimaryDecompositionPackage I} {S : SmithNormalFormPackage I P}
    (D : DualityPackage I P S) : Prop :=
  D.pontryaginDuality ∧ D.selfDuality ∧ D.dualityPreservesDecomposition

theorem duality_closed_from_evidence
    {I : InvariantFactorPackage} {P : PrimaryDecompositionPackage I}
    {S : SmithNormalFormPackage I P} (D : DualityPackage I P S)
    (E : DualityEvidence D) : DualityClosed D := by
  exact And.intro E.pontryaginDualityClosed
    (And.intro E.selfDualityClosed E.dualityPreservesDecompositionClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationFiniteAbelianGroupsCanonicalLaneLean.AbelianGroupStructure

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure FiniteAbelianGroup (G : Type u) where
  abelianGroup : AbelianGroup G
  finite : Fintype G

structure FiniteAbelianGroupEvidence (G : Type u) (F : FiniteAbelianGroup G) where
  abelianGroupClosed : AbelianGroupClosed G F.abelianGroup
  finiteClosed : F.finite

def FiniteAbelianGroupClosed (G : Type u) (F : FiniteAbelianGroup G) : Prop :=
  AbelianGroupClosed G F.abelianGroup ∧ F.finite

theorem finite_abelian_group_closed_from_evidence (G : Type u) (F : FiniteAbelianGroup G) (E : FiniteAbelianGroupEvidence G F) : FiniteAbelianGroupClosed G F := by
  exact And.intro E.abelianGroupClosed E.finiteClosed

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
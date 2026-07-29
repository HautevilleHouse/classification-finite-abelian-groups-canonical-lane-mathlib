import canonicalLaneMathlib.AdmissibleClass
import ClassificationFiniteAbelianGroupsCanonicalLaneLean.CayleyDecomposition

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure FundamentalTheoremPackage where
  G : Type u
  [instGroup : Group G]
  [instFintype : Fintype G]
  [instAbelian : Abelian G]
  decomposesIntoCyclicGroups : Prop
  uniquenessOfDecomposition : Prop
  everyFiniteAbelianGroupClassified : Prop
  decomposesIntoCyclicGroupsTerm : decomposesIntoCyclicGroups
  uniquenessOfDecompositionTerm : uniquenessOfDecomposition
  everyFiniteAbelianGroupClassifiedTerm : everyFiniteAbelianGroupClassified

structure FundamentalTheoremEvidence (F : FundamentalTheoremPackage) where
  decomposesIntoCyclicGroupsClosed : F.decomposesIntoCyclicGroups
  uniquenessOfDecompositionClosed : F.uniquenessOfDecomposition
  everyFiniteAbelianGroupClassifiedClosed : F.everyFiniteAbelianGroupClassified

def FundamentalTheoremClosed (F : FundamentalTheoremPackage) : Prop :=
  F.decomposesIntoCyclicGroups ∧ F.uniquenessOfDecomposition ∧ F.everyFiniteAbelianGroupClassified

theorem fundamental_theorem_closed_from_evidence (F : FundamentalTheoremPackage)
    (E : FundamentalTheoremEvidence F) : FundamentalTheoremClosed F := by
  exact And.intro E.decomposesIntoCyclicGroupsClosed
    (And.intro E.uniquenessOfDecompositionClosed E.everyFiniteAbelianGroupClassifiedClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

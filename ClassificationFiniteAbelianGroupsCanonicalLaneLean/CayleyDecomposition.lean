import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure CayleyDecompositionPackage where
  G : Type u
  [instGroup : Group G]
  [instFintype : Fintype G]
  [instAbelian : Abelian G]
  decompositionIntoCyclics : Prop
  invariantFactorUniqueness : Prop
  invariantFactorExistence : Prop
  decompositionIntoCyclicsTerm : decompositionIntoCyclics
  invariantFactorUniquenessTerm : invariantFactorUniqueness
  invariantFactorExistenceTerm : invariantFactorExistence

structure CayleyDecompositionEvidence (C : CayleyDecompositionPackage) where
  decompositionIntoCyclicsClosed : C.decompositionIntoCyclics
  invariantFactorUniquenessClosed : C.invariantFactorUniqueness
  invariantFactorExistenceClosed : C.invariantFactorExistence

def CayleyDecompositionClosed (C : CayleyDecompositionPackage) : Prop :=
  C.decompositionIntoCyclics ∧ C.invariantFactorUniqueness ∧ C.invariantFactorExistence

theorem cayley_decomposition_closed_from_evidence (C : CayleyDecompositionPackage)
    (E : CayleyDecompositionEvidence C) : CayleyDecompositionClosed C := by
  exact And.intro E.decompositionIntoCyclicsClosed
    (And.intro E.invariantFactorUniquenessClosed E.invariantFactorExistenceClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

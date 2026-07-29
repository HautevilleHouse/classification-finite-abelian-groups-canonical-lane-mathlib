import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure CyclicGroupDecompositionPackage (A : AdmissibleClass) where
  group : Type u
  groupIsFiniteAbelian : Prop
  cyclicDecomposition : List (Type u)
  eachCyclic : Prop
  directProductIsomorphism : Prop

structure CyclicGroupDecompositionEvidence {A : AdmissibleClass} (P : CyclicGroupDecompositionPackage A) where
  groupIsFiniteAbelianClosed : P.groupIsFiniteAbelian
  eachCyclicClosed : P.eachCyclic
  directProductIsomorphismClosed : P.directProductIsomorphism

def CyclicGroupDecompositionClosed {A : AdmissibleClass} (P : CyclicGroupDecompositionPackage A) : Prop :=
  P.groupIsFiniteAbelian ∧ P.eachCyclic ∧ P.directProductIsomorphism

theorem cyclic_group_decomposition_closed_from_evidence
    {A : AdmissibleClass} (P : CyclicGroupDecompositionPackage A)
    (E : CyclicGroupDecompositionEvidence P) : CyclicGroupDecompositionClosed P := by
  exact And.intro E.groupIsFiniteAbelianClosed
    (And.intro E.eachCyclicClosed E.directProductIsomorphismClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure SmithNormalFormPackage where
  matrixType : Type
  [instRing : Ring matrixType]
  diagonalFormExists : Prop
  diagonalEntriesDivideEachOther : Prop
  computeInvariantFactors : Prop
  diagonalFormExistsTerm : diagonalFormExists
  diagonalEntriesDivideEachOtherTerm : diagonalEntriesDivideEachOther
  computeInvariantFactorsTerm : computeInvariantFactors

structure SmithNormalFormEvidence (S : SmithNormalFormPackage) where
  diagonalFormExistsClosed : S.diagonalFormExists
  diagonalEntriesDivideEachOtherClosed : S.diagonalEntriesDivideEachOther
  computeInvariantFactorsClosed : S.computeInvariantFactors

def SmithNormalFormClosed (S : SmithNormalFormPackage) : Prop :=
  S.diagonalFormExists ∧ S.diagonalEntriesDivideEachOther ∧ S.computeInvariantFactors

theorem smith_normal_form_closed_from_evidence (S : SmithNormalFormPackage)
    (E : SmithNormalFormEvidence S) : SmithNormalFormClosed S := by
  exact And.intro E.diagonalFormExistsClosed
    (And.intro E.diagonalEntriesDivideEachOtherClosed E.computeInvariantFactorsClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse

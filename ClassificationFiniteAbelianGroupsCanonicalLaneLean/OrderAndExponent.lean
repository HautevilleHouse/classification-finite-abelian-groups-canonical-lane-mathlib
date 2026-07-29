import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure OrderAndExponentPackage (A : AdmissibleClass) where
  group : Type u
  groupIsFiniteAbelian : Prop
  order : ℕ
  exponent : ℕ
  exponentDividesOrder : Prop
  exponentProperties : Prop

structure OrderAndExponentEvidence {A : AdmissibleClass} (P : OrderAndExponentPackage A) where
  groupIsFiniteAbelianClosed : P.groupIsFiniteAbelian
  exponentDividesOrderClosed : P.exponentDividesOrder
  exponentPropertiesClosed : P.exponentProperties

def OrderAndExponentClosed {A : AdmissibleClass} (P : OrderAndExponentPackage A) : Prop :=
  P.groupIsFiniteAbelian ∧ P.exponentDividesOrder ∧ P.exponentProperties

theorem order_and_exponent_closed_from_evidence
    {A : AdmissibleClass} (P : OrderAndExponentPackage A)
    (E : OrderAndExponentEvidence P) : OrderAndExponentClosed P := by
  exact And.intro E.groupIsFiniteAbelianClosed
    (And.intro E.exponentDividesOrderClosed E.exponentPropertiesClosed)

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
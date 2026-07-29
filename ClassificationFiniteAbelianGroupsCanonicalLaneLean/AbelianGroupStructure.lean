import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure AbelianGroup (G : Type u) where
  mul : G → G → G
  inv : G → G
  one : G
  mul_assoc : ∀ a b c : G, mul (mul a b) c = mul a (mul b c)
  one_mul : ∀ a : G, mul one a = a
  mul_one : ∀ a : G, mul a one = a
  mul_inv_self : ∀ a : G, mul a (inv a) = one
  inv_mul_self : ∀ a : G, mul (inv a) a = one
  comm : ∀ a b : G, mul a b = mul b a

structure AbelianGroupEvidence (G : Type u) (A : AbelianGroup G) where
  mul_assoc_closed : A.mul_assoc
  one_mul_closed : A.one_mul
  mul_one_closed : A.mul_one
  mul_inv_self_closed : A.mul_inv_self
  inv_mul_self_closed : A.inv_mul_self
  comm_closed : A.comm

def AbelianGroupClosed (G : Type u) (A : AbelianGroup G) : Prop :=
  A.mul_assoc ∧ A.one_mul ∧ A.mul_one ∧ A.mul_inv_self ∧ A.inv_mul_self ∧ A.comm

theorem abelian_group_closed_from_evidence (G : Type u) (A : AbelianGroup G) (E : AbelianGroupEvidence G A) : AbelianGroupClosed G A := by
  exact And.intro E.mul_assoc_closed (And.intro E.one_mul_closed (And.intro E.mul_one_closed (And.intro E.mul_inv_self_closed (And.intro E.inv_mul_self_closed E.comm_closed))))

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
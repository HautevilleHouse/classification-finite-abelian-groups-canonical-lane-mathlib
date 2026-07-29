import ClassificationFiniteAbelianGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  classificationStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "classification-finite-abelian-groups-canonical-lane",
  theoremName := "Classification of Finite Abelian Groups",
  theoremObject := "Every finite abelian group is isomorphic to a direct sum of cyclic groups of prime power order.",
  classicalBoundary := "classical boundary carried by Mathlib's Fintype and ZMod libraries",
  classificationStatement := "Every finite abelian group is isomorphic to a direct product of cyclic groups whose orders are powers of primes.",
  certificateLane := "abelian_group_constrained",
  carriedRemainder := "Remaining classical boundary: explicit Morita equivalence for primary decomposition; done by Mathlib's `Fintype` and `ZMod`."
}

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
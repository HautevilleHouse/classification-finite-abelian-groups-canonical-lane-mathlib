import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationFiniteAbelianGroupsCanonicalLaneLean

structure AdmittedAbelianGroup where
  G : Type
  group : Group G
  finite : Fintype G
  abelian : AbelianGroup G
  decompositionType : List ℕ  -- invariant factors
  conclusion : decompositionType = invariantFactors G

structure AbelianEndgameState where
  object : AdmittedAbelianGroup

def AbelianGroupWitnessClosed (O : AdmittedAbelianGroup) : Prop :=
  O.conclusion

end ClassificationFiniteAbelianGroupsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure ProjectivePlane (n : ℕ) where
  points : Type u
  lines : Type v
  incidence : points → lines → Prop
  finitePoints : Fintype points
  finiteLines : Fintype lines
  orderN : Fintype.card points = n^2 + n + 1
  eachLineHasNPlus1 : ∀ L : lines, Fintype.card {P : points // incidence P L} = n + 1
  eachPointOnNPlus1Lines : ∀ P : points, Fintype.card {L : lines // incidence P L} = n + 1
  anyTwoPointsOnOneLine : ∀ P Q : points, P ≠ Q → ∃! L : lines, incidence P L ∧ incidence Q L
  anyTwoLinesIntersect : ∀ L M : lines, L ≠ M → ∃! P : points, incidence P L ∧ incidence P M

def ProjectivePlaneClosed (π : ProjectivePlane n) : Prop :=
  π.eachLineHasNPlus1 ∧ π.eachPointOnNPlus1Lines ∧ π.anyTwoPointsOnOneLine ∧ π.anyTwoLinesIntersect

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
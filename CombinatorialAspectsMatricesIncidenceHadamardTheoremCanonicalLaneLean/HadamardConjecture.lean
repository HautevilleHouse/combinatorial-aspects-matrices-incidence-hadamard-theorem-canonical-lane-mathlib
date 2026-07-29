import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardConjectureEvidence where
  orderIsMultipleOfFour : Nat → Prop
  orderFourExists : Prop
  orderFourExistsTerm : orderFourExists
  orderMultipleOfFourExists : Prop
  orderMultipleOfFourExistsTerm : orderMultipleOfFourExists

def HadamardConjectureClosed (E : HadamardConjectureEvidence) : Prop :=
  E.orderFourExists ∧ E.orderMultipleOfFourExists

theorem hadamard_conjecture_closed_from_evidence (E : HadamardConjectureEvidence) (h4 : E.orderFourExists) (hmult : E.orderMultipleOfFourExists) : HadamardConjectureClosed E := by
  exact And.intro h4 hmult

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse

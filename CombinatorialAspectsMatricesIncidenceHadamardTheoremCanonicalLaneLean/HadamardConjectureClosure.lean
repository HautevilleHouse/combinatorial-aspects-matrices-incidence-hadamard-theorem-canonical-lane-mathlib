import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.BridgeLemmas
import CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

def ConstrainedHadamardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hadamard_endgame (A : AdmissibleClass) :
    ConstrainedHadamardClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
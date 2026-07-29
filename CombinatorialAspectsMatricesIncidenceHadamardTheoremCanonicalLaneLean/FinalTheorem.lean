import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.HadamardMatrixExistence
import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.IncidenceMatrixProperties

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

def ConstrainedHadamardClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hadamard_endgame (A : AdmissibleClass) :
    ConstrainedHadamardClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
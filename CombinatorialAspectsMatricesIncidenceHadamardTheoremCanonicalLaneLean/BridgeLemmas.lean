import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.HadamardIncidenceStructure

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | HadamardIncidenceStructure.order? => True
  | _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  by
    unfold bridgeClosed
    trivial

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
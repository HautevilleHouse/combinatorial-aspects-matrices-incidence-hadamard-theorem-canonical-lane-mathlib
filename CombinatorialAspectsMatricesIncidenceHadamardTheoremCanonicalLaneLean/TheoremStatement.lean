import HautevilleHouse.CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardAdmittedObject where
  matrix : Type
  entries : Type
  hadamardProperty : Prop
  orderSatisfied : Prop
  conclusion : orderSatisfied

def HadamardWitnessClosed (O : HadamardAdmittedObject) : Prop :=
  O.orderSatisfied

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
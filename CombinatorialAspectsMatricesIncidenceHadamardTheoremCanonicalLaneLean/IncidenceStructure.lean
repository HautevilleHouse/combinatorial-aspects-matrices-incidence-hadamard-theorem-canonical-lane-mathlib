import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure IncidenceStructure (V : Type u) (B : Type v) where
  incidence : V → B → Prop
  symmetric : Prop
  regular : Prop

def incidenceStructureClosed {V : Type u} {B : Type v} (I : IncidenceStructure V B) : Prop :=
  I.symmetric ∧ I.regular

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
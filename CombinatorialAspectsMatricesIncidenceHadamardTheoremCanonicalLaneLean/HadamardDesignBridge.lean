import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardDesignBridge (n : ℕ) (A : AdmissibleClass) where
  hadamardMatrix : HadamardMatrix n
  incidenceStructure : IncidenceStructure (Fin n) (Fin n)
  bridgeProperty : Prop

def hadamardDesignBridgeClosed {n : ℕ} {A : AdmissibleClass} (H : HadamardDesignBridge n A) : Prop :=
  H.bridgeProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
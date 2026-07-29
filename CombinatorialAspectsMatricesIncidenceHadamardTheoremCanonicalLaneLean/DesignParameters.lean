import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure DesignParameters (v k λ : ℕ) where
  vpos : v > 0
  kpos : k > 0
  symmetricDesign : Prop

def designParametersClosed {v k λ : ℕ} (D : DesignParameters v k λ) : Prop :=
  D.symmetricDesign

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
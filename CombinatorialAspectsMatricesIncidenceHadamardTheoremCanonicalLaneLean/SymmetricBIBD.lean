import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure SymmetricBIBD (v k λ : Nat) where
  vls : v
  kl : k
  λl : λ
  isBIBD : Prop
  isBIBDTerm : isBIBD
  symmetricProperty : Prop
  symmetricPropertyTerm : symmetricProperty
  designParametersConsistent : Prop
  designParametersConsistentTerm : designParametersConsistent

def SymmetricBIBDClosed {v k λ : Nat} (D : SymmetricBIBD v k λ) : Prop :=
  D.isBIBD ∧ D.symmetricProperty ∧ D.designParametersConsistent

theorem symmetric_bibd_closed_from_evidence {v k λ : Nat} (D : SymmetricBIBD v k λ) (hBIBD : D.isBIBD) (hSym : D.symmetricProperty) (hCons : D.designParametersConsistent) : SymmetricBIBDClosed D := by
  exact And.intro hBIBD (And.intro hSym hCons)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse

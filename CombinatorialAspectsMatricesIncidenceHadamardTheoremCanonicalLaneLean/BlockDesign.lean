import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure BlockDesign (v b r k λ : Nat) where
  pointSetSize : v
  blockSetSize : b
  eachPointReplication : r
  eachBlockSize : k
  pairwiseBlockIntersection : λ
  incidenceMatrixProperty : Prop
  incidenceMatrixPropertyTerm : incidenceMatrixProperty
  designParametersConsistent : Prop
  designParametersConsistentTerm : designParametersConsistent

def BlockDesignClosed {v b r k λ : Nat} (D : BlockDesign v b r k λ) : Prop :=
  D.incidenceMatrixProperty ∧ D.designParametersConsistent

theorem block_design_closed_from_evidence {v b r k λ : Nat} (D : BlockDesign v b r k λ) (hInc : D.incidenceMatrixProperty) (hCons : D.designParametersConsistent) : BlockDesignClosed D := by
  exact And.intro hInc hCons

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse

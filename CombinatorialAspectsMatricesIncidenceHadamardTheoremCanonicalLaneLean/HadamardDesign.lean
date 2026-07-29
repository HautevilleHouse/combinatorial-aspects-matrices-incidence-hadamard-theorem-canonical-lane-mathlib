import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardDesign (n : ℕ) where
  design : BlockDesign (Fin (4*n-1)) (Fin (4*n-1))
  hadamardMatrix : HadamardMatrix (4*n)
  equivalence : ∀ i j : Fin (4*n-1), design.incidence i j ↔ hadamardMatrix.entries i.succ j.succ = 1

def HadamardDesignClosed (H : HadamardDesign n) : Prop :=
  BlockDesignClosed H.design ∧ HadamardMatrixClosed H.hadamardMatrix

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
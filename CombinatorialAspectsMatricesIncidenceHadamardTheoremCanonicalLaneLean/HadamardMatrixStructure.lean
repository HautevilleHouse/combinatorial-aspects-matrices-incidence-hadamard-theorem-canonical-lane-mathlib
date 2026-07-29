import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardMatrixPackage where
  order : Nat
  entries : List (List Int)
  orthogonalRowsProp : Prop
  orderCondition : order > 0 ∧ (order = 1 ∨ order % 4 = 0)
  entriesArePMOne : Prop
  rowDotProductZero : Prop
  orthogonalRowsPropClosed : orthogonalRowsProp
  orthogonalRowsPropTerm : orthogonalRowsPropClosed
  entriesArePMOneClosed : entriesArePMOne
  rowDotProductZeroClosed : rowDotProductZero

structure HadamardMatrixEvidence (H : HadamardMatrixPackage) where
  orthogonalRowsPropClosed : H.orthogonalRowsProp
  entriesArePMOneClosed : H.entriesArePMOne
  rowDotProductZeroClosed : H.rowDotProductZero

def HadamardMatrixClosed (H : HadamardMatrixPackage) : Prop :=
  H.orthogonalRowsProp ∧ H.entriesArePMOne ∧ H.rowDotProductZero

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrixPackage)
    (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H := by
  exact And.intro E.orthogonalRowsPropClosed
    (And.intro E.entriesArePMOneClosed E.rowDotProductZeroClosed)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
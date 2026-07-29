import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardMatrixExistencePackage where
  order : Nat
  matrixType : Type
  entriesArePlusMinusOne : Prop
  rowsAreOrthogonal : Prop
  existsHadamardMatrix : Prop

structure HadamardMatrixExistenceEvidence (H : HadamardMatrixExistencePackage) where
  entriesArePlusMinusOneClosed : H.entriesArePlusMinusOne
  rowsAreOrthogonalClosed : H.rowsAreOrthogonal
  existsHadamardMatrixClosed : H.existsHadamardMatrix

def HadamardMatrixExistenceClosed (H : HadamardMatrixExistencePackage) : Prop :=
  H.entriesArePlusMinusOne ∧ H.rowsAreOrthogonal ∧ H.existsHadamardMatrix

theorem hadamard_matrix_existence_closed_from_evidence
    (H : HadamardMatrixExistencePackage) (E : HadamardMatrixExistenceEvidence H) :
    HadamardMatrixExistenceClosed H := by
  exact And.intro E.entriesArePlusMinusOneClosed
    (And.intro E.rowsAreOrthogonalClosed E.existsHadamardMatrixClosed)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
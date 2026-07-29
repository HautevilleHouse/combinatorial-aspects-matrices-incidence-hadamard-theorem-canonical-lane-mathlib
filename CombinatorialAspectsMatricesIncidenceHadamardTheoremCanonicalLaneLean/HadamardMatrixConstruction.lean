import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardMatrixPackage where
  order : ℕ
  entries : Matrix (Fin order) (Fin order) ℤ
  hadamardCondition : entries * entriesᵀ = (order : ℤ) • 1
  orthogonalRows : Prop
  normalizedFirstRow : entries 0 0 = 1 ∧ ∀ j, entries 0 j = 1
  entriesUpperBound : ∀ i j, entries i j = 1 ∨ entries i j = -1

structure HadamardMatrixEvidence (H : HadamardMatrixPackage) where
  orthogonalRowsClosed : H.orthogonalRows
  normalizedFirstRowClosed : H.normalizedFirstRow
  entriesUpperBoundClosed : H.entriesUpperBound

def HadamardMatrixClosed (H : HadamardMatrixPackage) : Prop :=
  H.orthogonalRows ∧ H.normalizedFirstRow ∧ H.entriesUpperBound

theorem hadamard_matrix_closed_from_evidence (H : HadamardMatrixPackage)
    (E : HadamardMatrixEvidence H) : HadamardMatrixClosed H :=
  And.intro E.orthogonalRowsClosed (And.intro E.normalizedFirstRowClosed E.entriesUpperBoundClosed)

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
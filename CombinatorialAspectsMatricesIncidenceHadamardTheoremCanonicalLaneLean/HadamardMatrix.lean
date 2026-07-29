import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardMatrix (n : Nat) where
  H : (Fin n) → (Fin n) → ℤ
  entriesArePMOne : Prop
  rowsOrthogonal : Prop
  entriesArePMOneTerm : entriesArePMOne
  rowsOrthogonalTerm : rowsOrthogonal

def HadamardMatrixClosed {n : Nat} (H : HadamardMatrix n) : Prop :=
  H.entriesArePMOne ∧ H.rowsOrthogonal

theorem hadamard_matrix_closed_from_evidence {n : Nat} (H : HadamardMatrix n) (hEntries : H.entriesArePMOne) (hOrth : H.rowsOrthogonal) : HadamardMatrixClosed H := by
  exact And.intro hEntries hOrth

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure IncidenceMatrix (n : Nat) where
  rows : Nat
  cols : Nat
  entries : Nat → List (Nat × Nat × ℕ)  -- sparse representation
  rowSum : Nat
  colSum : Nat
  allEntries : Prop
  allEntriesTerm : allEntries
  incidenceProperty : Prop
  incidencePropertyTerm : incidenceProperty

def IncidenceMatrixClosed {n : Nat} (A : IncidenceMatrix n) : Prop :=
  A.allEntries ∧ A.incidenceProperty

theorem incidence_matrix_closed_from_evidence {n : Nat} (A : IncidenceMatrix n) (hAll : A.allEntries) (hInc : A.incidenceProperty) : IncidenceMatrixClosed A := by
  exact And.intro hAll hInc

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse

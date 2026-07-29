import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure IncidenceMatrixPackage where
  pointSet : Type u
  blockSet : Type v
  incidenceRows : pointSet → List (blockSet → Prop)
  incidenceMatrixProp : Prop
  incidenceMatrixPropClosed : incidenceMatrixProp
  incidenceMatrixPropTerm : incidenceMatrixPropClosed

structure IncidenceMatrixEvidence (I : IncidenceMatrixPackage) where
  incidenceMatrixPropClosed : I.incidenceMatrixProp

def IncidenceMatrixClosed (I : IncidenceMatrixPackage) : Prop :=
  I.incidenceMatrixProp

theorem incidence_matrix_closed_from_evidence (I : IncidenceMatrixPackage)
    (E : IncidenceMatrixEvidence I) : IncidenceMatrixClosed I := by
  exact E.incidenceMatrixPropClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
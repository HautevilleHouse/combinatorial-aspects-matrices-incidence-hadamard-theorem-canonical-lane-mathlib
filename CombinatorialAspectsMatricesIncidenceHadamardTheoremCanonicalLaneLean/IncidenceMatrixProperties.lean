import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure IncidenceMatrixPackage where
  pointSet : Type
  blockSet : Type
  incidenceRelation : pointSet → blockSet → Prop
  incidenceMatrix : Type
  regularityCondition : Prop
  incidenceStructureIsBalanced : Prop

structure IncidenceMatrixEvidence (I : IncidenceMatrixPackage) where
  regularityConditionClosed : I.regularityCondition
  incidenceStructureIsBalancedClosed : I.incidenceStructureIsBalanced

def IncidenceMatrixClosed (I : IncidenceMatrixPackage) : Prop :=
  I.regularityCondition ∧ I.incidenceStructureIsBalanced

theorem incidence_matrix_closed_from_evidence
    (I : IncidenceMatrixPackage) (E : IncidenceMatrixEvidence I) :
    IncidenceMatrixClosed I := by
  exact And.intro E.regularityConditionClosed E.incidenceStructureIsBalancedClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
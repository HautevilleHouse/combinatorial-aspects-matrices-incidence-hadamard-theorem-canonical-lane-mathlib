import canonicalLaneMathlib.AdmissibleClass
import CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.HadamardIncidenceStructure
import CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean.HadamardMatrixConstruction

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure IncidenceMatrixEquivalence (I : HadamardIncidenceStructure) (H : HadamardMatrixPackage) where
  orderMatch : I.order = H.order
  matrixFromIncidence : Matrix (Fin I.order) (Fin I.order) ℤ
  matrixFromIncidenceDef : ∀ i j, matrixFromIncidence i j = if I.incidence i j then 1 else -1
  hadamardConditionEquiv : H.hadamardCondition ↔ HadamardIncidenceClosed I
  evidenceProvided : Prop

structure IncidenceMatrixEquivalenceEvidence (I : HadamardIncidenceStructure) (H : HadamardMatrixPackage)
    (E : IncidenceMatrixEquivalence I H) where
  orderMatchClosed : E.orderMatch
  matrixFromIncidenceDefClosed : E.matrixFromIncidenceDef
  hadamardConditionEquivClosed : E.hadamardConditionEquiv
  evidenceProvidedClosed : E.evidenceProvided

def IncidenceMatrixEquivalenceClosed (I : HadamardIncidenceStructure) (H : HadamardMatrixPackage)
    (E : IncidenceMatrixEquivalence I H) : Prop :=
  E.orderMatch ∧ E.matrixFromIncidenceDef ∧ E.hadamardConditionEquiv ∧ E.evidenceProvided

theorem incidence_matrix_equivalence_closed_from_evidence (I : HadamardIncidenceStructure) (H : HadamardMatrixPackage)
    (E : IncidenceMatrixEquivalence I H) (Ev : IncidenceMatrixEquivalenceEvidence I H E) :
    IncidenceMatrixEquivalenceClosed I H E :=
  And.intro Ev.orderMatchClosed (And.intro Ev.matrixFromIncidenceDefClosed
    (And.intro Ev.hadamardConditionEquivClosed Ev.evidenceProvidedClosed))

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
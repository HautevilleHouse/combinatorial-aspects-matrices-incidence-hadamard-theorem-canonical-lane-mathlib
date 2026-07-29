import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardIncidenceStructure where
  order : ℕ
  points : Fin order → Set (Fin order)
  incidence : Fin order → Fin order → Prop
  incidenceSymmetric : incidence = λ i j => incidence j i
  incidentPairsCount : Prop
  constantRowColumnSum : Σ i j, (Finset.filter (λ k => incidence i k) Finset.univ).card = (Finset.filter (λ k => incidence j k) Finset.univ).card

structure HadamardIncidenceEvidence (H : HadamardIncidenceStructure) where
  incidentPairsCountClosed : H.incidentPairsCount
  constantRowColumnSumClosed : H.constantRowColumnSum

def HadamardIncidenceClosed (H : HadamardIncidenceStructure) : Prop :=
  H.incidentPairsCount ∧ H.constantRowColumnSum

theorem hadamard_incidence_closed_from_evidence (H : HadamardIncidenceStructure)
    (E : HadamardIncidenceEvidence H) : HadamardIncidenceClosed H :=
  And.intro E.incidentPairsCountClosed E.constantRowColumnSumClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
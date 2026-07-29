import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure OrthogonalComplementPackage where
  matrix : HadamardMatrixPackage
  complementSpace : Type u
  dimensionProp : Prop
  orthogonalityProp : Prop
  dimensionPropClosed : dimensionProp
  orthogonalityPropClosed : orthogonalityProp
  dimensionPropTerm : dimensionPropClosed
  orthogonalityPropTerm : orthogonalityPropClosed

structure OrthogonalComplementEvidence (O : OrthogonalComplementPackage) where
  dimensionPropClosed : O.dimensionProp
  orthogonalityPropClosed : O.orthogonalityProp

def OrthogonalComplementClosed (O : OrthogonalComplementPackage) : Prop :=
  O.dimensionProp ∧ O.orthogonalityProp

theorem orthogonal_complement_closed_from_evidence (O : OrthogonalComplementPackage)
    (E : OrthogonalComplementEvidence O) : OrthogonalComplementClosed O := by
  exact And.intro E.dimensionPropClosed E.orthogonalityPropClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
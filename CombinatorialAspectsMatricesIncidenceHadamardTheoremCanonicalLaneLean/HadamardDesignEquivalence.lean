import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure HadamardDesignPackage where
  hadamardMatrix : HadamardMatrixPackage
  incidenceMatrix : IncidenceMatrixPackage
  designProp : Prop
  equivalenceProp : HadamardMatrixClosed hadamardMatrix ↔ IncidenceMatrixClosed incidenceMatrix
  designPropClosed : designProp
  equivalencePropClosed : equivalenceProp
  designPropTerm : designPropClosed
  equivalencePropTerm : equivalencePropClosed

structure HadamardDesignEvidence (D : HadamardDesignPackage) where
  designPropClosed : D.designProp
  equivalencePropClosed : D.equivalenceProp

def HadamardDesignClosed (D : HadamardDesignPackage) : Prop :=
  D.designProp ∧ D.equivalenceProp

theorem hadamard_design_closed_from_evidence (D : HadamardDesignPackage)
    (E : HadamardDesignEvidence D) : HadamardDesignClosed D := by
  exact And.intro E.designPropClosed E.equivalencePropClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
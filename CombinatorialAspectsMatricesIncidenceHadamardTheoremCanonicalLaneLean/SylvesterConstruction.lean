import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean

structure SylvesterConstructionPackage where
  baseOrder : Nat
  constructedOrder : Nat
  constructionMethod : Prop
  producesHadamard : Prop
  constructionMethodClosed : constructionMethod
  producesHadamardClosed : producesHadamard
  constructionMethodTerm : constructionMethodClosed
  producesHadamardTerm : producesHadamardClosed

structure SylvesterConstructionEvidence (S : SylvesterConstructionPackage) where
  constructionMethodClosed : S.constructionMethod
  producesHadamardClosed : S.producesHadamard

def SylvesterConstructionClosed (S : SylvesterConstructionPackage) : Prop :=
  S.constructionMethod ∧ S.producesHadamard

theorem sylvester_construction_closed_from_evidence (S : SylvesterConstructionPackage)
    (E : SylvesterConstructionEvidence S) : SylvesterConstructionClosed S := by
  exact And.intro E.constructionMethodClosed E.producesHadamardClosed

end CombinatorialAspectsMatricesIncidenceHadamardTheoremCanonicalLaneLean
end HautevilleHouse
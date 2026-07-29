import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure FunctorialSemanticsModel where
  sourceCategory : Type u
  targetCategory : Type v
  functorMapping : Type w
  preservesStructure : Prop
  compositionality : Prop
  preservesStructureClosed : preservesStructure
  compositionalityClosed : compositionality

def FunctorialSemanticsClosed (F : FunctorialSemanticsModel) : Prop :=
  F.preservesStructure ∧ F.compositionality

theorem functorial_semantics_closed_from_evidence
    (F : FunctorialSemanticsModel) : FunctorialSemanticsClosed F := by
  exact And.intro F.preservesStructureClosed F.compositionalityClosed

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
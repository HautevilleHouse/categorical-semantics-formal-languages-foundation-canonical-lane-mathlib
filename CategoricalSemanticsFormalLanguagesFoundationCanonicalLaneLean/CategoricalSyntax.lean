import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure CategoricalSyntaxModel where
  signature : Type u
  categories : Type v
  functors : Type w
  variableSets : Prop
  termConstruction : Prop
  substitutionStructure : Prop
  variableSetsClosed : variableSets
  termConstructionClosed : termConstruction
  substitutionStructureClosed : substitutionStructure

def CategoricalSyntaxClosed (M : CategoricalSyntaxModel) : Prop :=
  M.variableSets ∧ M.termConstruction ∧ M.substitutionStructure

theorem categorical_syntax_closed_from_evidence (M : CategoricalSyntaxModel) :
    CategoricalSyntaxClosed M := by
  exact And.intro M.variableSetsClosed
    (And.intro M.termConstructionClosed M.substitutionStructureClosed)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
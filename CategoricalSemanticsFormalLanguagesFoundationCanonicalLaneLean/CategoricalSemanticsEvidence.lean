import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure CategoricalSemanticsEvidence where
  syntaxModelClosed : Prop
  functorialSemanticsClosed : Prop
  languageEquivalenceClosed : Prop
  syntaxModelClosedTerm : syntaxModelClosed
  functorialSemanticsClosedTerm : functorialSemanticsClosed
  languageEquivalenceClosedTerm : languageEquivalenceClosed

def CategoricalSemanticsClosed (E : CategoricalSemanticsEvidence) : Prop :=
  E.syntaxModelClosed ∧ E.functorialSemanticsClosed ∧ E.languageEquivalenceClosed

theorem categorical_semantics_closed_from_evidence
    (E : CategoricalSemanticsEvidence) : CategoricalSemanticsClosed E := by
  exact And.intro E.syntaxModelClosedTerm
    (And.intro E.functorialSemanticsClosedTerm E.languageEquivalenceClosedTerm)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
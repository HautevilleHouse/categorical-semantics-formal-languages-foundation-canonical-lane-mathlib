import canonicalLaneMathlib.AdmissibleClass

/-!
# Categorical Language Syntax Package
-/

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure CategoricalLanguageSyntax where
  alphabet : Type u
  strings : List alphabet
  language : Set (List alphabet)

structure FormalGrammar where
  nonterminals : Type u
  productions : List (nonterminals × List (Sum nonterminals (CategoricalLanguageSyntax.alphabet)))
  startSymbol : nonterminals

structure CategoricalLanguageEvidence (S : CategoricalLanguageSyntax) where
  languageClosedUnderConcatenation : S.language.ClosedUnderConcatenation
  languageContainsEmptyString : S.language.ContainsEmptyString

def CategoricalLanguageClosed (S : CategoricalLanguageSyntax) : Prop :=
  S.language.ClosedUnderConcatenation ∧ S.language.ContainsEmptyString

theorem categorical_language_closed_from_evidence (S : CategoricalLanguageSyntax) (E : CategoricalLanguageEvidence S) : CategoricalLanguageClosed S := by
  exact And.intro E.languageClosedUnderConcatenation E.languageContainsEmptyString

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
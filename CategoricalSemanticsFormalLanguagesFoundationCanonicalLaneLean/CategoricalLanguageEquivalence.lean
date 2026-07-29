import canonicalLaneMathlib.AdmissibleClass

/-!
# Categorical Language Equivalence Package
-/

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure LanguageEquivalence {L1 L2 : CategoricalLanguageSyntax} where
  forwardMapping : L1.strings → L2.strings
  backwardMapping : L2.strings → L1.strings
  forwardRespectsLanguage : ∀ s ∈ L1.language, forwardMapping s ∈ L2.language
  backwardRespectsLanguage : ∀ t ∈ L2.language, backwardMapping t ∈ L1.language
  forwardBackwardInverse : ∀ s ∈ L1.language, backwardMapping (forwardMapping s) = s
  backwardForwardInverse : ∀ t ∈ L2.language, forwardMapping (backwardMapping t) = t

structure LanguageEquivalenceEvidence {L1 L2 : CategoricalLanguageSyntax} (E : LanguageEquivalence L1 L2) where
  forwardRespectsLanguageClosed : E.forwardRespectsLanguage
  backwardRespectsLanguageClosed : E.backwardRespectsLanguage
  forwardBackwardInverseClosed : E.forwardBackwardInverse
  backwardForwardInverseClosed : E.backwardForwardInverse

def LanguageEquivalenceClosed {L1 L2 : CategoricalLanguageSyntax} (E : LanguageEquivalence L1 L2) : Prop :=
  E.forwardRespectsLanguage ∧ E.backwardRespectsLanguage ∧ E.forwardBackwardInverse ∧ E.backwardForwardInverse

theorem language_equivalence_closed_from_evidence {L1 L2 : CategoricalLanguageSyntax} (E : LanguageEquivalence L1 L2) (Ev : LanguageEquivalenceEvidence E) : LanguageEquivalenceClosed E := by
  exact And.intro Ev.forwardRespectsLanguageClosed (And.intro Ev.backwardRespectsLanguageClosed (And.intro Ev.forwardBackwardInverseClosed Ev.backwardForwardInverseClosed))

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
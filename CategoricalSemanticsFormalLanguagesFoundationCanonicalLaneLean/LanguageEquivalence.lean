import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure LanguageEquivalenceModel where
  languageA : Type u
  languageB : Type v
  translationForward : Type w
  translationBackward : Type x
  translationCompForward : Prop
  translationCompBackward : Prop
  translationCompForwardClosed : translationCompForward
  translationCompBackwardClosed : translationCompBackward

def LanguageEquivalenceClosed (L : LanguageEquivalenceModel) : Prop :=
  L.translationCompForward ∧ L.translationCompBackward

theorem language_equivalence_closed_from_evidence
    (L : LanguageEquivalenceModel) : LanguageEquivalenceClosed L := by
  exact And.intro L.translationCompForwardClosed L.translationCompBackwardClosed

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
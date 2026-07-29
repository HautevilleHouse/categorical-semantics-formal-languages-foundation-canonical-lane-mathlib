import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

def ConstrainedLanguageClosure (A : AdmissibleLanguageClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_language_endgame (A : AdmissibleLanguageClass) : ConstrainedLanguageClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
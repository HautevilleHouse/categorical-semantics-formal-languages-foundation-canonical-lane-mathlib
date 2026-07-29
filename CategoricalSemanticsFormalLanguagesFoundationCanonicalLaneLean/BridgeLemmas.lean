import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleLanguageClass) : Prop :=
  LanguageWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleLanguageClass) : bridgeClosed A := by
  exact A.object.conclusion

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
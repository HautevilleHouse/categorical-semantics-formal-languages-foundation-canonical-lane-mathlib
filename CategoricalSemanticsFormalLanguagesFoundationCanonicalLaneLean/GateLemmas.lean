import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleLanguageClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleLanguageClass) : gateClosed A := by
  exact A.gateWitness

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
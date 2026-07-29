import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure FormalLanguageObject where
  source : Type u
  target : Type v
  functor : source → target
  coherenceCondition : Prop
  conclusion : coherenceCondition

def LanguageWitnessClosed (O : FormalLanguageObject) : Prop :=
  O.coherenceCondition

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
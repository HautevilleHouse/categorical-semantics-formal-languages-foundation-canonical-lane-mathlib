import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.CategoricalSignature

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure FormalLanguage where
  alphabet : Type u
  strings : List alphabet → Prop
  closureUnderConcatenation : ∀ s t, strings s → strings t → strings (s ++ t)

structure CategoricalModel (C : CategoricalSignature) where
  objectMap : C.objects → Type u
  morphismMap : {X Y : C.objects} → C.morphisms X Y → (objectMap X → objectMap Y)
  identityPreserved : (X : C.objects) → morphismMap (C.identity X) = id
  compositionPreserved : {X Y Z : C.objects} (f : C.morphisms X Y) (g : C.morphisms Y Z) →
    morphismMap (C.composition f g) = (morphismMap g) ∘ (morphismMap f)

structure CategoricalFormalLanguageModel (C : CategoricalSignature) extends CategoricalModel C where
  language : objectMap (C.objects) → FormalLanguage
  functorial : {X Y : C.objects} (f : C.morphisms X Y) →
    ∀ s, (language X).strings s → (language Y).strings ((morphismMap f) s)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

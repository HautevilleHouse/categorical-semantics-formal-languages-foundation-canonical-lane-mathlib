import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure CategoricalSignature where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (X : objects) → morphisms X X
  composition : {X Y Z : objects} → morphisms X Y → morphisms Y Z → morphisms X Z
  leftUnit : {X Y : objects} (f : morphisms X Y) → composition (identity X) f = f
  rightUnit : {X Y : objects} (f : morphisms X Y) → composition f (identity Y) = f
  associativity : {X Y Z W : objects} (f : morphisms X Y) (g : morphisms Y Z) (h : morphisms Z W) →
    composition (composition f g) h = composition f (composition g h)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

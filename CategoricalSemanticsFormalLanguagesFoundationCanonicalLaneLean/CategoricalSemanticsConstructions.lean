import canonicalLaneMathlib.AdmissibleClass

/-!
# Categorical Semantics Constructions Package
-/

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure CategoryWithFiniteProducts where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : ∀ X : objects, morphisms X X
  composition : ∀ {X Y Z : objects}, morphisms X Y → morphisms Y Z → morphisms X Z
  terminalObject : objects
  product : objects → objects → objects
  associativity : ∀ {X Y Z : objects}, composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ {X Y : objects} (f : morphisms X Y), composition (identity X) f = f
  identityRight : ∀ {X Y : objects} (f : morphisms X Y), composition f (identity Y) = f
  terminalMorphism : ∀ X : objects, morphisms X terminalObject
  productMorphisms : ∀ (X Y : objects), morphisms (product X Y) X × morphisms (product X Y) Y
  productUniversal : ∀ (X Y Z : objects) (f : morphisms Z X) (g : morphisms Z Y), ∃! h : morphisms Z (product X Y), ...

structure CategoricalSemanticsConstruction where
  category : CategoryWithFiniteProducts
  language : CategoricalLanguageSyntax
  interpretation : category.objects → Set (language.strings)
  preservesProduct : ∀ A B : category.objects, interpretation (category.product A B) = interpretation A × interpretation B
  preservesTerminal : interpretation category.terminalObject = {[]}

structure CategoricalSemanticsEvidence (C : CategoricalSemanticsConstruction) where
  preservesProductClosed : C.preservesProduct
  preservesTerminalClosed : C.preservesTerminal

def CategoricalSemanticsClosed (C : CategoricalSemanticsConstruction) : Prop :=
  C.preservesProduct ∧ C.preservesTerminal

theorem categorical_semantics_closed_from_evidence (C : CategoricalSemanticsConstruction) (E : CategoricalSemanticsEvidence C) : CategoricalSemanticsClosed C := by
  exact And.intro E.preservesProductClosed E.preservesTerminalClosed

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
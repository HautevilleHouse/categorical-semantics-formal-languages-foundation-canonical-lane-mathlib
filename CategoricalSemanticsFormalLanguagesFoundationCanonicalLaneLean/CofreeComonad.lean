import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundation

structure CofreeComonadPackage where
  endofunctor : Type u → Type u
  comonadStructure : Type u
  cofreeConstruction : Prop
  universalProperty : Prop

structure CofreeComonadEvidence (C : CofreeComonadPackage) where
  cofreeConstructionClosed : C.cofreeConstruction
  universalPropertyClosed : C.universalProperty

def CofreeComonadClosed (C : CofreeComonadPackage) : Prop :=
  C.cofreeConstruction ∧ C.universalProperty

theorem cofree_comonad_closed_from_evidence (C : CofreeComonadPackage) (E : CofreeComonadEvidence C) :
    CofreeComonadClosed C := by
  exact And.intro E.cofreeConstructionClosed E.universalPropertyClosed

end CategoricalSemanticsFormalLanguagesFoundation
end HautevilleHouse
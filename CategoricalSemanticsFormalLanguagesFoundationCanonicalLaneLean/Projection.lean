import CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def categoricalProjection : Projection CategoricalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem categoricalProjection_idempotent (x : CategoricalEndgameState) :
    categoricalProjection.toFun (categoricalProjection.toFun x) = categoricalProjection.toFun x := by
  exact categoricalProjection.idempotent x

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
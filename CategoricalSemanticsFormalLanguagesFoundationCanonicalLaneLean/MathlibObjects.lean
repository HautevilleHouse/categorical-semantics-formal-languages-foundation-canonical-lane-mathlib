import CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoricalSpace where
  carrier : Type
  structure : Type

structure CategoricalAdmittedObject where
  space : CategoricalSpace
  categoricalStructure : Prop
  formalLanguage : Prop
  semanticsModel : Type
  semanticsTopology : TopologicalSpace semanticsModel
  interpretation : Prop
  conclusion : interpretation

structure CategoricalEndgameState where
  object : CategoricalAdmittedObject

def CategoricalWitnessClosed (O : CategoricalAdmittedObject) : Prop :=
  O.interpretation

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse
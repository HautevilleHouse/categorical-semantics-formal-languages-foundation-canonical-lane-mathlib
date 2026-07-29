import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.CartesianClosed

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure Fibration (E B : Type) (p : E -> B) where
  cartesianLift : forall (b : B) (e : E) (f : E -> B) (h : f e = b), True
  fibrationAxiom : True

def IndexedCategory (I : Type) : Type := I -> Type

theorem fiberProductExists (E B : Type) (p : E -> B) (b : B) : Set (Subtype p) := by
  exact { e' : Subtype p | p e'.val = b }

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

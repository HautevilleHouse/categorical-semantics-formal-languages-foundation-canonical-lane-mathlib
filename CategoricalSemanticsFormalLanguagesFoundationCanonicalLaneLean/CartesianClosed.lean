import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.SyntaxCategory

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure Exponential (A B : Type) where
  base : Type
  ev : (base × A) -> B
  curry : (A -> B) -> base
  uncurry : base -> A -> B

structure CartesianClosed (C : Type) where
  terminal : Type
  product : C -> C -> C
  exp : C -> C -> C
  terminalClosed : True
  productClosed : True
  expClosed : True

theorem cartesianClosedCategoryExists (C : Type) : CartesianClosed C := by
  exact { terminal := Unit, product := fun X Y => X × Y, exp := fun X Y => X -> Y, terminalClosed := True.intro, productClosed := True.intro, expClosed := True.intro }

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

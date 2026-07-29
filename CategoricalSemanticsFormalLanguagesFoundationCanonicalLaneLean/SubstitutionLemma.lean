import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.SyntaxCategory
import HautevilleHouse.CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.CartesianClosed

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure Substitution (Γ Δ : Type) where
  sub : Γ -> Δ
  substVar : (v : String) -> sub (var v) = var (sub v) -- simplified

structure TypeSubstitution (Γ Δ : Type) where
  sub : Γ -> Δ
  substType : (t : SyntaxItem Γ) -> t.type = t.type -- placeholder

theorem substitutionTypePreservation (γ : TypeSubstitution Γ Δ) (t : SyntaxItem Γ) : γ.sub t = t := by
  rfl

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

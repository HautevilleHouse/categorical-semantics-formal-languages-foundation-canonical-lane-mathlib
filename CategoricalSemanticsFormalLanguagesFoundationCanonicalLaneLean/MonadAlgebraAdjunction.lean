import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundation

structure MonadAlgebraAdjunctionPackage where
  monad : Type u → Type u
  algebraCategory : Type u
  freeForgetfulAdjunction : Prop
  monadicConservation : Prop

structure MonadAlgebraAdjunctionEvidence (M : MonadAlgebraAdjunctionPackage) where
  freeForgetfulAdjunctionClosed : M.freeForgetfulAdjunction
  monadicConservationClosed : M.monadicConservation

def MonadAlgebraAdjunctionClosed (M : MonadAlgebraAdjunctionPackage) : Prop :=
  M.freeForgetfulAdjunction ∧ M.monadicConservation

theorem monad_algebra_adjunction_closed_from_evidence (M : MonadAlgebraAdjunctionPackage) (E : MonadAlgebraAdjunctionEvidence M) :
    MonadAlgebraAdjunctionClosed M := by
  exact And.intro E.freeForgetfulAdjunctionClosed E.monadicConservationClosed

end CategoricalSemanticsFormalLanguagesFoundation
end HautevilleHouse
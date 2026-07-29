import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundation

structure FibrationBaseChangePackage where
  fibration : Type u → Type u → Type u
  cartesianLift : Type u
  baseChangeAlong : Type u → Type u
  reindexingFunctor : Prop
  beckChevalleyCondition : Prop

structure FibrationBaseChangeEvidence (F : FibrationBaseChangePackage) where
  reindexingFunctorClosed : F.reindexingFunctor
  beckChevalleyConditionClosed : F.beckChevalleyCondition

def FibrationBaseChangeClosed (F : FibrationBaseChangePackage) : Prop :=
  F.reindexingFunctor ∧ F.beckChevalleyCondition

theorem fibration_base_change_closed_from_evidence (F : FibrationBaseChangePackage) (E : FibrationBaseChangeEvidence F) :
    FibrationBaseChangeClosed F := by
  exact And.intro E.reindexingFunctorClosed E.beckChevalleyConditionClosed

end CategoricalSemanticsFormalLanguagesFoundation
end HautevilleHouse
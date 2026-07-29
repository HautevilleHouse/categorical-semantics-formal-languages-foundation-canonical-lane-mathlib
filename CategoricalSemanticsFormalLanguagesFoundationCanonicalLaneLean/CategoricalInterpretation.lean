import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundation

structure CategoricalInterpretationPackage where
  formalLanguageCategory : Type u → Type u
  interpretationFunctor : Type u → Type u → Type u
  soundnessWrtDeduction : Prop
  completenessWrtModels : Prop

structure CategoricalInterpretationEvidence (I : CategoricalInterpretationPackage) where
  soundnessWrtDeductionClosed : I.soundnessWrtDeduction
  completenessWrtModelsClosed : I.completenessWrtModels

def CategoricalInterpretationClosed (I : CategoricalInterpretationPackage) : Prop :=
  I.soundnessWrtDeduction ∧ I.completenessWrtModels

theorem categorical_interpretation_closed_from_evidence (I : CategoricalInterpretationPackage) (E : CategoricalInterpretationEvidence I) :
    CategoricalInterpretationClosed I := by
  exact And.intro E.soundnessWrtDeductionClosed E.completenessWrtModelsClosed

end CategoricalSemanticsFormalLanguagesFoundation
end HautevilleHouse
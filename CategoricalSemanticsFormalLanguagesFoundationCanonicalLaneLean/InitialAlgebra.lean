import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundation

structure InitialAlgebraPackage where
  carrierFunctor : Type u → Type u
  initialObject : Type u
  morphisms : Type u
  initialAlgebraDefined : Prop
  uniquenessUpToIso : Prop

structure InitialAlgebraEvidence (I : InitialAlgebraPackage) where
  initialAlgebraDefinedClosed : I.initialAlgebraDefined
  uniquenessUpToIsoClosed : I.uniquenessUpToIso

def InitialAlgebraClosed (I : InitialAlgebraPackage) : Prop :=
  I.initialAlgebraDefined ∧ I.uniquenessUpToIso

theorem initial_algebra_closed_from_evidence (I : InitialAlgebraPackage) (E : InitialAlgebraEvidence I) :
    InitialAlgebraClosed I := by
  exact And.intro E.initialAlgebraDefinedClosed E.uniquenessUpToIsoClosed

end CategoricalSemanticsFormalLanguagesFoundation
end HautevilleHouse
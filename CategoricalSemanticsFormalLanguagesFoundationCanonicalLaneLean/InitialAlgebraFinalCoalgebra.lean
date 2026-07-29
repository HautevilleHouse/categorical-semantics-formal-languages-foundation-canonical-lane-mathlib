import canonicalLaneMathlib.AdmissibleClass
import CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.CategoricalSignature
import CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean.FormalLanguagesModel

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure InitialAlgebraSignature (C : CategoricalSignature) where
  F : C.objects → C.objects
  η : (X : C.objects) → C.morphisms X (F X)
  initial : (X : C.objects) → (A : C.objects) → (f : C.morphisms X (F A)) → C.morphisms X A
  uniqueness : {X A : C.objects} (f : C.morphisms X (F A)) (g h : C.morphisms X A) →
    C.composition g (η A) = f → C.composition h (η A) = f → g = h

structure FinalCoalgebraSignature (C : CategoricalSignature) where
  G : C.objects → C.objects
  ε : (X : C.objects) → C.morphisms (G X) X
  final : (X : C.objects) → (A : C.objects) → (f : C.morphisms (G A) X) → C.morphisms A X
  uniqueness : {X A : C.objects} (f : C.morphisms (G A) X) (g h : C.morphisms A X) →
    C.composition (ε A) g = f → C.composition (ε A) h = f → g = h

theorem initial_algebra_unique (C : CategoricalSignature) (I1 I2 : InitialAlgebraSignature C) :
  (∀ X, C.morphisms (I1.initial X X (I1.η X)) (I2.initial X X (I2.η X))) := by
  intro X
  exact I2.initial X X (I1.η X)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

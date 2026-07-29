import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean

structure SyntaxItem (A : Type) where
  var : String
  type : A

def SyntaxCategory (A : Type) : Type := SyntaxItem A -> Type

structure VariableContext (A : Type) where
  ctxVars : List (SyntaxItem A)
  varTypes : A

structure TermStructure (A : Type) (Cxt : VariableContext A) where
  termType : A
  termTerms : List (SyntaxItem A)

end CategoricalSemanticsFormalLanguagesFoundationCanonicalLaneLean
end HautevilleHouse

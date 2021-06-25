import Test.Hspec

import qualified IsogramSpec
import qualified CategorizeSpec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Isogram"     IsogramSpec.spec
  describe "Categorize"  CategorizeSpec.spec

import Test.Hspec

import qualified IsogramSpec
import qualified CategorizeSpec
import qualified PrinterSpec
import qualified OppositeSpec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Isogram"     IsogramSpec.spec
  describe "Categorize"  CategorizeSpec.spec
  describe "Printer"     PrinterSpec.spec
  describe "Opposite"    OppositeSpec.spec

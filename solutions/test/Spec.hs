import Test.Hspec

import qualified IsogramSpec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Isogram"     IsogramSpec.spec

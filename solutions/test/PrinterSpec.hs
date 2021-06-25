module PrinterSpec where

import Printer (printerError)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testPrinter :: [Char] -> [Char] -> Spec
testPrinter s u =
    it (printf "should return printerError for s : %s --> %s " s u) $
        printerError s `shouldBe` u

spec :: Spec
spec = do
    describe "printerError" $ do
        testPrinter "aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz" "3/56"
        testPrinter "kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz" "6/60"
        testPrinter "abc" "0/3"
        testPrinter "abcx" "1/4"
        testPrinter "xabc" "1/4"
        testPrinter "aaabbbbhaijjjm" "0/14"
        testPrinter "aaaxbbbbyyhwawiwjjjwwm" "8/22"

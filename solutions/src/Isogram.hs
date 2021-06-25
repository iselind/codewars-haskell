module Isogram where

import Data.Char
import Data.List as D

checkIsogram [] = True
checkIsogram (x:xs)
    | x `D.elem` xs = False
    | otherwise     = checkIsogram xs

isIsogram :: String -> Bool
isIsogram s = checkIsogram $ D.map toLower s

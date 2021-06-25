module Printer where

import Data.List

colors = ['a'..'m']

countErrors [] n = n
countErrors (x:xs) n
    | x `notElem` colors = countErrors xs (n + 1)
    | otherwise           = countErrors xs n

printerError :: [Char] -> [Char]
printerError s = errors ++ "/" ++ tot_length
    where
        tot_length = show $ length s
        errors = show $ countErrors s 0

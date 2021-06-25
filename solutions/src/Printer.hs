module Printer where

import Data.List

printerError :: [Char] -> [Char]
printerError s = errors ++ "/" ++ tot_length
    where
        tot_length = show $ length s
        errors = show $ length s - length (s \\ ['a'..'m'])

module Categorize where

import Categorize.Types

classify :: (Int, Int) -> Membership
classify (age, handicap)
    | age >= 55 && handicap > 7 = Senior
    | otherwise                 = Open

openOrSenior :: [(Int, Int)] -> [Membership]
openOrSenior = map classify

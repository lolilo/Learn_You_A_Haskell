import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

--nub is a function defined in Data.List that takes a list and weeds out duplicate elements
--Composing length and nub by doing length . nub produces 
--a function that's the equivalent of \xs -> length (nub xs).


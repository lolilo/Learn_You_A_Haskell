import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

--nub is a function defined in Data.List that takes a list and weeds out duplicate elements
--Composing length and nub by doing length . nub produces 
--a function that's the equivalent of \xs -> length (nub xs).


search :: (Eq a) => [a] -> [a] -> Bool
search needle haystack = 
    let nlen = length needle
    in foldl (\acc x ->
        if take nlen x == needle then True else acc) False (tails haystack)

--This function search is the same as Haskell's built-in, isInfixOf.
--isInfixOf searches for a sublist within a list and 
--returns True if the sublist we're looking for is somewhere inside the target list.


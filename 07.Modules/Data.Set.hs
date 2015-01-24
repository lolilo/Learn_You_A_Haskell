import qualified Data.Set as Set  

setNub :: (Ord a) => [a] -> [a]
setNub xs = Set.toList $ Set.fromList xs

--Sets are often used to weed a list of duplicates from a list 
--by first making it into a set with fromList 
--and then converting it back to a list with toList. 
--The Data.List function nub already does that, 
--but weeding out duplicates for large lists is much faster if you cram them into a set
--and then convert them back to a list than using nub. 
--But using nub only requires the type of the list's elements to be part of the Eq typeclass, 
--whereas if you want to cram elements into a set, the type of the list has to be in Ord.

--setNub is generally faster than nub on big lists but as you can see, 
--nub preserves the ordering of the list's elements, while setNub does not.


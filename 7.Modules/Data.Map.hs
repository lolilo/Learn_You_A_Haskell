phoneBook =   
    [("betty","555-2938")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ]  

--findKey :: (Eq k) => k [(k,v)] -> v
--findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs
--This breaks if the key isn't present -- tries to take head of an empty list.

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs) = if key == k
                            then Just v
                            else findKey key xs

--as a fold
findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing

--Note: It's usually better to use folds for this standard list recursion pattern 
--instead of explicitly writing the recursion because they're easier to read and identify. 
--Everyone knows it's a fold when they see the foldr call, 
--but it takes some more thinking to read explicit recursion.

--Do qualified import for Data.Map, since it exports functions that clash with Prelude and Data.List.
--import qualified Data.Map as Map

--Notice that when we were doing association lists with normal lists, 
--the keys only had to be equatable (their type belonging to the Eq typeclass) 
--but now they have to be orderable. That's an essential constraint in the Data.Map module. 
--It needs the keys to be orderable so it can arrange them in a tree.
--You should always use Data.Map for key-value associations unless 
--you have keys that aren't part of the Ord typeclass.

fromList' :: (Ord k) => [(k,v)] -> Map.Map k v
fromList' = foldr (\(k,v) acc -> Map.insert k v acc) Map.empty


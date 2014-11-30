--takes an element and a list and sees if that element is in the list
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs) 
    | a == x = True
    | otherwise = elem' a xs
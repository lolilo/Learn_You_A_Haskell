zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys


--zip' (x:xs) (y:ys) = [(x, y)] ++ zip' xs ys

--use ++ for two lists
--use : for concatenating an element onto a list

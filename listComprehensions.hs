
--http://learnyouahaskell.com/starting-out#im-a-list-comprehension

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']]
removeNonUppercase' st = [ c | c <- st, c `elem` ['A'..'Z']]


-- Nested list comprehensions are also possible 
-- if you're operating on lists that contain lists. 
-- A list contains several lists of numbers. 
-- Let's remove all odd numbers without flattening the list.

xxs = [[1,3,5], [2,3,4],[1,4,6]]
[ [ x | x <- xs, even x] | xs <- xxs ]

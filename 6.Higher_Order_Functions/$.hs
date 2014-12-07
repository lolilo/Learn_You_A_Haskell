($) :: (a -> b) -> a -> b 
f $ x = f x

--Function application with a space is left-associative (so f a b c is the same as ((f a) b) c)), 
--function application with $ is right-associative.

sum (filter (> 10) (map (*2) [2..10]))
sum $ filter (> 10) $ map (*2) [2..10]

--But apart from getting rid of parentheses, 
--$ means that function application can be treated just like another function. 
--That way, we can, for instance, map function application over a list of functions.
map ($ 3) [(4+), (10*), (^2), sqrt]


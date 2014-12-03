applyTwice :: (a -> a) -> a -> a
applyTwice f x =  f (f x)

--Note the type declaration. The parantheses are mandatory here, because they indicate 
--that the first parameter is a function that takes a thing and returns the same thing. 
--The second parameter is something of that type of thing also 
--and the return value is also of the same type.

--Takes in two parameters (a function and a thing "a")
--returns one thing. 

--The first parameter is a function (of type a -> a) and the second is that same a.

-- ########################
--implement a function in the standard library, zipWith
--It takes a function and two lists as parameters and 
--then joins the two lists by applying the function between corresponding elements. 


--zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

--Remember that when you're making functions, especially higher order ones, 
--and you're unsure of the type, you can just try omitting the type declaration 
--and then checking what Haskell infers it to be by using :t.

--flip' :: (a -> b -> c) -> (b -> a -> c)
--flip' f = g
--    where g x y = f y x

--The second pair of parantheses is unncessary. 
--(a -> b -> c) -> (b -> a -> c) is the same as 
--(a -> b -> c) -> (b -> (a -> c)), which is the same as 
--(a -> b -> c) -> b -> a -> c.

flip' :: (a -> b -> c) -> (b -> a -> c) 
flip' f y x = f x y 


-- !!!!!!!!!
--fold / reduce
--foldl is also called left fold
--foldl starts folding from the left
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum1' :: (Num a) => [a] -> a
sum1' = foldl (+) 0
--The lambda function (\acc x -> acc + x) is the same as (+).
--We can omit the xs as the parameter because calling foldl (+) 0 
--will return a function that takes a list. 
--Generally, if you have a function like foo a = bar b a, 
--you can rewrite it as foo = bar b, because of currying.

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys





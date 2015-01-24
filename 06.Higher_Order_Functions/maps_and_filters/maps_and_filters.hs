map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter p xs
    | otherwise = filter p xs

--All of this could also be achived with list comprehensions 
--by the use of predicates. 
--Decide what is more readable.

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = filter (<= x) xs ++ [x] ++ filter (>x) xs

--Find the largest number uner 100,000 that's divisible by 3829.
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000, 99999..])
    where p x = x `mod` 3829 == 0

--Find the sum of all odd squares that are smaller than 10,000.
sumOfAllSquares :: (Integral a) => a
sumOfAllSquares = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

sumOfAllSquares' :: (Integral a) => a
sumOfAllSquares' = sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)])




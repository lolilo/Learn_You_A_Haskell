--numLongChains :: Int 
--numLongChains = length (filter isLong (map chain [1..100]))
--    where isLong xs = length xs > 15

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))



flip' :: (a -> b -> c) -> b -> a -> c
flip' f = \x y -> f y x
--use lambdas in this way when you want to make it explicit 
--that your function is mainly meant to be partially applied and passed on 
--to a function as a parameter.


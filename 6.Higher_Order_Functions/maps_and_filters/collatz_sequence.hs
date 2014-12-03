--For all starting numbers between 1 and 100, 
--how many chains have a length greater than 15?

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (div n 2)
    | odd n = n: chain (n * 3 + 1)

numLongChains :: Int 
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15
--function composition is defined like so
(.) :: (b -> c) -> (a -> b) -> a -> c
f . g = \x -> f (g x)

--The expression negate . (* 3) returns a function that takes a number, 
--multiplies it by 3 and then negates it.

map (\x -> negate (abs x)) []
map (negate . abs) []

map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
map (negate . sum . tail) [[1..5],[3..6],[1..7]]


sum (replicate 5 (max 6.7 8.9)) can be rewritten as 
(sum . replicate 5 . max 6.7) 8.9 or as 
sum . replicate 5 . max 6.7 $ 8.9.


fn x = ceiling (negate (tan (cos (max 50 x))))  
--"point free style" or "pointless stye" -- omit pointers/variables. Currying! 
fn = ceiling . negate . tan . cos . max 50  
--Many times, a point free style is more readable and concise, 
--because it makes you think about functions 
--and what kind of functions composing them results in 
--instead of thinking about data and how it's shuffled around.


--In the section about maps and filters, 
--we solved a problem of 
--finding the sum of all odd squares that are smaller than 10,000. 
--Here's what the solution looks like when put into a function.

oddSquareSum :: Integer  
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))     
--Being such a fan of function composition, I would have probably written that like this:

oddSquareSum :: Integer  
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]  
--However, if there was a chance of someone else reading that code, I would have written it like this:

oddSquareSum :: Integer  
oddSquareSum =   
    let oddSquares = filter odd $ map (^2) [1..]  
        belowLimit = takeWhile (<10000) oddSquares  
    in  sum belowLimit  
--Someone reading the function will probably find it easier to read than a composition chain.

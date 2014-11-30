--Hmmm, taking a variable, pattern matching it, evaluating pieces of code based on its value, 
--where have we heard this before? Oh yeah, pattern matching on parameters in function definitions! 
--Well, that's actually just syntactic sugar for case expressions. 
--These two pieces of code do the same thing and are interchangeable:

head1' :: [a] -> a
head1' [] = error "No head for empty lists!"
head1' (x:_) = x

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

--case expression of pattern -> result  
--                   pattern -> result  
--                   pattern -> result  
--                   ...  

--So...I'm save to always use the sugar and never type "case" in my Haskell code? 
--I prefer the easier formatting with pattern matching...

--However, whereas pattern matching on function parameters can only be done when defining functions,
--case expressions can be used pretty much anywhere. See describeList.hs.
--...the other example, we could use "where" so...I guess I could survive without typing "case" ever.
--Just use the sugar.

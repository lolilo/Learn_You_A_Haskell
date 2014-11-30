initials :: String -> String -> String  
initials (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "." 

--initials :: String -> String -> String  
--initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
--    where (f:_) = firstname  
--          (l:_) = lastname 

--We could have done this pattern matching directly in the function's parameters 
--(it would have been shorter and clearer actually) 
--but this just goes to show that it's possible to do it in where bindings as well.

doubleMe x = x + x
--doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
						then x
						else x*2

--The difference between Haskell's if statement 
--and if statements in imperative languages is that 
--the else part is mandatory in Haskell. 
--In imperative languages you can just skip a couple of steps 
--if the condition isn't satisfied but in Haskell 
--every expression and function must return something. 


--Another thing about the if statement in Haskell is that it is an expression.
--An expression is basically a piece of code that returns a value.

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

--Note the ' at the end of the function name. 
--That apostrophe doesn't have any special meaning in Haskell's syntax. 
--It's a valid character to use in a function name. 
--We usually use ' to either denote a strict version of a function (one that isn't lazy) 
--or a slightly modified version of a function or a variable.

--Functions cannot begin with uppercase letters.

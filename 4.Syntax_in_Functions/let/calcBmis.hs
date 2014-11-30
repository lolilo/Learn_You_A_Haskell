--calcBmis :: (RealFloat a) => [(a, a)] -> [a]
--calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

--add another filter for higher value bmis
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

--If let bindings are so cool, why not use them all the time instead of where bindings, you ask? 
--Well, since let bindings are expressions and are fairly local in their scope, they can't be used across guards. 
--Some people prefer where bindings because the names come after the function they're being used in. 
--That way, the function body is closer to its name and type declaration and to some that's more readable.
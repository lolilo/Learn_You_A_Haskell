cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
       	topArea = pi * r^2
    in  sideArea + 2 * topArea 

--The form is let <bindings> in <expression>. 
--The names that you define in the let part are accessible to the expression after the in part. 
--As you can see, we could have also defined this with a where binding. 
--Notice that the names are also aligned in a single column. 
--So what's the difference between the two? 
--For now it just seems that let puts the bindings first and the expression that uses them later 
--whereas where is the other way around.

--typclasses are like interfaces. 
--A typeclass defines some behavior 
--and then types that can behave in that way are made instances of that typeclass.

--Eq typeclass is for stuff that can be equated.

class Eq a where
    (==) :: a -> a-> Bool
    (/=) :: a -> a -> Bool
    x == y = not (x /= y)
    x /= y = not (x == y)

--Some people might understand this better if 
--we wrote class Eq equatable where and then specified the type declarations like (==) :: equatable -> equatable -> Bool.

data TrafficLight = Red | Yellow | Green  

--Notice how we didn't derive any class instances for it.
--That's because we're going to write up some instances by hand, even though we could derive them for types like Eq and Show. 

instance Eq TrafficLight where  
    Red == Red = True  
    Green == Green = True  
    Yellow == Yellow = True  
    _ == _ = False  

--Because == was defined in terms of /= and vice versa in the class declaration, 
--we only had to overwrite one of them in the instance declaration. 
--That's called the minimal complete definition for the typeclass — 
--the minimum of functions that we have to implement so that our type can behave like the class advertises.
--To fulfill the minimal complete definition for Eq, we have to overwrite either one of == or /=. 

--If Eq was defined simply like this:

--class Eq a where  
--    (==) :: a -> a -> Bool  
--    (/=) :: a -> a -> Bool  
--we'd have to implement both of these functions when making a type an instance of it, 
--because Haskell wouldn't know how these two functions are related. 
--The minimal complete definition would then be: both == and /=.

instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light"  

--instance Eq (Maybe m) where
--    Just x == Just y = x == y
--    Nothing == Nothing = True
--    _ == _ = False

--There's one problem with this though. Can you spot it? 
--We use == on the contents of the Maybe but we have no assurance that 
--what the Maybe contains can be used with Eq! 
--That's why we have to modify our instance declaration like this:

instance (Eq m) => Eq (Maybe m) where
    Just x == Just y = x == y
    Nothing == Nothing = True
    _ == _ = False
    
--add a class constraint!
--With this instance declaration, we say this: 
--we want all types of the form Maybe m to be part of the Eq typeclass, 
--but only those types where the m (so what's contained inside the Maybe) is also a part of Eq. 
--This is actually how Haskell would derive the instance too.





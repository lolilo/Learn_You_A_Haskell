--implement JavaScript-ish behavior

class YesNo a where
    yesno :: a -> Bool


instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where  
    yesno [] = False  
    yesno _ = True  

instance YesNo Bool where  
    yesno = id   

--What's id? It's just a standard library function that takes a parameter 
--and returns the same thing, which is what we would be writing here anyway.

yesnoIf :: (YesNo y) => y -> a -> a -> a  
yesnoIf yesnoVal yesResult noResult = if yesno yesnoVal then yesResult else noResult  

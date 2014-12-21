data Maybe a = Nothing | Just a 

--the list data type also takes a type parameter

data Vector a = Vector a a a deriving (Show)

vplus :: (Num t) => Vector t -> Vector t -> Vector t
(Vector i j k) `vplus` (Vector l m n) = Vector (i + l) (j + m) (k + n)

vecMult :: (Num t) => Vector t -> t -> Vector t
(Vector i j k) `vectMult` m = Vector (i * m) (j * m) (k* m)

scalarMult :: (Num t) => Vector t -> Vector t -> t
(Vector i j k) `scalarMult` (Vector l m n) = i * l + j * m + k * n

--It's very important to distinguish between the type constructor and the value constructor. 
--When declaring a data type, the part before the = is the type constructor and the constructors after it (possibly separated by |'s) are value constructors. 


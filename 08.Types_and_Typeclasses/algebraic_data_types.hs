module Shapes 
(Point(..)
, Shape(..)
, surface
, nudge
, baseCircle
, baseRectangle
) where

--By doing Shape(..), we exported all the value constructors for Shape, 
--so that means that whoever imports our module can make shapes by using the Rectangle and Circle value constructors. 
--It's the same as writing Shape (Rectangle, Circle) 

--We could also opt not to export any value constructors for Shape by just writing Shape in the export statement. 
-- ~ hidden value constructor.
-- ~ someone importing our module could only make shapes by using the auxilliary functions baseCircle and baseRect.

data Bool = False | True

--data means that we're defining a new data type. 
--The part before the = denotes the type, which is Bool. 
--The parts after the = are value constructors. They specify the different values that this type can have. 
--The | is read as or. So we can read this as: the Bool type can have a value of True or False. 
--Both the type name and the value constructors have to be capital cased.

--data Shape = Circle Float Float Float | Rectangle Float Float Float Float 

--surface :: Shape -> Float
--surface (Circle _ _ r) = pi * r ^ 2
--surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)


--data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show) 

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
--Notice that when defining a point, we used the same name for the data type and the value constructor. 
--This has no special meaning, although it's common to use the same name as the type if there's only one value constructor.

    
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)


nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b = Circle (Point (x + a) (y + b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b))

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRectangle :: Float -> Float -> Shape
baseRectangle width height = Rectangle (Point 0 0) (Point width height)





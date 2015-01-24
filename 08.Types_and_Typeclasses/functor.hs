-- better explanation than LYAH (more pictures!)

-- Functor typeclass -- for things that can be mapped over
-- http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html

class Functor f where
    fmap :: (a -> b) -> f a -> f b


instance Functor Maybe where
    fmap f (Just x) = Just (f x)
    fmap f Nothing = Nothing

--map :: (a -> b) -> [a] -> [b]
--map is just a fmap that works only on lists
instance Functor [] where
    fmap = map

-- functions are Functors, too
instance Functor ((->) r) where
    fmap f g = f . g
-- fmap on a function is function composition




-- more examples
instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x leftsub rightsub) = Node (f x) (fmap f leftsub) (fmap f rightsub)

instance Functor (Either a) where
    fmap f (Right x) = Right (f x)
    fmap f (Left x) = Left x

--Functor typeclass -- for things that can be mapped over

class Functor f where
    fmap :: (a -> b) -> f a -> f b

--map :: (a -> b) -> [a] -> [b]
--map is just a fmap that works only on lists
instance Functor [] where
    fmap = map

instance Functor Maybe where
    fmap f (Just x) = Just (f x)
    fmap f Nothing = Nothing

instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x leftsub rightsub) = Node (f x) (fmap f leftsub) (fmap f rightsub)

instance Functor (Either a) where
    fmap f (Right x) = Right (f x)
    fmap f (Left x) = Left x

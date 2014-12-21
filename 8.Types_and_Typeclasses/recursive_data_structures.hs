--data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)
--same  as data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)  



--We can define functions to be automatically infix by making them comprised of only special characters. 
--We can also do the same with constructors, since they're just functions that return a data type.
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

-- define our own functio that adds two lists together
-- ++ is define as follows
--infixr 5 ++ 
--(++) :: [a] -> [a] -> [a]
--[]      ++ ys = ys
--(x:xs)  ++ ys = x : (xs ++ ys)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

--implement a binary search tree

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (treeInsert x left) right
    | x > a = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
    | x == a = True
    | x < a = treeElem x left
    | x > a = treeElem x right 




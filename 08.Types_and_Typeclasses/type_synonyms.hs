import qualified Data.Map as Map

--type String = [Char]

--type PhoneBook = [(String,String)]

type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name, pnumber) `elem` pbook

--Type synonyms can also be parameterized. 
--If we want a type that represents an association list type but still want it to be general
--so it can use any type as the keys and values, we can do this:
type AssocList k v = [(k, v)]


--Now, a function that gets the value by a key in an association list can have a type of 
--(Eq k) => k -> AssocList k v -> Maybe v. 
--AssocList is a type constructor that takes two types and produces a concrete type, 
--like AssocList Int String, for instance.


--data Either a b = Left a | Right b deriving (Eq, Ord, Read, Show)  
--So far, we've seen that Maybe a was mostly used to represent the results of computations 
--that could have either failed or not. But somtimes, Maybe a isn't good enough 
--because Nothing doesn't really convey much information other than that something has failed. 
--That's cool for functions that can fail in only one way or if we're just not interested in how and why they failed. 
--A Data.Map lookup fails only if the key we were looking for wasn't in the map, so we know exactly what happened. 
--However, when we're interested in how some function failed or why, we usually use the result type of Either a b, 
--where a is some sort of type that can tell us something about the possible failure and b is the type of a successful computation. 
--Hence, errors use the Left value constructor while results use Right.



data LockerState = Taken | Free deriving (Show, Eq)
type Code = String -- synonym for locker code
type LockerMap = Map.Map Int (LockerState, Code) -- synonym for locker map


lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map =
    case Map.lookup lockerNumber map of
        Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!"
        Just (state, code) -> if state /= Taken
                                then Right code
                                else Left $ "Locker " ++ show lockerNumber ++ " is already taken."



--Use record syntax when a constructor has several fields and it's not obvious which field is which.

--data Person = Person String String Int Float String String deriving (Show)

data Person = Person { firstName :: String
, lastName :: String
, age :: Int
, height :: Float
, phoneNumber :: String
, flavor :: String
} deriving (Show)



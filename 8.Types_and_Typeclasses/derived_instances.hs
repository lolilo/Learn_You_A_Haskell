data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday  
    deriving (Eq, Ord, Show, Read, Bounded, Enum)

--Because all the value constructors are nullary (take no parameters, i.e. fields), we can make it part of the Enum typeclass.
    
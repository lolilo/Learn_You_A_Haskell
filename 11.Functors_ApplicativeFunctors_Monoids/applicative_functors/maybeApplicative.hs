instance Applicative Maybe where
        pure = Just
        Nothing <*> _ = Nothing
        (Just f) <*> something = fmap f something

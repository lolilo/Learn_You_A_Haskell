instance Functor IO where
	fmap f action = do
		result <- action
		return (f result)

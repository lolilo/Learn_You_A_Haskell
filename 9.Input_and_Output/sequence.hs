-- sequence takes a list of I/O actions and
-- returns a single I/O action that will perform those actions
-- one after the other

-- the result contained in that I/O action will be 
-- a list of the results that all the I/O actions performed

-- sequence :: [IO a] -> IO [a]
main = do
	rs <- sequence [getLine, getLine, getLine]
	print rs

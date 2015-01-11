-- forM (located in ConstrolMonad) is like mapM, 
-- only it has its parameters switched around
-- The first paramter is the list and 
-- the second one is the mapping function, which is then sequenced

-- This is useful if you can apply lambda functions for utilizing list information

import Control.Monad

main = do
	colors <- forM [1, 2, 3, 4] (\a -> do
		putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
		color <- getLine
		return color)
	putStrLn "The colors that you associate with 1, 2, 3, and 4 are: "
	mapM_ putStrLn colors

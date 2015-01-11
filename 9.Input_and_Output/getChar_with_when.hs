-- if [conditional] 
-- then [do some I/O action]
-- else return ()

import Control.Monad

main = do 
	c <- getChar
	when (c /= ' ') $ do
		putChar c
		main

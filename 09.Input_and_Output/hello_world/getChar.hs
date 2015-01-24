-- Due to buffering, the execution of the program will begin 
-- only after hitting the return key, 
-- not after every inputted character.
main = do
	c <- getChar
	if c /= ' '
		then do 
			putChar c
			main
		else return ()

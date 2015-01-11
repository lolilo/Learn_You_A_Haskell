import System.IO

main = do
	withFile "haiku.txt" ReadMode (\handle -> do
		hSetBuffering handle $ BlockBuffering (Just 2048)
		contents <- hGetContents handle
		putStr contents)

-- hSetBuffering takes a handle and a BufferMode
-- and returns an I/O action that sets the buffering
-- NoBuffering ~ char by char -- sucks because it has to access the disk often
-- LineBuffering ~ line by line
-- BlockBuffering (Maybe Int)
    -- Maybe Int is for how large the chunk should be, in bytes
    -- if it's Nothing, the operating system determines the chunk size

-- read files in larger chunks to minimize disk access or
-- when the target file is a slow network resource

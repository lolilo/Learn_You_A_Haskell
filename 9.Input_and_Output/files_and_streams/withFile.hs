import System.IO

main = do
	withFile "haiku.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)

-- hGetContents vs getContents
-- the only difference is that getContents will automatically read from
-- the std input (from the terminal)
-- hGetContents takes a file handle which tells it which file to read from

-- just like getContents, hGetContents won't attempt to read the file
-- all at once and store it in memory, 
-- it will read as needed. 
-- We can treat contents as the entire contents of the file, but
-- it's not actually loaded in memory. Awesome. 

-- hGetLine, hPutStr, hPutStrLn, hGetChar also exist

withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile' path mode f = do
	handle <- openFile path mode
	result <- f handle
	hClose handle
	return result

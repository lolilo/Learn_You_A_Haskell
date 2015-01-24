import System.IO
import System.Directory
import Data.List

main = do
	handle <- openFile "todo.txt" ReadMode
	(tempName, tempHandle) <- openTempFile "." "temp"
	contents <- hGetContents handle
	let todoTasks = lines contents
	    numberedTasks = zipWith (\n line -> show n ++ " - " ++ line) [0..] todoTasks
	putStrLn "These are your TO-DO items:"
	putStr $ unlines numberedTasks
	putStrLn "Which one (by number) do you want to delete?"
	numberString <- getLine
	-- poor error handling
	-- if user enters index outside of range
	-- program will exist; temp file will still exist

	let number = read numberString
	    newTodoItems = delete (todoTasks !! number) todoTasks
	hPutStr tempHandle $ unlines newTodoItems
	hClose handle
	hClose tempHandle
	removeFile "todo.txt"
	renameFile tempName "todo.txt"

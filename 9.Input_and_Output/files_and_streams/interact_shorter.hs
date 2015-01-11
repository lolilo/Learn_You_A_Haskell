-- interact takes a function of type String -> String
-- and returns an I/O action that will take some input
-- run that function on it
-- and then print out the function's result

-- same as
-- contents <- getContents
-- putStr (shortLinesOnly contents)

main = interact $ unlines . filter ((<10) . length) . lines

-- this program transforms one large string of input into another
-- but it beahves like it acts upon each input, line by line
-- this is because Haskell is lazy
-- in lazy I/O, nothing is eaten from the input until absolutely necessary,
-- because what we want to print now depends on that input

main = interact respondPalindromes

respondPalindromes contents = unlines (map (\xs -> if isPalindrome xs then
	    "palindrome" else "not a palindrome") (lines contents))
	where isPalindrome xs = xs == reverse xs

bmiTell :: (RealFLoat a) => a -> String
bmiTell bmi
	| bmi <= 18.5 = "Underweight" 
	| bmi <= 25.0 = "Normal"
	| bmi <= 30.0 = "Fat"
	| otherwise = "Whale"

--A guard is basically a boolean expression. 
--If it evaluates to True, then the corresponding function body is used. 
--If it evaluates to False, checking drops through to the next guard and so on.
--otherwise is defined simply as otherwise = True and catches everything. 
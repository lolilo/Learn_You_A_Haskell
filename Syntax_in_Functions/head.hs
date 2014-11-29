head' :: [a] -> a
head' [] = error "Cannot call head on an empty list."
head' (x:_) = x
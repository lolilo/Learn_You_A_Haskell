--addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
--addVectors a b = (fst a + fst b, snd a + snd b)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

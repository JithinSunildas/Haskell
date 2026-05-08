qsort [] = []
qsort (x : xs) = qsort (filter (< x) (x : xs)) ++ filter (== x) (x : xs) ++ filter (> x) (x : xs)

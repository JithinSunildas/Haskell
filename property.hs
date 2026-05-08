fact n
  | n <= 1 = 1
  | otherwise = n * fact (n - 1)

prop_fact n = (fact n) > 0

maptwice [] = []
maptwice (x : xs) = 2 * x : maptwice xs

msum [] = 0
msum (x : xs) = x + msum xs

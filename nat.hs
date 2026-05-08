-- data N = Z | Suc N

-- f :: N -> N -> Int
-- f Z = 0
-- f (Suc x) = 1 + f (Suc x)
--

g 0 = [0]
g n
  | n > 0 = n : g (n - 1)
  | otherwise = n : g (n + 1)

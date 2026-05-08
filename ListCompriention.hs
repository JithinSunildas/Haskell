a = [2 * x | x <- [1 .. 10]]

b = [x | x <- [1 .. 10], even x]

c = [(x, y) | x <- [1 .. 5], y <- [1 .. 3]]

d = [(x, y) | x <- [1 .. 5], y <- [1 .. 3], even (x + y)]

strcombination = []

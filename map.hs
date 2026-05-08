sq x = x * x

mapsq [] = []
mapsq (x : xs) = sq x : (mapsq xs)

map2x [] = []
map2x (x : xs) = 2 * x : map2x xs

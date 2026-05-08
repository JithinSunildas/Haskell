myFold k op [] = k
myFold k op (x : xs) = op x (myFold k op xs)

mapsq [] = []
mapsq (x : xs) = x ** 2 : mapsq xs

eval :: (a -> a -> a) -> [a] -> a -> a
eval fn [] k = k
eval fn (x : xs) k = fn x (eval fn xs k)

fct 0 = 1
fct n = n * fct (n - 1)

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

sq x = x * x

map1 :: (Int -> Int) -> [Int] -> [Int]
map1 sq [] = []
map1 sq (x : xs) = sq x : map1 sq xs

foldr2 :: (Int -> Int -> Int) -> Int -> [Int] -> Int
foldr2 (+) 0 [] = 0
foldr2 (+) 0 (x : xs) = (+) x (foldr2 (+) 0 xs)

fibn = 0 : 1 : zipWith (+) fibn (tail fibn)

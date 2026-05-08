-- refferential transperency
-- f 3 4 5 has same value everywhere in hasekell
-- but not in c.

sum3 a b c
  | a == 13 = 0
  | otherwise = a + b + c

roots a b c | det >= 0 = (r1, r2)
  where
    r1 = (-b + d) / (2 * a)
    r2 = (-b - d) / (2 * a)
    d = sqrt det
    det = b * b - 4 * a * c

doubler x = 2 * x

square :: Int -> Int
square x = x * x

makePositive :: Int -> Int
makePositive x
  | x < 0 = -x
  | otherwise = x

lastDigit :: Int -> Int
lastDigit x = x `mod` 10

-- A function which can take any other function, and apply it to a list of int
mapper :: (Int -> Int) -> [Int] -> [Int]
mapper f1 [] = []
mapper f1 (x : xs) = f1 x : mapper f1 xs

-- Real map type
mapc :: (a -> b) -> [a] -> [b]
mapc f [] = []
mapc f (x : xs) = f x : mapc f xs

g = \x -> 2 * x

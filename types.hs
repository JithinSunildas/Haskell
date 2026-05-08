data B = T | F

-- data is a constructor
-- data is used to construc type 'B'
-- B is set to True or False

f T = 10
f F = 20

-- data List a = Node a (List a) | Null

sum2 [] = 0
sum2 (x : xs) = x + sum2 xs

prod [] = 1
prod (x : xs) = x * prod xs

len [] = 0
len (x : xs) = 1 + len xs

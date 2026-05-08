data Tree a = Node a (Tree a) (Tree a) | Empty

sumTree Empty = 0
sumTree (Node a l r) = sum3 a (sumTree l) (sumTree r)

mulTree Empty = 1
mulTree (Node a l r) = mul3 a (mulTree l) (mulTree r)

sum3 a b c = a + b + c

mul3 a b c = a * b * c

num3 a b c = 1 + b + c

foldTree f k Empty = k
foldTree f k (Node a l r) = f a (foldTree f k l) (foldTree f k r)

data Chain a = Ring a (Chain a) | Null

data Summer a = F a a

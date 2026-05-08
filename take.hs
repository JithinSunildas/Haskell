eq [] [] = True
eq [] (y : ys) = False
eq (x : xs) [] = False
eq (x : xs) (y : ys)
  | x == y = eq xs ys
  | otherwise = False

insert x [] = [x]
insert x (y : ys)
  | x <= y = x : y : ys
  | otherwise = insert x ys

merge xs [] = xs
merge [] ys = ys
merge (x : xs) (y : ys)
  | x >= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

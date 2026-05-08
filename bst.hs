data Tree = Node Int Tree Tree | Null

search :: Tree -> Int -> Bool
search Null x = False
search (Node n l r) x
  | x < n = search l x
  | x > n = search r x
  | otherwise = True

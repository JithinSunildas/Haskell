data Q a = Q [a] deriving (Show, Eq)

newQ = Q []

isEmptyQ (Q []) = True
isEmptyQ _ = False

enQ k (Q xs) = Q (xs ++ [k])

deQ (Q []) = error "empty"
deQ (Q (x : xs)) = (x, Q xs)

import Distribution.Simple (KnownExtension (Strict))

-- Consider the game Rock-Paper-Scissors.
-- a) A move can be a rock or a paper or a scissors. Define a type to represent the move.
-- b) Define a function compareMoves :: Move -> Move -> Int  that determines the winner
--     The function should return:

-- * 1 if the first move beats the second.

-- * -1 if the first move loses.

-- * 0 if it is a tie.

data Move = Stone | Paper | Sissors

compareMoves :: Move -> Move -> Int
compareMoves Stone Paper = -1
compareMoves Paper Sissors = -1
compareMoves Sissors Stone = -1
compareMoves Sissors Sissors = -1
compareMoves Stone Stone = -1
compareMoves Paper Paper = -1
compareMoves a b
  | otherwise = 1

-- In last class, we were talking about

-- * a function (a,b) -> c  which takes a tuple (a,b) and return value of type c

-- * a function a->(b->c) which takes value of type a and return a function that takes b and returns c.

--
-- Question we were asking ourselves was: is it possible to take a function f of type (a,b)->c and returns a function of type a->b->c. And vice-versa.
--
-- curry :: ((a,b)->c) -> (a->b->c)
-- curry f = \a->\b-> ...
--
-- And vice-versa
--
-- uncurry :: (a->b->c) ->( (a,b)->c )
-- uncurry g = \(a,b) -> ...
--
-- Fill in the blanks in above?
--
--    uncurry ::  (a->b->c) -> ((a,b)->c)
--    uncurry f =

f :: (Int, Int) -> Int
f (a, b) = a + b

-- Homework question:
--
-- 1. Implement a dictionary of word-meaning pairs using lists
-- 2. We had implemented Tree, and foldTree/mapTree. Now: Implement a dictionary of word-meaning pairs using binary search trees.

dict :: String -> String -> [(String, String)] -> [(String, String)]
dict word mean restoflist = (word, mean) : restoflist

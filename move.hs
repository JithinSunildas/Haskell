module Move where

-- import Prelude -- hiding (EQ,LT,GT, Ord, Ordering, compare, (>) )
-- import Ord

data Move = Rock | Paper | Scissors

showMove :: Move -> String
showMove Rock = "Rock"
showMove Paper = "Paper"
showMove Scissors = "Scissors"

compareMove :: Move -> Move -> Ordering
compareMove Rock Rock = EQ
compareMove Rock Paper = LT
compareMove Rock Scissors = GT
compareMove Paper Rock = GT
compareMove Paper Paper = EQ
compareMove Paper Scissors = LT
compareMove Scissors Rock = LT
compareMove Scissors Paper = GT
compareMove Scissors Scissors = EQ

eqMove :: Move -> Move -> Bool
eqMove Rock Rock = True
eqMove Paper Paper = True
eqMove Scissors Scissors = True
eqMove _ _ = False

instance Ord Move where
  compare = compareMove

instance Eq Move where
  x == y = eqMove x y

instance Show Move where
  show = showMove

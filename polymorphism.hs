-- Addoc Polymerism
-- Move comparison of stone paper siccors game
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

-- RowCol Comparison of matrix
data RowCol = RowCol Int Int

compareRowCol (RowCol r1 c1) (RowCol r2 c2)
  | r1 > r2 = 1
  | (r1 == r2) && (c1 > c2) = 1
  | (r1 == r2) && (c1 == c2) = 0
  | otherwise = -1

-- compareRowCol :: (Int, Int) -> (Int, Int) -> Int
-- compareRowCol (r1, c1) (r2, c2)
--   | r1 > r2 = 1
--   | (r1 == r2) && (c1 > c2) = 1
--   | (r1 == r2) && (c1 == c2) = 0
--   | otherwise = -1

Maybe a = Just a | Nothing
find:: (Move->Bool) -> [Move] -> Maybe Move

module RowCol where

import Prelude -- hiding (EQ,LT,GT, Ord, Ordering, compare, (>) )
import Prelude qualified as P

data RowCol = RowCol Int Int

compareRowCol (RowCol r1 c1) (RowCol r2 c2)
  | r1 P.< r2 = LT
  | r1 P.> r2 = GT
  | r1 P.== r2 && c1 P.< c2 = LT
  | r1 P.== r2 && c1 P.> c2 = GT
  | otherwise = EQ

-- compareRowCol2 (RowCol r1 c1) (RowCol r2 c2)
--    | r1 < r2 = LT
--    | r1 > r2 = GT
--    | otherwise = compare c1 c2

instance Show RowCol where
  show (RowCol a b) = "RowCol " ++ show a ++ " " ++ show b

instance Ord RowCol where
  compare = compareRowCol

instance Eq RowCol where
  (==) = eqRowCol

eqRowCol (RowCol r1 c1) (RowCol r2 c2) = r1 == r2 && c1 == c2

eqRowCol2 (RowCol r1 c1) (RowCol r2 c2)
  | r1 == r2 && c1 == c2 = True
  | otherwise = False

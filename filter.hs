filterg10 [] = []
filterg10 (x : xs)
  | x > 10 = x : filterg10 xs
  | otherwise = filterg10 xs

evenfilter [] = []
evenfilter (x : xs)
  | x `mod` 2 == 0 = x : evenfilter xs
  | otherwise = evenfilter xs

oddfilter [] = []
oddfilter (x : xs)
  | x `mod` 2 /= 0 = x : oddfilter xs
  | otherwise = oddfilter xs

filterl5 [] = []
filterl5 (x : xs)
  | x < 5 = x : filterl5 xs
  | otherwise = filterl5 xs

sq x = x * x

signum x
  | x > 0 = 1
  | x < 0 = -1
  | otherwise = 0

fact 0 = 1
fact n = n * fact (n - 1)

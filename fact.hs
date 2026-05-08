readEcho0 :: IO ()
readEcho0 = getLine >>= putStrLn

readEcho1 =
  getLine
    >>= ( \line ->
            putStrLn ("Line is: " ++ line)
        )

readEcho2 = do
  line <- getLine
  putStrLn ("line read: " ++ line)

readEcho3 =
  putStr "Enter: "
    >>= ( \_ ->
            getLine
              >>= (\line -> putStrLn ("Line is: " ++ line))
        )

main = readEcho2

-- main = putStrLn (show (fact 5))
-- main = getLine >>= putStrLn

-- main = readEcho0

fact 0 = 1
fact n = n * fact (n - 1)

fact2 n = go 1 n
  where
    go ax 0 = ax
    go ax n = go (ax * n) (n - 1)

--
-- err = undefined
--
-- ite c t e = if c then t else e
--
-- x = [1,2,3,err,4,5,6]
-- y = (ite (null x) 0 (head x) , ite (null []) 0 (head []))

--
--
-- readEcho = getLine >>= (\line -> putStrLn ("Line is: " ++ line))
--
-- readEcho2 = do
--             line <- getLine
--             putStrLn ("line read: " ++ line)
--
-- readEcho3 = putStr "Enter: " >>= (\_ -> getLine >>= (\line -> putStrLn ("Line is: " ++ line)))
--
--

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

fibP :: Integer -> (Integer, Integer)
fibP 0 = (0, 1)
fibP n = (y, x + y)
  where
    (x, y) = fibP (n - 1)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

primes :: [Integer]
primes = sieve [2 ..]
  where
    sieve (x : xs) = x : sieve [y | y <- xs, y `mod` x > 0]

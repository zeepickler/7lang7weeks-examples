module Main where

  -- evaluate and return the next fib sequence pair
  fibNextPair :: (Integer, Integer) -> (Integer, Integer)
  fibNextPair (x,y) = (y, x + y)

  -- apply the fib sequence and then recursively call again 
  -- end up w/ fnp fnp fnp .. (1,1)
  fibNthPair :: Integer -> (Integer, Integer)
  fibNthPair 1 = (1,1)
  fibNthPair n = fibNextPair (fibNthPair (n -1))

  -- take return first element of the pair
  fib :: Integer -> Integer
  fib = fst . fibNthPair
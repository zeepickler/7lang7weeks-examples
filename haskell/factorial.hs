module Main where
  -- factorial using pattern matching
  factorial :: Integer -> Integer
  factorial 0 = 1
  factorial x = x * factorial (x - 1)
module Main where
  -- find the length of the list
  size [] = 0
  size (h:t) = 1 + size t

  -- find the product of the list
  prod [] = 1
  prod (h:t) = h * prod t
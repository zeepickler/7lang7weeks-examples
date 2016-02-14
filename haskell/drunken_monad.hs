module Main where
  {- Monad needs:
  - type container
  - return
  - bind -}

  -- type container
  data Position t = Position t deriving (Show)

  stagger (Position d) = Position (d + 2)
  crawl (Position d) = Position (d + 1)

  -- return  (rtn == return)
  rtn x = x

  -- bind (>>== == >>=)
  x >>== f = f x

  treasureMap pos = pos >>== 
                    stagger >>== 
                    stagger >>== 
                    crawl >>== 
                    rtn
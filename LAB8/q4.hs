-- Define a monadic generalization of foldl using foldM:

foldM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldM _ z [] = return z
foldM f z (x:xs) = do
  result <- f z x
  foldM f result xs


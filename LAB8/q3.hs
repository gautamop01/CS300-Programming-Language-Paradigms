tuple :: Monad m => m a -> m b -> m (a, b)
tuple ma mb = do
  a <- ma
  b <- mb
  return (a, b)


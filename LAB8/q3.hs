-- Define a function tuple for the Maybe monad:

import Control.Applicative

tuple :: Applicative m => m a -> m b -> m (a, b)
tuple ma mb = (,) <$> ma <*> mb
Define a monadic generalization of foldl:
haskell
Copy code
foldM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldM f a [] = return a
foldM f a (x:xs) = do
    acc <- f a x
    foldM f acc xs
    

-- Define a monadic generalization of foldl using foldM:
import Control.Monad

foldM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a
foldM _ acc []     = return acc
foldM f acc (x:xs) = do
    newAcc <- f acc x
    foldM f newAcc xs


import System.IO

tuple :: Monad m => m a -> m b -> m (a, b)
tuple ma mb = ma >>= (\a -> mb >>= (\b -> return (a, b)))

tuple' :: Monad m => m a -> m b -> m (a, b)
tuple' ma mb = do
    a <- ma
    b <- mb
    return (a, b)

tupleApplicative :: Applicative m => m a -> m b -> m (a, b)
tupleApplicative ma mb = (,) <$> ma <*> mb

main :: IO ()
main = do
    putStrLn "Enter the first value (a):"
    a <- readLn
    putStrLn "Enter the second value (b):"
    b <- readLn

    -- Using (>>=) or bind operator
    let resultBind = tuple a b

    -- Using do-notation
    let resultDo = tuple' a b

    -- Using applicative operators
    let resultApplicative = tupleApplicative a b

    putStrLn "Result using (>>=) or bind operator:"
    print resultBind

    putStrLn "Result using do-notation:"
    print resultDo

    putStrLn "Result using applicative operators:"
    print resultApplicative


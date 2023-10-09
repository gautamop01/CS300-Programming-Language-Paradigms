main :: IO ()
main = do   
    putStrLn "Give a number:"
    input <- getLine
    let n = read input :: Int
    let table = [1..10]
    putStrLn "Multiplication Table:"
    mapM_ (\x -> putStrLn $ show x ++ "*" ++ show n ++ " = " ++ show (x * n)) table
    putStrLn "Goodbye"


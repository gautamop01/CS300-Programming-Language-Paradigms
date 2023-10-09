import Data.Char

-- Function to repeat each character in a string 'k' times
stutter :: String -> Int -> String
stutter [] _ = []
stutter (c:cs) k = replicate k c ++ stutter cs k

main :: IO ()
main = do
    putStrLn "Enter a String:"
    input <- getLine
    putStrLn "Enter a number:"
    kStr <- getLine
    let k = read kStr :: Int
    let stutteredWord = stutter input k
    putStrLn $ "Stuttered word: " ++ stutteredWord


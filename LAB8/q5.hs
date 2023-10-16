-- Write an interactive program that converts a binary number to its decimal equivalent using the Maybe monad:


import Data.Maybe (fromMaybe)

binaryToDecimal :: String -> Maybe Int
binaryToDecimal = foldl (\acc x -> acc >>= step x) (Just 0)
  where
    step '0' acc = Just (acc * 2)
    step '1' acc = Just (acc * 2 + 1)
    step _ _     = Nothing

main :: IO ()
main = do
    putStrLn "Enter a binary number:"
    binaryStr <- getLine
    let result = binaryToDecimal binaryStr
    putStrLn $ "Result: " ++ (fromMaybe "Nothing" (fmap show result))


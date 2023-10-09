import Data.List.Split (splitOn)
import Control.Monad (unless)

-- Function to evaluate a postfix expression
evaluatePostfix :: String -> Maybe Int
evaluatePostfix expr = evalHelper (words expr) []

evalHelper :: [String] -> [Int] -> Maybe Int
evalHelper [] [result] = Just result
evalHelper [] _ = Nothing
evalHelper (token:tokens) stack
    | all isDigit token = evalHelper tokens (read token : stack)
    | length stack >= 2 = case token of
        "+" -> evalHelper tokens $ (stack !! 1 + stack !! 0) : drop 2 stack
        "-" -> evalHelper tokens $ (stack !! 1 - stack !! 0) : drop 2 stack
        "*" -> evalHelper tokens $ (stack !! 1 * stack !! 0) : drop 2 stack
        "/" -> evalHelper tokens $ (stack !! 1 `div` stack !! 0) : drop 2 stack
        _ -> Nothing
    | otherwise = Nothing

main :: IO ()
main = do
    putStrLn "Enter a postfix expression (separate operators and operands by spaces):"
    input <- getLine
    let result = evaluatePostfix input
    case result of
        Just value -> putStrLn $ "Result: " ++ show value
        Nothing -> putStrLn "Invalid postfix expression."
    
    putStrLn "Do you want to evaluate another expression? (y/n)"
    choice <- getLine
    unless (choice /= "y") main


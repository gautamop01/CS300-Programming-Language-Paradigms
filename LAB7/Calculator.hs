-- Function to evaluate a postfix expression
evaluatePostfix :: String -> Int
evaluatePostfix expr = head $ foldl evalStep [] (words expr)
  where
    evalStep :: [Int] -> String -> [Int]
    evalStep stack token
      | token `elem` ["+", "-", "*", "/"] = do
          let val2 = head stack
          let val1 = head (tail stack)
          case token of
            "+" -> (val1 + val2) : (tail (tail stack))
            "-" -> (val1 - val2) : (tail (tail stack))
            "*" -> (val1 * val2) : (tail (tail stack))
            "/" -> (div val1 val2) : (tail (tail stack))
      | otherwise = (read token :: Int) : stack

main :: IO ()
main = do
    putStrLn "Enter a postfix expression (separated by spaces):"
    input <- getLine
    let result = evaluatePostfix input
    putStrLn $ "Result: " ++ show result
    main -- Continue the interactive loop


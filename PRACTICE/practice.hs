oddEven :: Int -> String
oddEven n
    | n `mod` 2 == 0 = "even"
    | otherwise = "odd"

-- string of characters 
hello :: String 
hello = "Hello, sir!"

-- Combining characters and strings
greeting :: String
greeting = "Hi, " ++ "there!"

-- Pattern matching with characters
isVowel :: Char -> Bool
isVowel c = c `elem` "aeiouAEIOU"

-- other example of elem 
main :: IO()
main = do
	let myList = [1, 2, 3, 4, 5]
	
	putStrLn $ "Is 3 in the list? " ++ show (3, `elem` myList)
	putStrLn $ "Is 7 in the list? " ++ show (7, `elem` myList)
	

{-
Twice Example 
twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- Using twice to square a number twice
main :: IO ()
main = do
    let square x = x * x
    let result = twice square 3
    putStrLn $ "Result: " ++ show result


composition :: (b -> c) -> (a -> b) -> a -> c
composition f g x = f (g x)

-- Using composition to calculate the square of the successor of a number
main :: IO ()
main = do
    let successor x = x + 1
    let square y = y * y
    let result = composition square successor 4
    putStrLn $ "Result: " ++ show result - }



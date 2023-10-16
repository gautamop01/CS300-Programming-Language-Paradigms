import System.Random

-- Function to select n random elements from a list
rand_select :: [a] -> Int -> IO [a]
rand_select xs n = do
    gen <- newStdGen
    let randomIndices = take n $ randomRs (0, length xs - 1) gen
        selectedElements = [xs !! i | i <- randomIndices]
    return selectedElements

main :: IO ()
main = do
    putStrLn "Enter a list of elements separated by spaces:"
    inputList <- getLine
    let list = map read (words inputList) :: [Int]

    putStrLn "Enter the number of elements to select:"
    inputN <- getLine
    let n = read inputN :: Int

    if n <= length list
        then do
            selectedElements <- rand_select list n
            putStrLn "Randomly selected elements:"
            print selectedElements
        else
            putStrLn "Invalid input. The number of elements to select is greater than the length of the list."


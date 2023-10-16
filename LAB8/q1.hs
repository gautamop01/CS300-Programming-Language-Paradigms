import System.IO

removeSpace :: String -> String 
removeSpace = filter(/= ' ')

main :: IO ()
main = do
    putStrLn "Enter filename : "
    filename <- getLine 
    contents <- readFile filename 
    putStrLn $ removeSpace contents	

-- queens.hs

import System.Process
import System.IO

runNQueens :: Int -> IO ()
runNQueens n = do
    (_, Just hout, _, _) <- createProcess (proc "/Desktop/CS300/Prolog: N Queens and Knights Tour - Assignment" ["-s", "nQueens.pl", "-g", "nQueens(" ++ show n ++ ", L), write(L), halt."]) { std_out = CreatePipe }
    result <- hGetContents hout
    putStrLn result

main :: IO ()
main = do
    putStrLn "Running N-Queens with Prolog:"
    runNQueens 4


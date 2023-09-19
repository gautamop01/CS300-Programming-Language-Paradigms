partitioned :: [Int] -> Bool
partitioned [] = False
partitioned xs = any (\i -> all (<= i) (takeWhile (/= i) xs) && all (> i) (dropWhile (/= i) xs)) xs

fal :: [a] -> (a, a, a)
fal xs = (head xs, xs !! (length xs `div` 2), last xs)

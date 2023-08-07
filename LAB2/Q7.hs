replaceHead :: [a] -> a -> [a]
replaceHead [] _ = []
replaceHead (_:xs) y = y : xs


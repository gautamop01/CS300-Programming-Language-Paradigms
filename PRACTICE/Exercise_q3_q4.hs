--Q3
{-
emptyList :: [a] -> Bool
emptyList [] = True    -- Pattern matching for an empty list
emptyList _  = False   -- Pattern matching for any non-empty list

main :: IO ()
main = do
    let list1 = []       -- An empty list
    let list2 = [1, 2, 3] -- A non-empty list

    putStrLn $ "Is list1 empty? " ++ show (emptyList list1)
    putStrLn $ "Is list2 empty? " ++ show (emptyList list2)
-}

-- Q4
-- using Conditional Expression

emptyList :: [a] -> Bool
emptyList [] = True
emptyList _ = False

{-
safetail :: [a] -> [a]
safetail xs = if emptyList xs then xs else tail xs
-}

-- 


-- Using Guarded Equaitons 
{-
safetail :: [a] -> [a]
safetail xs | emptyList xs = xs
            | otherwise    = tail xs
-}

-- Using Patter Matching 
safetail :: [a] -> [a]
safetail [] = [] -- patter matching for an empty list 
safetail (_:xs) = xs  -- Patter matching for any non-empty list




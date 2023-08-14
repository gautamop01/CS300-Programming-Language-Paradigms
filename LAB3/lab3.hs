-- This function takes a list of pairs and flips the elements in each pair.\
-- 1
flip' :: [(a, b)] -> [(b, a)]
flip' [] = []
flip' ((x, y) : xs) = (y, x) : flip' xs

-- 2
dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x:x:dupli xs
           
-- 3
vowels :: [Char] -> [Char]
vowels [] = []
vowels (x : xs)
    | x `elem` "aeiouAEIOU" = x : vowels xs
    | otherwise = vowels xs -- when x is not a vowel
    
-- 4
repli :: [a] -> Int -> [a]
repli [] _ = []
repli (x : xs) n = replicate n x ++ repli xs n

-- 5
doubleEven :: [Int] -> [Int]
doubleEven [] = []
doubleEven (x : xs)
    | even x = 2 * x : doubleEven xs
    | otherwise = x : doubleEven xs

-- 6
elem' :: Eq a => [a] -> a -> Bool
elem' [] _ = False
elem' (x : xs) el
    | x == el = True
    | otherwise = elem' xs el

-- 7
kthElem :: [a] -> Int -> a
kthElem (x : _) 0 = x
kthElem (_ : xs) k = kthElem xs (k - 1)

-- 8
riffle :: [a] -> [a] -> [a]
riffle [] ys = ys
riffle xs [] = xs
riffle (x : xs) (y : ys) = x : y : riffle xs ys

-- 9 
rotate :: [a] -> Int -> [a]
rotate xs n = drop n xs ++ take n xs

-- 10
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
    | x <= y = x : merge xs (y : ys)
    | otherwise = y : merge (x : xs) ys

-- 11
mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort firstHalf) (mergesort secondHalf)
    where
        (firstHalf, secondHalf) = splitAt (length xs `div` 2) xs

-- 12
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropEvery' xs n
    where
        dropEvery' [] _ = []
        dropEvery' (_ : xs) 1 = dropEvery' xs n
        dropEvery' (x : xs) k = x : dropEvery' xs (k - 1)






    







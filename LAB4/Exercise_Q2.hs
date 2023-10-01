{- 
2) Write the following functions using foldr and foldl.
a) length - returns the length of a list
b) (++) - append two lists
c) product - computes the product of a list of numbers
d) or - returns the disjunction of a boolean list
e) any - apples to a predicate and a list and returns True if any element of the list satisfies
the predicate
f) all - applies to a predicate and a list - determines if all the elements satisfy the predicate
g) map
h) reverse
i) concat - concatenate a list of list into single list
j) elem
k) filter
l) partition - takes a predicate and a list and returns the pair of list of elements that do and
do not satisfy the predicate
>>partition even [1,4,2,3,5,6]
([4,2,6],[1,3,5])

m) unzip :: [(a,b)] -> ([a],[b]) - transforms a list of pairs into a list of first component and list
of second component

n) intersperse - takes an element and a list and “intersperses” that element between the
elements of the list.
>>intersperse ‘,’ “abcd”
“a,b,c,d”

o) takeWhile - applies to a predicate p and a list xs,returns the longest prefix (possibly
empty) of xs of elements that satisfy p
p) tails :: [a] -> [[a]] - returns all suffixes (or final segments) of the list, longest first.

>>tails “abc”
[“abc”,”bc”, “c”, “ “] 
-}

-- a) length
lengthFoldr :: [a] -> Int
lengthFoldr = foldr (\_ acc -> 1 + acc) 0

lengthFoldl :: [a] -> Int
lengthFoldl = foldl (\acc _ -> 1 + acc) 0


-- b) (++)
appendFoldr :: [a] -> [a] -> [a]
appendFoldr xs ys = foldr (\x acc -> x : acc) ys xs

appendFoldl :: [a] -> [a] -> [a]
appendFoldl xs ys = foldl (\acc x -> acc ++ [x]) ys xs

-- c) product
productFoldr :: Num a => [a] -> a
productFoldr = foldr (*) 1

productFoldl :: Num a => [a] -> a
productFoldl = foldl (*) 1

-- d) or
orFoldr :: [Bool] -> Bool
orFoldr = foldr (||) False

orFoldl :: [Bool] -> Bool
orFoldl = foldl (||) False

-- e) any
anyFoldr :: (a -> Bool) -> [a] -> Bool
anyFoldr p = foldr (\x acc -> p x || acc) False

anyFoldl :: (a -> Bool) -> [a] -> Bool
anyFoldl p = foldl (\acc x -> acc || p x) False





-- f) all
allFoldr :: (a -> Bool) -> [a] -> Bool
allFoldr p = foldr (\x acc -> p x && acc) True

allFoldl :: (a -> Bool) -> [a] -> Bool
allFoldl p = foldl (\acc x -> acc && p x) True

{-
-- Example:
let isEven = even
let list1 = [2, 4, 6, 8]
let list2 = [2, 4, 5, 6]

allFoldr isEven list1
-- Output: True (All elements are even)

allFoldl isEven list1
-- Output: True (All elements are even)

allFoldr isEven list2
-- Output: False (Not all elements are even)

allFoldl isEven list2
-- Output: False (Not all elements are even)


-}












-- g) map
mapFoldr :: (a -> b) -> [a] -> [b]
mapFoldr f = foldr (\x acc -> f x : acc) []

mapFoldl :: (a -> b) -> [a] -> [b]
mapFoldl f = foldl (\acc x -> acc ++ [f x]) []

-- h) reverse
reverseFoldr :: [a] -> [a]
reverseFoldr = foldr (\x acc -> acc ++ [x]) []

reverseFoldl :: [a] -> [a]
reverseFoldl = foldl (\acc x -> x : acc) []

-- i) concat
concatFoldr :: [[a]] -> [a]
concatFoldr = foldr (++) []

concatFoldl :: [[a]] -> [a]
concatFoldl = foldl (++) []

-- j) elem
elemFoldr :: Eq a => a -> [a] -> Bool
elemFoldr x = foldr (\y acc -> x == y || acc) False

elemFoldl :: Eq a => a -> [a] -> Bool
elemFoldl x = foldl (\acc y -> acc || x == y) False

-- k) filter
filterFoldr :: (a -> Bool) -> [a] -> [a]
filterFoldr p = foldr (\x acc -> if p x then x : acc else acc) []

filterFoldl :: (a -> Bool) -> [a] -> [a]
filterFoldl p = foldl (\acc x -> if p x then acc ++ [x] else acc) []

-- l) partition
partitionFoldr :: (a -> Bool) -> [a] -> ([a], [a])
partitionFoldr p = foldr (\x (yes, no) -> if p x then (x : yes, no) else (yes, x : no)) ([], [])

partitionFoldl :: (a -> Bool) -> [a] -> ([a], [a])
partitionFoldl p = foldl (\(yes, no) x -> if p x then (yes ++ [x], no) else (yes, no ++ [x])) ([], [])

-- m) unzip
unzipFoldr :: [(a, b)] -> ([a], [b])
unzipFoldr = foldr (\(x, y) (xs, ys) -> (x : xs, y : ys)) ([], [])

-- n) intersperse
intersperseFoldr :: a -> [a] -> [a]
intersperseFoldr _ [] = []
intersperseFoldr sep (x:xs) = foldr (\y acc -> sep : y : acc) [x] xs

-- o) takeWhile
takeWhileFoldr :: (a -> Bool) -> [a] -> [a]
takeWhileFoldr p = foldr (\x acc -> if p x then x : acc else []) []

-- p) tails
tailsFoldr :: [a] -> [[a]]
tailsFoldr xs = foldr (\_ acc -> xs : acc) [[]] xs






{-
1) Write the following functions using list comprehension.
a) nestedOdds :: [[Int]] -> [[Int]] that takes a list of list of integers and returns it after
removing all even integers. (Hint : Use nested list comprehension)
>>nestedOdds [[1,2],[4,6],[6,7,8,9]]
[[1],[],[7,9]]

b) altMap :: (a -> b) -> (a -> b) -> [a] -> [b] - that takes two functions and a list and returns
the list after applying the two functions alternatively to list elements.
>>altMap (+1) (+2) [1..5]
[2,4,4,6,6]
-}




-- a)
nestedOdds :: [[Int]] -> [[Int]]
nestedOdds nestedLists = [[x | x <- xs, odd x] | xs <- nestedLists]

-- nestedOdds [[1, 2], [4, 6], [6, 7, 8, 9]]
-- Output: [[1], [], [7, 9]]


-- b)
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g xs = [if even i then g x else f x | (x, i) <- zip xs [0..]]


-- altMap (+1) (+2) [1..5]
-- Output: [2, 4, 4, 6, 6]


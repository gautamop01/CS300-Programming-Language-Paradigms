f :: [a] -> [b] -> [b]
f [] _ = [] -- Base case: If the first list is empty, return an empty list.
f _ [] = [] -- Base case: If the second list is empty, return an empty list.
f (x:xs) (y:ys) = f xs ys -- Recursive case: Drop the first element from both lists and continue.

-- Example:
list1 = [1, 2, 3, 4]
list2 = ["a", "b", "c", "d"]
result = f list1 list2


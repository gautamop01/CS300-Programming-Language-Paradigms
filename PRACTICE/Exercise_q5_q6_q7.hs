--Q5

majority :: Bool -> Bool -> Bool -> Bool
majority True True _ = True
majority True _ True = True
majority _ True True = True
majority _ _ _       = False

-- Q6

replaceHead :: [Int] -> Int -> [Int]
replaceHead [] _ = []      -- Return an empty list if the input list is empty
{-replaceHead (__:xs) newHead = newHead : xs-}
replaceHead (x:_:xs) newHead = x : newHead : xs  -- for second element 

{-
main :: IO ()
main = do
    let list1 = [1, 2, 3, 4]
    let list2 = []

    let modifiedList1 = replaceHead list1 5
    let modifiedList2 = replaceHead list2 2

    putStrLn $ "Modified list1: " ++ show modifiedList1
    putStrLn $ "Modified list2: " ++ show modifiedList2
-}


-- Q6

curry' :: ((a, b) -> c) -> a -> b -> c
curry' f x y = f (x, y)

plus :: Num a => (a, a) -> a
plus (x, y) = x + y

main :: IO ()
main = do
    let plusCurried = curry' plus
    putStrLn $ "plusc 2 3: " ++ show (plusCurried 2 3)


-- Q7
uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f (x, y) = f x y

mult :: Num a => a -> a -> a
mult x y = x * y

main :: IO ()
main = do
    let multUncurried = uncurry' mult
    putStrLn $ "multuc (2,3): " ++ show (multUncurried (2, 3))



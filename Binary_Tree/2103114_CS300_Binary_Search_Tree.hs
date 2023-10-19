-- Gautam Kumar Mahar 
-- Roll. N. 2103114 

import System.IO

data BST a = Empty | Node a (BST a) (BST a)
    deriving (Show)

searchBST :: Ord a => a -> BST a -> Bool
searchBST _ Empty = False
searchBST x (Node val left right)
    | x == val = True
    | x < val = searchBST x left
    | otherwise = searchBST x right

insertBST :: Ord a => a -> BST a -> BST a
insertBST x Empty = Node x Empty Empty
insertBST x (Node val left right)
    | x == val = Node val left right
    | x < val = Node val (insertBST x left) right
    | otherwise = Node val left (insertBST x right)

findMinBST :: BST a -> Maybe a
findMinBST Empty = Nothing
findMinBST (Node val Empty _) = Just val
findMinBST (Node _ left _) = findMinBST left

deleteBST :: Ord a => a -> BST a -> BST a
deleteBST _ Empty = Empty
deleteBST x (Node val left right)
    | x < val = Node val (deleteBST x left) right
    | x > val = Node val left (deleteBST x right)
    | otherwise = case (left, right) of
        (Empty, Empty) -> Empty
        (Empty, _) -> right
        (_, Empty) -> left
        _ -> let minRight = findMinBST right
                 in case minRight of
                    Nothing -> Node val left right
                    Just minVal -> Node minVal left (deleteBST minVal right)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    let initialTree = foldl (flip insertBST) Empty [5, 3, 8, 1, 4, 7, 9]
    putStrLn "Initial Tree: "
    print initialTree

    putStrLn "Insertion: Enter a value to insert into the tree: "
    valueToInsert <- readLn
    let updatedTree = insertBST valueToInsert initialTree
    putStrLn "Updated Tree after Insertion: "
    print updatedTree

    putStrLn "Search: Enter a value to search in the tree: "
    valueToSearch <- readLn
    let found = searchBST valueToSearch updatedTree
    if found
        then putStrLn "Value found in the tree."
        else putStrLn "Value not found in the tree."

    putStrLn "Deletion: Enter a value to delete from the tree: "
    valueToDelete <- readLn
    let treeAfterDeletion = deleteBST valueToDelete updatedTree
    putStrLn "Tree after Deletion: "
    print treeAfterDeletion


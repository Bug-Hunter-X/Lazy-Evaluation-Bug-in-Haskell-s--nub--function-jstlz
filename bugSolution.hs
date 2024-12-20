```haskell
import qualified Data.Map as Map

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5, 1, 2, 3]
  let ys = nub' xs
  print ys

nub' :: (Ord a) => [a] -> [a]

nub' xs = Map.elems $ Map.fromList $ zip xs (repeat ()) 
```
This solution uses `Data.Map` to efficiently remove duplicates.  `Map.fromList` creates a map, automatically handling duplicates.  Using this approach avoids the nested loops implied by the lazy evaluation of the original `nub` function. This is more efficient for large lists because it only iterates once over the list, providing a more efficient solution for deduplication.
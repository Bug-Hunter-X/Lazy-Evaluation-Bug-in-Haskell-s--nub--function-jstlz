```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys
```
This code seems innocuous, but it hides a subtle bug related to Haskell's laziness.  The `nub` function removes duplicate elements from a list, but it does so lazily.  If `xs` was a very large list generated on demand (e.g., from an infinite generator), the `nub` function might consume excessive memory or time because it would evaluate the entire input list before producing any output.  If `xs` contained cycles, it could lead to infinite loops.

The problem arises because `nub` needs to check every element against all preceding elements, creating a nested loop in a lazy manner.  For huge lists, this nested loop is the culprit.
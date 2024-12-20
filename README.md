# Haskell Nub Function Lazy Evaluation Bug

This repository demonstrates a subtle bug related to Haskell's lazy evaluation in the `nub` function from the `Data.List` module.  The `nub` function, while seemingly straightforward, can lead to unexpected memory consumption or even infinite loops if applied to large or cyclic lists.

The bug arises because `nub` needs to compare each element against all previous elements, and this comparison happens lazily.  This lazy comparison can cause significant performance degradation or infinite loops if the input list is excessively large or contains cycles.

The solution provided addresses this by using a more efficient approach to remove duplicates while accounting for the potential for large lists.

## Bug

The `bug.hs` file contains the initial code exhibiting the problematic behavior.

## Solution

The `bugSolution.hs` file demonstrates a solution that addresses the memory and performance issues associated with the lazy evaluation of `nub`.
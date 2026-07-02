# Exercise 7: Financial Forecasting

## 1. Recursion

**Recursion** is a technique where a method calls itself until a base
condition is reached. It simplifies problems that can be divided into
smaller subproblems.

## 4. Analysis

### Time Complexity

-   Each recursive call processes one year.
-   **Time Complexity:** O(n)
-   **Space Complexity:** O(n) (due to the recursion stack)

### Optimization

To avoid excessive computation:

1.  **Memoization** -- store results of previously computed recursive
    calls.
2.  **Dynamic Programming** -- compute values iteratively.
3.  **Iterative Approach** -- avoids recursion overhead and reduces
    space complexity to **O(1)**.

For this problem, an iterative solution is generally preferred in
production because it is more memory-efficient while maintaining the
same **O(n)** time complexity.

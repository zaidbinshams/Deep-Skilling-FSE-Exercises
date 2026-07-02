# Exercise 2: E-commerce Platform Search Function

## 1. Big O Notation

**Big O notation** measures the time or space required by an algorithm
as the input size increases. It helps compare the efficiency of
different algorithms.

### Search Cases

-   **Best Case:** Element is found immediately.
-   **Average Case:** Element is found somewhere in the middle.
-   **Worst Case:** Element is the last element or not present.

## 4. Analysis

  Algorithm       Best   Average    Worst
  --------------- ------ ---------- ----------
  Linear Search   O(1)   O(n)       O(n)
  Binary Search   O(1)   O(log n)   O(log n)

### Which is more suitable?

-   **Linear Search**
    -   Works on unsorted arrays.
    -   Suitable for small datasets.
-   **Binary Search**
    -   Requires the array to be sorted.
    -   Much faster for large datasets.
    -   Better choice for an e-commerce platform because product
        databases are large and searches are frequent.

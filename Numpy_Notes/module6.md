# Module 6 — NumPy Array Reshaping and Transformation

---

# 1️⃣ Introduction to the Topic

When working with data in NumPy, sometimes we need to **change the shape of arrays**.

For example:

- Convert a **1D array to a 2D array**
- Convert a **matrix into a single list**
- Change **rows into columns**

NumPy provides several functions for this:

- `reshape()`
- `flatten()`
- `ravel()`
- `transpose()`
- `resize()`
- `squeeze()`
- `expand_dims()`

These functions are very useful in **machine learning, image processing, and data analysis**.

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is Reshaping?

Reshaping means **changing the structure (rows and columns) of an array without changing the data**.

Example:

1D array

```text
[1 2 3 4 5 6]
```

Convert to 2D array

```text
[[1 2 3]
 [4 5 6]]
```

The values remain the same, only the **shape changes**.

---

# 3️⃣ Syntax

### Reshape

```python
array.reshape(rows, columns)
```

### Flatten

```python
array.flatten()
```

### Ravel

```python
array.ravel()
```

### Transpose

```python
array.T
```

---

# 4️⃣ Code Examples

---

# Example 1 — reshape()

```python
import numpy as np

arr = np.array([1,2,3,4,5,6])

new_arr = arr.reshape(2,3)

print(new_arr)
```

### Output

```text
[[1 2 3]
 [4 5 6]]
```

### Explanation

Original array:

```text
[1 2 3 4 5 6]
```

Reshape into:

```text
2 rows
3 columns
```

---

# Important Rule of reshape

Total elements must remain the same.

Example:

```text
6 elements
```

Possible shapes:

```text
2×3
3×2
1×6
6×1
```

Not possible:

```text
4×2 (8 elements needed)
```

---

# Example 2 — reshape with automatic dimension

NumPy can automatically calculate dimension using **-1**.

```python
import numpy as np

arr = np.array([1,2,3,4,5,6])

new_arr = arr.reshape(2,-1)

print(new_arr)
```

### Output

```text
[[1 2 3]
 [4 5 6]]
```

### Explanation

`-1` tells NumPy to **automatically determine the correct size**.

---

# Example 3 — flatten()

Flatten converts a **multi-dimensional array into a 1D array**.

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

flat = arr.flatten()

print(flat)
```

### Output

```text
[1 2 3 4 5 6]
```

### Explanation

The 2D array becomes a **single row array**.

---

# Example 4 — ravel()

`ravel()` also converts arrays to **1D**.

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

flat = arr.ravel()

print(flat)
```

### Output

```text
[1 2 3 4 5 6]
```

### Explanation

Similar to `flatten()`.

Difference:

- `flatten()` creates a **copy**
- `ravel()` creates a **view**

This affects memory usage.

---

# Example 5 — transpose()

Transpose converts **rows into columns**.

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

print(arr.T)
```

### Output

```text
[[1 4]
 [2 5]
 [3 6]]
```

### Explanation

Original array:

```text
[[1 2 3]
 [4 5 6]]
```

Transpose swaps:

```text
rows ↔ columns
```

---

# Example 6 — resize()

Resize changes the **size of the array**.

```python
import numpy as np

arr = np.array([1,2,3,4])

arr.resize(2,2)

print(arr)
```

### Output

```text
[[1 2]
 [3 4]]
```

### Explanation

The array is reshaped into **2×2 matrix**.

---

# Example 7 — expand_dims()

Used to **add a new axis (dimension)**.

```python
import numpy as np

arr = np.array([1,2,3])

new_arr = np.expand_dims(arr, axis=0)

print(new_arr)
```

### Output

```text
[[1 2 3]]
```

### Explanation

Converted from **1D array to 2D array**.

---

# Example 8 — squeeze()

Removes **extra dimensions of size 1**.

```python
import numpy as np

arr = np.array([[[1,2,3]]])

print(arr.squeeze())
```

### Output

```text
[1 2 3]
```

### Explanation

Removes unnecessary dimensions.

---

# 5️⃣ Explanation of Output

Example

```python
arr = np.array([1,2,3,4,5,6])
arr.reshape(2,3)
```

Output

```text
[[1 2 3]
 [4 5 6]]
```

Explanation

NumPy fills the matrix **row by row**.

---

# 6️⃣ Real-World Example

### Example — Student Marks Table

Suppose marks of **6 students** are stored in a list.

```python
import numpy as np

marks = np.array([78,85,90,66,88,92])
```

We want to arrange marks in **2 rows and 3 columns**.

```python
marks_matrix = marks.reshape(2,3)

print(marks_matrix)
```

### Output

```text
[[78 85 90]
 [66 88 92]]
```

Now the data looks like a **table**, which is easier to analyze.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Always ensure:

```text
rows × columns = total elements
```

Example:

```text
6 elements
```

Valid shapes:

```text
2×3
3×2
```

---

### Tip 2

Use `-1` in reshape when unsure about dimension.

Example

```python
arr.reshape(3,-1)
```

---

### Tip 3

Remember difference:

| Function  | Behavior     |
| --------- | ------------ |
| flatten() | creates copy |
| ravel()   | creates view |

`ravel()` is more **memory efficient**.

---

# 8️⃣ Summary

In this module we learned:

- **reshape()** changes array dimensions
- **flatten()** converts array to 1D
- **ravel()** converts array to 1D (memory efficient)
- **transpose()** swaps rows and columns
- **resize()** changes array size
- **expand_dims()** adds new dimension
- **squeeze()** removes extra dimensions

These operations are widely used in:

- Machine Learning
- Image Processing
- Data Transformation

---

# 9️⃣ Practice Questions

### Question 1

Create an array:

```text
[1,2,3,4,5,6]
```

Reshape it into **3×2 matrix**.

---

### Question 2

Convert the following array into **1D array** using flatten:

```text
[[10,20],
 [30,40]]
```

---

### Question 3

Transpose the matrix:

```text
[[1,2],
 [3,4],
 [5,6]]
```

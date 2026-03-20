# Module 8 — NumPy Broadcasting

---

# 1️⃣ Introduction to the Topic

**Broadcasting** is one of the most powerful features of NumPy.

Broadcasting allows NumPy to perform **mathematical operations between arrays of different shapes**.

Instead of manually resizing arrays, NumPy **automatically adjusts the arrays** to make calculations possible.

Because of broadcasting:

- Code becomes **shorter**
- Programs run **faster**
- We avoid writing **loops**

Broadcasting is widely used in:

- Data analysis
- Machine learning
- Deep learning
- Image processing

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is Broadcasting?

Broadcasting means **automatically expanding a smaller array so that it matches the size of a larger array**.

Example:

Array

```
[1 2 3]
```

Number

```
5
```

Operation:

```
[1 2 3] + 5
```

NumPy internally converts it to:

```
[1 2 3]
[5 5 5]
```

Then performs addition.

Result:

```
[6 7 8]
```

So NumPy **broadcasts the number 5 across the array**.

---

# Why Broadcasting is Useful

Without broadcasting we would need loops.

Example using loop:

```python
result = []
for i in arr:
    result.append(i + 5)
```

Using NumPy broadcasting:

```python
arr + 5
```

This is **much faster and simpler**.

---

# 3️⃣ Syntax

Broadcasting happens **automatically** when performing operations.

Example operations:

```python
array + number
array + array
array * number
array * array
```

No special function is required.

---

# 4️⃣ Broadcasting Rules

NumPy follows **three rules** to perform broadcasting.

### Rule 1 — Dimensions must match

If two arrays have the same shape, operations are performed element-wise.

Example:

```
[1 2 3]
[4 5 6]
```

---

### Rule 2 — One dimension must be 1

If shapes are different, NumPy checks if one dimension is **1**.

Example:

```
(3,3)
(1,3)
```

The smaller array will be **expanded automatically**.

---

### Rule 3 — If dimensions are incompatible, error occurs

Example:

```
(3,3)
(2,3)
```

These cannot be broadcast.

---

# 5️⃣ Code Examples

---

# Example 1 — Broadcasting with Scalar

```python
import numpy as np

arr = np.array([1,2,3])

result = arr + 5

print(result)
```

### Output

```
[6 7 8]
```

### Explanation

NumPy internally converts:

```
[1 2 3]
[5 5 5]
```

Then performs addition.

---

# Example 2 — Broadcasting with Multiplication

```python
import numpy as np

arr = np.array([2,4,6])

result = arr * 3

print(result)
```

### Output

```
[6 12 18]
```

### Explanation

Each element is multiplied by **3**.

---

# Example 3 — Broadcasting with Two Arrays

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([10,20,30])

print(a + b)
```

### Output

```
[11 22 33]
```

### Explanation

Addition happens element by element.

```
1+10 = 11
2+20 = 22
3+30 = 33
```

---

# Example 4 — Broadcasting with 2D Array

```python
import numpy as np

matrix = np.array([[1,2,3],
                   [4,5,6]])

vector = np.array([10,20,30])

print(matrix + vector)
```

### Output

```
[[11 22 33]
 [14 25 36]]
```

### Explanation

The vector is broadcast across rows.

Internal representation:

```
[[1 2 3]      [[10 20 30]
 [4 5 6]]  +   [10 20 30]]
```

---

# Example 5 — Column Broadcasting

```python
import numpy as np

matrix = np.array([[1,2,3],
                   [4,5,6]])

column = np.array([[10],
                   [20]])

print(matrix + column)
```

### Output

```
[[11 12 13]
 [24 25 26]]
```

### Explanation

The column values are broadcast across columns.

---

# 6️⃣ Explanation of Output

Example:

```python
matrix + vector
```

Matrix shape:

```
(2,3)
```

Vector shape:

```
(3,)
```

NumPy expands the vector to:

```
[[10 20 30]
 [10 20 30]]
```

Then performs element-wise addition.

---

# 7️⃣ Real-World Example

### Example — Student Marks with Bonus

Suppose marks of students are stored in a matrix.

```python
import numpy as np

marks = np.array([[70,75,80],
                  [65,72,78]])
```

Bonus marks:

```
[5 5 5]
```

Add bonus marks:

```python
bonus = np.array([5,5,5])

new_marks = marks + bonus

print(new_marks)
```

### Output

```
[[75 80 85]
 [70 77 83]]
```

Explanation:

Bonus marks are **broadcast across rows**.

---

# 8️⃣ Important Tips / Common Mistakes

### Tip 1

Broadcasting works only when **dimensions are compatible**.

Example valid:

```
(3,3) + (3,)
```

---

### Tip 2

Always check array shape using:

```python
array.shape
```

---

### Tip 3

Broadcasting is very common in:

- Neural networks
- Image processing
- Matrix operations

---

# 9️⃣ Summary

In this module we learned:

- Broadcasting allows operations between **different-sized arrays**
- NumPy automatically expands smaller arrays
- Broadcasting improves **performance and readability**
- Broadcasting works with:
  - scalars
  - vectors
  - matrices

Broadcasting is heavily used in:

- Machine learning algorithms
- deep learning frameworks
- numerical computation

---

# 🔟 Practice Questions

### Question 1

Create array:

```
[2,4,6]
```

Add **10** using broadcasting.

---

### Question 2

Create matrix:

```
[[1,2,3],
 [4,5,6]]
```

Add vector:

```
[10,20,30]
```

---

### Question 3

Multiply matrix

```
[[2,3],
 [4,5]]
```

by scalar **3**.

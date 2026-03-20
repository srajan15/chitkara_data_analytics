# Module 7 — NumPy Array Joining and Splitting

---

# 1️⃣ Introduction to the Topic

In real-world data analysis, data often comes from **multiple sources**.
Sometimes we need to:

- **Combine arrays together**
- **Divide arrays into smaller parts**

NumPy provides powerful functions to handle this:

### Joining Arrays

- `concatenate()`
- `stack()`
- `hstack()`
- `vstack()`
- `dstack()`

### Splitting Arrays

- `split()`
- `hsplit()`
- `vsplit()`
- `dsplit()`

These functions are widely used in:

- Data preprocessing
- Machine learning datasets
- Data transformation

---

# 2️⃣ Explanation of Concepts in Simple Language

## Joining Arrays

Joining means **combining two or more arrays into one array**.

Example:

Array 1

```
[1 2 3]
```

Array 2

```
[4 5 6]
```

After joining:

```
[1 2 3 4 5 6]
```

---

## Splitting Arrays

Splitting means **dividing a large array into smaller arrays**.

Example:

Original array

```
[10 20 30 40]
```

After splitting:

```
[10 20]   [30 40]
```

---

# 3️⃣ Syntax

### Concatenate

```python
np.concatenate((array1, array2), axis)
```

### Stack

```python
np.stack((array1, array2), axis)
```

### Horizontal Stack

```python
np.hstack((array1, array2))
```

### Vertical Stack

```python
np.vstack((array1, array2))
```

### Split

```python
np.split(array, number_of_parts)
```

---

# 4️⃣ Code Examples

---

# Example 1 — concatenate()

`concatenate()` joins arrays along an axis.

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([4,5,6])

result = np.concatenate((a,b))

print(result)
```

### Output

```
[1 2 3 4 5 6]
```

### Explanation

Two arrays are combined into one **long array**.

---

# Example 2 — concatenate with 2D arrays

```python
import numpy as np

a = np.array([[1,2],
              [3,4]])

b = np.array([[5,6],
              [7,8]])

result = np.concatenate((a,b), axis=0)

print(result)
```

### Output

```
[[1 2]
 [3 4]
 [5 6]
 [7 8]]
```

### Explanation

`axis=0` means joining **rows**.

---

# Example 3 — stack()

`stack()` joins arrays along a **new axis**.

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([4,5,6])

result = np.stack((a,b))

print(result)
```

### Output

```
[[1 2 3]
 [4 5 6]]
```

### Explanation

Arrays are stacked as **rows**.

---

# Example 4 — hstack()

`hstack()` means **horizontal stack**.

```python
import numpy as np

a = np.array([1,2])
b = np.array([3,4])

result = np.hstack((a,b))

print(result)
```

### Output

```
[1 2 3 4]
```

### Explanation

Arrays are joined **side by side**.

---

# Example 5 — vstack()

`vstack()` means **vertical stack**.

```python
import numpy as np

a = np.array([1,2])
b = np.array([3,4])

result = np.vstack((a,b))

print(result)
```

### Output

```
[[1 2]
 [3 4]]
```

### Explanation

Arrays are stacked **one above the other**.

---

# Example 6 — dstack()

`dstack()` stacks arrays along the **third dimension**.

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([4,5,6])

result = np.dstack((a,b))

print(result)
```

### Output

```
[[[1 4]
  [2 5]
  [3 6]]]
```

### Explanation

Creates a **3D array**.

---

# Example 7 — split()

`split()` divides an array into multiple parts.

```python
import numpy as np

arr = np.array([10,20,30,40])

result = np.split(arr,2)

print(result)
```

### Output

```
[array([10,20]), array([30,40])]
```

### Explanation

The array is split into **2 equal parts**.

---

# Example 8 — hsplit()

Splits array **horizontally**.

```python
import numpy as np

arr = np.array([[1,2,3,4],
                [5,6,7,8]])

result = np.hsplit(arr,2)

print(result)
```

### Output

```
[array([[1,2],
       [5,6]]),
 array([[3,4],
       [7,8]])]
```

### Explanation

The matrix is split **column-wise**.

---

# Example 9 — vsplit()

Splits array **vertically**.

```python
import numpy as np

arr = np.array([[1,2],
                [3,4],
                [5,6],
                [7,8]])

result = np.vsplit(arr,2)

print(result)
```

### Output

```
[array([[1,2],
       [3,4]]),
 array([[5,6],
       [7,8]])]
```

### Explanation

Matrix is split **row-wise**.

---

# 5️⃣ Explanation of Output

Example:

```
np.concatenate((a,b))
```

If:

```
a = [1 2 3]
b = [4 5 6]
```

Output:

```
[1 2 3 4 5 6]
```

NumPy simply **joins the arrays sequentially**.

---

# 6️⃣ Real-World Example

### Example — Student Marks Dataset

Suppose marks from **two classes** are stored separately.

Class A:

```
[78 85 90]
```

Class B:

```
[66 88 92]
```

We combine them.

```python
import numpy as np

classA = np.array([78,85,90])
classB = np.array([66,88,92])

all_students = np.concatenate((classA,classB))

print(all_students)
```

### Output

```
[78 85 90 66 88 92]
```

Now we have **combined dataset for analysis**.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Arrays must have **compatible shapes** for joining.

Example:

Valid:

```
(2×2) + (2×2)
```

Invalid:

```
(2×2) + (3×2)
```

---

### Tip 2

Understand axis:

| Axis   | Meaning |
| ------ | ------- |
| axis=0 | rows    |
| axis=1 | columns |

---

### Tip 3

Use:

```
concatenate()
```

for most joining operations.

---

# 8️⃣ Summary

In this module we learned:

### Joining Arrays

- `concatenate()`
- `stack()`
- `hstack()`
- `vstack()`
- `dstack()`

### Splitting Arrays

- `split()`
- `hsplit()`
- `vsplit()`
- `dsplit()`

These operations are used in:

- Data preprocessing
- Machine learning datasets
- Feature engineering

---

# 9️⃣ Practice Questions

### Question 1

Create two arrays:

```
[1,2,3]
[4,5,6]
```

Join them using **concatenate()**.

---

### Question 2

Stack arrays vertically using **vstack()**.

```
[10,20]
[30,40]
```

---

### Question 3

Split the array:

```
[5,10,15,20]
```

into **2 parts**.

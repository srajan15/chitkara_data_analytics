# 1️⃣ Introduction to the Topic

In NumPy, the most important object is the **NumPy Array**.

The NumPy array is called:

**ndarray (N-Dimensional Array)**

It is used to store **multiple values in a structured way** and allows **fast mathematical operations**.

Unlike Python lists, NumPy arrays:

- are **faster**
- use **less memory**
- allow **vectorized calculations**

In this module, we will learn:

- What is ndarray
- How to create arrays
- Array attributes
- Indexing
- Slicing

These are the **core foundations of NumPy**.

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is ndarray?

**ndarray** means **N-Dimensional Array**.

It is a container used to store **elements of the same data type**.

Example:

```
[10 20 30 40]
```

This is a **1-dimensional array**.

NumPy arrays can have multiple dimensions:

| Dimension | Example                |
| --------- | ---------------------- |
| 1D        | [1 2 3 4]              |
| 2D        | Matrix                 |
| 3D        | Collection of matrices |

---

### Example of Dimensions

1️⃣ **1D Array**

```
[1 2 3 4]
```

2️⃣ **2D Array**

```
[[1 2 3]
 [4 5 6]]
```

3️⃣ **3D Array**

```
[
 [[1 2 3],
  [4 5 6]]
]
```

---

# 3️⃣ Syntax

Basic syntax to create a NumPy array:

```python
import numpy as np

array_name = np.array(data)
```

Example:

```python
arr = np.array([1,2,3,4])
```

---

# 4️⃣ Creating NumPy Arrays

NumPy provides multiple functions to create arrays.

Important functions:

- `np.array()`
- `np.zeros()`
- `np.ones()`
- `np.empty()`
- `np.arange()`
- `np.linspace()`

---

## 1. np.array()

Used to convert a **Python list into a NumPy array**.

### Example

```python
import numpy as np

arr = np.array([10,20,30,40])

print(arr)
```

### Output

```
[10 20 30 40]
```

### Explanation

- NumPy converts the list into an **array object**.

---

## 2. np.zeros()

Creates an array filled with **0s**.

### Syntax

```
np.zeros(shape)
```

### Example

```python
import numpy as np

arr = np.zeros(5)

print(arr)
```

### Output

```
[0. 0. 0. 0. 0.]
```

### Explanation

Creates **5 elements with value 0**.

---

## 3. np.ones()

Creates an array filled with **1s**.

### Example

```python
import numpy as np

arr = np.ones(4)

print(arr)
```

### Output

```
[1. 1. 1. 1.]
```

---

## 4. np.empty()

Creates an array with **random values from memory**.

### Example

```python
import numpy as np

arr = np.empty(3)

print(arr)
```

Output may look like:

```
[6.92e-310 6.92e-310 6.92e-310]
```

Explanation:

It allocates memory but **does not initialize values**.

---

## 5. np.arange()

Creates an array with a **range of numbers**.

### Syntax

```
np.arange(start, stop, step)
```

### Example

```python
import numpy as np

arr = np.arange(1,10)

print(arr)
```

### Output

```
[1 2 3 4 5 6 7 8 9]
```

---

## 6. np.linspace()

Creates numbers **evenly spaced between two values**.

### Syntax

```
np.linspace(start, stop, number_of_values)
```

### Example

```python
import numpy as np

arr = np.linspace(1,10,5)

print(arr)
```

### Output

```
[1.   3.25 5.5  7.75 10.]
```

Explanation:

It generates **5 numbers evenly spaced between 1 and 10**.

---

# 5️⃣ Array Attributes

NumPy arrays have important attributes.

| Attribute | Meaning                     |
| --------- | --------------------------- |
| shape     | size of array               |
| size      | number of elements          |
| ndim      | number of dimensions        |
| dtype     | data type                   |
| itemsize  | memory used by each element |

---

## Example

```python
import numpy as np

arr = np.array([[1,2,3],[4,5,6]])

print(arr.shape)
print(arr.size)
print(arr.ndim)
print(arr.dtype)
```

### Output

```
(2,3)
6
2
int64
```

### Explanation

- `shape` → 2 rows, 3 columns
- `size` → total elements = 6
- `ndim` → 2 dimensional array
- `dtype` → integer type

---

# 6️⃣ Indexing

Indexing means **accessing elements using position numbers**.

Index starts from **0**.

---

## 1D Array Indexing

### Example

```python
import numpy as np

arr = np.array([10,20,30,40])

print(arr[0])
print(arr[2])
```

### Output

```
10
30
```

Explanation:

```
Index:  0 1 2 3
Array: [10 20 30 40]
```

---

## 2D Array Indexing

### Example

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

print(arr[0,1])
```

### Output

```
2
```

Explanation:

```
[[1 2 3]
 [4 5 6]]
```

Row = 0
Column = 1

---

# 7️⃣ Slicing

Slicing is used to **extract multiple elements from an array**.

### Syntax

```
array[start:end]
```

---

### Example

```python
import numpy as np

arr = np.array([10,20,30,40,50])

print(arr[1:4])
```

### Output

```
[20 30 40]
```

Explanation:

Index 1 to 3 is selected.

---

### 2D Slicing Example

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

print(arr[:,1])
```

### Output

```
[2 5]
```

Explanation:

```
:   → all rows
1   → second column
```

---

# 8️⃣ Real-World Example

### Example — Temperature Data

Suppose we have temperature data for 5 days.

```python
import numpy as np

temp = np.array([30,32,31,29,33])

print(temp)
```

Now suppose we want **temperature for first 3 days**.

```python
print(temp[:3])
```

Output

```
[30 32 31]
```

NumPy makes **data analysis easy**.

---

# 9️⃣ Important Tips / Common Mistakes

### Tip 1

Always check array dimensions:

```python
arr.ndim
```

---

### Tip 2

Use `arange()` carefully because **stop value is excluded**.

Example:

```
np.arange(1,5)
```

Output

```
[1 2 3 4]
```

---

### Tip 3

Use `linspace()` when **exact number of values are required**.

---

# 🔟 Summary

In this module we learned:

- NumPy array is called **ndarray**
- Arrays can be **1D, 2D, 3D**
- Ways to create arrays:
  - `array()`
  - `zeros()`
  - `ones()`
  - `empty()`
  - `arange()`
  - `linspace()`

- Important array attributes:
  - shape
  - size
  - ndim
  - dtype

- Indexing and slicing allow us to **access array elements easily**

---

# 1️⃣1️⃣ Practice Questions

### Question 1

Create a NumPy array containing:

```
5 10 15 20
```

---

### Question 2

Write a program to create an array of **10 zeros**.

---

### Question 3

Create a **2×3 NumPy array** and print:

- shape
- size
- ndim

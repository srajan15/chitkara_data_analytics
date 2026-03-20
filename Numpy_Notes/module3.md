# Module 3 — NumPy Data Types (dtype)

---

# 1️⃣ Introduction to the Topic

In NumPy, every array stores elements in a **specific data type**.

This data type is called:

**dtype (data type)**

Data types are important because they determine:

- How **data is stored in memory**
- How much **memory is used**
- How **calculations are performed**

NumPy supports many **efficient numeric data types** that make it very fast for scientific computing.

In this module we will learn:

- What is NumPy dtype
- Difference between Python data types and NumPy data types
- Common NumPy data types
- How to specify dtype
- Type conversion

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is dtype?

**dtype** means **data type of the elements stored in a NumPy array**.

Unlike Python lists, NumPy arrays usually store **elements of the same type**.

Example

```
[1 2 3 4]
```

All values are integers → dtype = **int**

Example

```
[1.2 3.5 4.7]
```

All values are decimal numbers → dtype = **float**

---

## Why dtype is Important?

dtype is important because it controls:

1️⃣ **Memory usage**

Different data types use different memory.

Example:

| Data Type | Memory  |
| --------- | ------- |
| int32     | 4 bytes |
| int64     | 8 bytes |
| float32   | 4 bytes |
| float64   | 8 bytes |

Using the correct dtype helps **reduce memory usage**.

---

## Difference Between Python Data Types and NumPy Data Types

### Python Data Types

Python uses flexible types:

```
int
float
bool
str
```

Example

```python
a = 10
b = 3.5
```

---

### NumPy Data Types

NumPy provides **more specialized numeric types**.

Example:

```
int32
int64
float32
float64
bool
complex
```

These are optimized for **fast computation**.

---

# 3️⃣ Syntax

### Checking dtype

```
array.dtype
```

### Specifying dtype

```
np.array(data, dtype=type)
```

---

# 4️⃣ Code Examples

---

# Example 1 — Checking dtype

```python
import numpy as np

arr = np.array([1,2,3,4])

print(arr.dtype)
```

### Output

```
int64
```

### Explanation

NumPy automatically detected that the values are **integers**.

So dtype = **int64**.

---

# Example 2 — Float Array

```python
import numpy as np

arr = np.array([1.5,2.5,3.5])

print(arr.dtype)
```

### Output

```
float64
```

### Explanation

Since the numbers contain decimals, NumPy uses **float64**.

---

# Example 3 — Specifying dtype Manually

```python
import numpy as np

arr = np.array([1,2,3], dtype="float32")

print(arr)
print(arr.dtype)
```

### Output

```
[1. 2. 3.]
float32
```

### Explanation

Even though numbers are integers, we forced NumPy to store them as **float32**.

---

# Example 4 — Boolean dtype

```python
import numpy as np

arr = np.array([True, False, True])

print(arr.dtype)
```

### Output

```
bool
```

Explanation:

Array contains **True/False values**.

---

# Example 5 — Complex Numbers

NumPy also supports **complex numbers**.

```python
import numpy as np

arr = np.array([1+2j, 3+4j])

print(arr.dtype)
```

### Output

```
complex128
```

Explanation:

Each element has:

```
real part + imaginary part
```

---

# 5️⃣ Explanation of Output

Example array

```python
arr = np.array([1,2,3])
```

Output dtype

```
int64
```

Meaning:

Each number occupies **64 bits (8 bytes)** in memory.

This allows NumPy to handle **very large numbers**.

---

# 6️⃣ Type Conversion (Casting)

Sometimes we need to convert one data type to another.

This is called **type casting**.

---

### Syntax

```
array.astype(new_type)
```

---

### Example

```python
import numpy as np

arr = np.array([1,2,3,4])

new_arr = arr.astype("float32")

print(new_arr)
print(new_arr.dtype)
```

### Output

```
[1. 2. 3. 4.]
float32
```

### Explanation

The integer values were converted into **floating point numbers**.

---

# 7️⃣ Real-World Example

### Example — Student Marks System

Suppose we store marks as integers.

```python
import numpy as np

marks = np.array([78,85,90,66])

print(marks.dtype)
```

Output

```
int64
```

Now suppose we calculate **average marks**, which may produce decimals.

We convert to float.

```python
marks = marks.astype("float32")

print(marks.dtype)
```

Output

```
float32
```

Now calculations will be **more accurate**.

---

# 8️⃣ Important Tips / Common Mistakes

### Tip 1

Always check dtype when working with large datasets.

```
array.dtype
```

---

### Tip 2

Use **float32 instead of float64** when working with large ML datasets to reduce memory.

---

### Tip 3

NumPy arrays normally contain **one type of data only**.

Example:

Good

```
[1 2 3 4]
```

Bad

```
[1 "hello" 3]
```

NumPy will convert everything to **string**.

---

### Example

```python
import numpy as np

arr = np.array([1,2,"hello"])

print(arr)
print(arr.dtype)
```

Output

```
['1' '2' 'hello']
<U21
```

Explanation:

NumPy converted numbers into **strings**.

---

# 9️⃣ Summary

In this module we learned:

- dtype means **data type of array elements**
- NumPy arrays store **same data type elements**
- Common NumPy types include:
  - int32
  - int64
  - float32
  - float64
  - bool
  - complex

- dtype affects **memory usage and performance**
- Type conversion can be done using **astype()**

NumPy dtype system makes **scientific computing very efficient**.

---

# 🔟 Practice Questions

### Question 1

Create a NumPy array with values:

```
10 20 30
```

Check its **dtype**.

---

### Question 2

Create an array and store elements as **float32**.

```
[5,10,15]
```

---

### Question 3

Convert the following array into **float type**.

```
[1,2,3,4]
```

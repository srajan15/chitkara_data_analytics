# Module 5 — NumPy Indexing and Slicing

---

# 1️⃣ Introduction to the Topic

When working with arrays, we often need to:

- Access specific elements
- Extract parts of an array
- Filter data

NumPy provides powerful techniques for this called:

- **Indexing**
- **Slicing**
- **Boolean Indexing**
- **Fancy Indexing**

These techniques are **very important in Data Analysis and Machine Learning** because they help us quickly select useful data.

Example:
Selecting students who scored above 80 marks.

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is Indexing?

**Indexing** means accessing an element using its **position number**.

Important rule:

Index always starts from **0**.

Example array:

```
[10 20 30 40]
```

| Index | Value |
| ----- | ----- |
| 0     | 10    |
| 1     | 20    |
| 2     | 30    |
| 3     | 40    |

---

## What is Slicing?

**Slicing** means extracting a **portion of an array**.

Example:

```
[10 20 30 40 50]
```

Slicing:

```
[20 30 40]
```

---

# 3️⃣ Syntax

### Indexing

```python
array[index]
```

### 2D Indexing

```python
array[row, column]
```

### Slicing

```python
array[start:end]
```

### 2D Slicing

```python
array[row_start:row_end, col_start:col_end]
```

---

# 4️⃣ Code Examples

---

# Example 1 — 1D Array Indexing

```python
import numpy as np

arr = np.array([10,20,30,40,50])

print(arr[0])
print(arr[3])
```

### Output

```
10
40
```

### Explanation

```
Index:  0 1 2 3 4
Array: [10 20 30 40 50]
```

- `arr[0]` → first element
- `arr[3]` → fourth element

---

# Example 2 — Negative Indexing

NumPy allows **negative indexing**.

Negative index starts from the **end of the array**.

```python
import numpy as np

arr = np.array([10,20,30,40])

print(arr[-1])
print(arr[-2])
```

### Output

```
40
30
```

### Explanation

```
Index:  -4 -3 -2 -1
Array: [10 20 30 40]
```

- `-1` → last element
- `-2` → second last element

---

# Example 3 — 2D Array Indexing

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6]])

print(arr[0,2])
```

### Output

```
3
```

### Explanation

```
[[1 2 3]
 [4 5 6]]
```

Row = 0
Column = 2

Value = **3**

---

# Example 4 — Basic Slicing

```python
import numpy as np

arr = np.array([10,20,30,40,50])

print(arr[1:4])
```

### Output

```
[20 30 40]
```

### Explanation

Slicing rule:

```
start : end
```

End index is **not included**.

```
Index: 0 1 2 3 4
Array:10 20 30 40 50
```

---

# Example 5 — Step Slicing

We can skip elements using **step value**.

```python
import numpy as np

arr = np.array([10,20,30,40,50,60])

print(arr[0:6:2])
```

### Output

```
[10 30 50]
```

### Explanation

```
start = 0
end = 6
step = 2
```

It selects every **second element**.

---

# Example 6 — 2D Slicing

```python
import numpy as np

arr = np.array([[1,2,3],
                [4,5,6],
                [7,8,9]])

print(arr[0:2,1:3])
```

### Output

```
[[2 3]
 [5 6]]
```

### Explanation

Rows selected:

```
0 to 1
```

Columns selected:

```
1 to 2
```

---

# Example 7 — Boolean Indexing

Boolean indexing selects elements using **conditions**.

```python
import numpy as np

arr = np.array([10,20,30,40,50])

print(arr[arr > 30])
```

### Output

```
[40 50]
```

### Explanation

Condition:

```
arr > 30
```

Elements satisfying the condition are selected.

---

# Example 8 — Fancy Indexing

Fancy indexing means selecting elements using **index arrays**.

```python
import numpy as np

arr = np.array([10,20,30,40])

print(arr[[0,2]])
```

### Output

```
[10 30]
```

### Explanation

Indices selected:

```
0 and 2
```

So values returned:

```
10 and 30
```

---

# 5️⃣ Explanation of Output

Consider this array:

```
[10 20 30 40 50]
```

Operation:

```python
arr[1:4]
```

Output:

```
[20 30 40]
```

Explanation:

```
start index = 1
end index = 4
```

Index **4 is excluded**.

---

# 6️⃣ Real-World Example

### Example — Student Marks Filtering

Suppose we have marks:

```python
import numpy as np

marks = np.array([45,72,88,60,90])
```

Now we want students who scored **above 70**.

```python
print(marks[marks > 70])
```

### Output

```
[72 88 90]
```

Explanation:

Boolean condition selects **students with high marks**.

This technique is widely used in **data analysis**.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Remember slicing rule:

```
start : end
```

End value is **not included**.

---

### Tip 2

Negative indexing helps access **last elements quickly**.

Example

```python
arr[-1]
```

---

### Tip 3

Boolean indexing is extremely useful for:

- Filtering datasets
- Removing outliers
- Selecting important values

---

# 8️⃣ Summary

In this module we learned:

- **Indexing** accesses elements by position
- **Negative indexing** accesses elements from the end
- **Slicing** extracts a portion of an array
- **2D indexing** accesses elements using row and column
- **Boolean indexing** filters values based on conditions
- **Fancy indexing** selects elements using index arrays

These techniques are widely used in:

- Data analysis
- Machine learning
- Data cleaning

---

# 9️⃣ Practice Questions

### Question 1

Create the array

```
[10,20,30,40,50]
```

Print the **third element**.

---

### Question 2

Extract elements from index **1 to 3**.

---

### Question 3

Create an array

```
[25,60,80,45,90]
```

Select elements **greater than 50**.

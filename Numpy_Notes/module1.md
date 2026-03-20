# Module 1 — Introduction to NumPy

---

# 1️⃣ Introduction to the Topic

**NumPy** stands for **Numerical Python**.

It is one of the most important Python libraries used for:

- Data Science
- Machine Learning
- Artificial Intelligence
- Scientific Computing
- Image Processing

NumPy helps us work with **large numerical data efficiently**.

Instead of using Python lists, NumPy provides a special object called:

**NumPy Array (ndarray)**

NumPy arrays are:

- Faster
- More memory efficient
- Support powerful mathematical operations

---

# 2️⃣ Explanation of Concepts in Simple Language

## What is NumPy?

NumPy is a **Python library used for numerical computing**.

It provides tools to:

- Work with **arrays**
- Perform **mathematical operations**
- Perform **linear algebra**
- Generate **random numbers**
- Perform **statistical calculations**

Think of NumPy as a **super powerful calculator for Python**.

---

## Why Do We Need NumPy?

Python lists are flexible but **slow when working with large numerical data**.

NumPy solves this problem by:

- Using **efficient memory storage**
- Using **vectorized operations**
- Using **compiled C code internally**

This makes NumPy **very fast**.

---

## Difference Between Python List and NumPy Array

| Feature                 | Python List      | NumPy Array      |
| ----------------------- | ---------------- | ---------------- |
| Speed                   | Slow             | Very Fast        |
| Memory                  | Uses more memory | Uses less memory |
| Mathematical operations | Not easy         | Very easy        |
| Data type               | Mixed allowed    | Same data type   |

---

# 3️⃣ Syntax (Basic Import)

Before using NumPy we must install and import it.

### Installation

```bash
pip install numpy
```

### Importing NumPy

```python
import numpy as np
```

We use **np** as a shortcut to write NumPy functions easily.

---

# 4️⃣ Code Examples

## Example 1 — Creating a NumPy Array

```python
import numpy as np

arr = np.array([10, 20, 30, 40])

print(arr)
```

### Explanation

- `np.array()` creates a NumPy array
- We passed a list `[10,20,30,40]`
- NumPy converts it into an **array object**

### Output

```
[10 20 30 40]
```

Notice that the numbers are printed **without commas** because it is a NumPy array.

---

## Example 2 — Mathematical Operation on Array

```python
import numpy as np

arr = np.array([1,2,3,4])

result = arr * 2

print(result)
```

### Explanation

Each element is multiplied by **2 automatically**.

### Output

```
[2 4 6 8]
```

NumPy performs **vectorized operations**, meaning operations apply to the whole array.

---

## Example 3 — Python List vs NumPy Speed Concept

### Python List

```python
a = [1,2,3]
b = [4,5,6]

result = []

for i in range(len(a)):
    result.append(a[i] + b[i])

print(result)
```

Output

```
[5,7,9]
```

This requires a **loop**.

---

### NumPy Way

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([4,5,6])

result = a + b

print(result)
```

Output

```
[5 7 9]
```

No loop required → **cleaner and faster code**.

---

# 5️⃣ Explanation of Output

In NumPy:

```
[1 2 3]
```

This means:

```
Array containing elements 1,2,3
```

Unlike lists:

```
[1,2,3]
```

NumPy removes commas because it displays **array format**.

---

# 6️⃣ Real-World Example

### Example — Student Marks Analysis

Imagine we have marks of students:

```
Math scores = [78, 85, 90, 66]
```

If we want to **add grace marks of 5** to every student.

### Without NumPy

We need a loop.

### With NumPy

```python
import numpy as np

marks = np.array([78,85,90,66])

updated_marks = marks + 5

print(updated_marks)
```

Output

```
[83 90 95 71]
```

NumPy automatically adds **5 to every element**.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Always import NumPy like this:

```python
import numpy as np
```

This is the **industry standard**.

---

### Tip 2

NumPy arrays usually contain **same data type elements**.

Example:

```
[1,2,3,4]
```

Not recommended:

```
[1,"hello",3]
```

---

### Tip 3

NumPy is **optimized for numerical data**.

Use **Pandas** for tabular data.

---

# 8️⃣ Summary

In this module we learned:

- NumPy stands for **Numerical Python**
- It is used for **fast numerical computation**
- NumPy provides **ndarray (array object)**
- NumPy arrays are **faster and more memory efficient**
- Mathematical operations on arrays are **very easy**
- NumPy is widely used in **Data Science, ML, AI**

---

# 9️⃣ Practice Questions

### Question 1

What is NumPy and why is it used?

---

### Question 2

Write a Python program to create a NumPy array containing numbers:

```
10 20 30 40 50
```

---

### Question 3

Write a NumPy program to multiply each element of an array by **3**.

Example input

```
[1,2,3,4]
```

Expected output

```
[3,6,9,12]
```

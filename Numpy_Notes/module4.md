# Module 4 — NumPy Array Operations & Mathematical Functions

---

# 1️⃣ Introduction to the Topic

One of the **biggest advantages of NumPy** is that it allows us to perform **mathematical operations on entire arrays at once**.

This feature is called:

**Vectorized Operations**

Instead of using loops, NumPy performs calculations **directly on arrays**, which makes programs:

- Faster
- Shorter
- Easier to read

In this module we will learn:

- Arithmetic operations on arrays
- Element-wise operations
- Mathematical functions
- Introduction to **broadcasting**

These concepts are **very important in Data Science and Machine Learning**.

---

# 2️⃣ Explanation of Concepts in Simple Language

## Arithmetic Operations in NumPy

NumPy allows us to perform arithmetic operations like:

- Addition
- Subtraction
- Multiplication
- Division
- Power

These operations are applied **element by element**.

This is called **Element-Wise Operation**.

Example

```
Array A = [1 2 3]
Array B = [4 5 6]

Addition result = [5 7 9]
```

Each element is added with the element in the same position.

---

## Vectorized Operations

Normally in Python lists we need **loops** to perform calculations.

NumPy allows us to do this **without loops**.

This is called **Vectorization**.

Vectorization makes NumPy **much faster than normal Python lists**.

---

# 3️⃣ Syntax

Basic arithmetic operations:

```
array1 + array2
array1 - array2
array1 * array2
array1 / array2
array ** power
```

NumPy also provides functions:

```
np.add()
np.subtract()
np.multiply()
np.divide()
np.power()
np.sqrt()
np.exp()
np.log()
```

---

# 4️⃣ Code Examples

---

# Example 1 — Addition of Arrays

```python
import numpy as np

a = np.array([1,2,3])
b = np.array([4,5,6])

result = a + b

print(result)
```

### Output

```
[5 7 9]
```

### Explanation

```
1+4 = 5
2+5 = 7
3+6 = 9
```

NumPy adds elements **position by position**.

---

# Example 2 — Subtraction

```python
import numpy as np

a = np.array([10,20,30])
b = np.array([1,2,3])

print(a - b)
```

### Output

```
[ 9 18 27 ]
```

Explanation

```
10 - 1 = 9
20 - 2 = 18
30 - 3 = 27
```

---

# Example 3 — Multiplication

```python
import numpy as np

a = np.array([2,4,6])
b = np.array([3,5,7])

print(a * b)
```

### Output

```
[6 20 42]
```

Explanation

```
2*3 = 6
4*5 = 20
6*7 = 42
```

This is **element-wise multiplication**.

---

# Example 4 — Division

```python
import numpy as np

a = np.array([10,20,30])

print(a / 2)
```

### Output

```
[5. 10. 15.]
```

Explanation

Each element is divided by **2**.

---

# Example 5 — Power Operation

```python
import numpy as np

a = np.array([2,3,4])

print(a ** 2)
```

### Output

```
[4 9 16]
```

Explanation

```
2² = 4
3² = 9
4² = 16
```

---

# 5️⃣ NumPy Mathematical Functions

NumPy provides many built-in mathematical functions.

Some important ones are:

| Function  | Purpose     |
| --------- | ----------- |
| np.sqrt() | Square root |
| np.exp()  | Exponential |
| np.log()  | Logarithm   |
| np.sin()  | Sine        |
| np.cos()  | Cosine      |

---

# Example 6 — Square Root

```python
import numpy as np

arr = np.array([4,9,16,25])

print(np.sqrt(arr))
```

### Output

```
[2. 3. 4. 5.]
```

Explanation

Square root of each element is calculated.

---

# Example 7 — Log Function

```python
import numpy as np

arr = np.array([1,2,3])

print(np.log(arr))
```

### Output

```
[0.         0.69314718 1.09861229]
```

Explanation

NumPy calculates **natural logarithm (ln)**.

---

# Example 8 — Exponential Function

```python
import numpy as np

arr = np.array([1,2,3])

print(np.exp(arr))
```

### Output

```
[ 2.718  7.389  20.085 ]
```

Explanation

This calculates **e^x** for each element.

---

# 6️⃣ Broadcasting (Introduction)

Broadcasting means performing operations between arrays of **different sizes**.

Example

```
Array = [1 2 3]
Number = 5
```

NumPy automatically converts it to

```
[1 2 3]
[5 5 5]
```

Then performs operation.

---

### Example

```python
import numpy as np

a = np.array([1,2,3])

print(a + 5)
```

### Output

```
[6 7 8]
```

Explanation

```
1+5 = 6
2+5 = 7
3+5 = 8
```

NumPy automatically **broadcasts the number 5**.

---

# 7️⃣ Real-World Example

### Example — Product Price Calculation

Suppose product prices are:

```
[100, 200, 300]
```

We want to **add GST of 18%**.

```python
import numpy as np

price = np.array([100,200,300])

gst_price = price * 1.18

print(gst_price)
```

### Output

```
[118. 236. 354.]
```

Explanation

NumPy applied the multiplication to **all prices automatically**.

---

# 8️⃣ Important Tips / Common Mistakes

### Tip 1

Arrays must usually have **same size for element-wise operations**.

Example

```
[1 2 3]
[4 5 6]
```

Works correctly.

---

### Tip 2

Broadcasting works when **one value or compatible shapes exist**.

Example

```
array + number
```

Works.

---

### Tip 3

Avoid loops when using NumPy.

Use **vectorized operations** instead.

---

# 9️⃣ Summary

In this module we learned:

- NumPy supports **array arithmetic operations**
- Operations are **element-wise**
- Vectorization makes NumPy **fast**
- Common operations include:
  - addition
  - subtraction
  - multiplication
  - division
  - power

- NumPy provides mathematical functions like:
  - sqrt
  - log
  - exp

- Broadcasting allows operations with **different shapes**

These operations are widely used in:

- Data analysis
- Machine learning
- deep learning
- scientific computing

---

# 🔟 Practice Questions

### Question 1

Create two arrays

```
[2,4,6]
[1,3,5]
```

Add them using NumPy.

---

### Question 2

Create an array

```
[5,10,15]
```

Multiply each element by **3**.

---

### Question 3

Write a NumPy program to calculate **square root of**

```
[16,25,36]
```

---

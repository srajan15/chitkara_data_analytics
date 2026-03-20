# Module 9 — NumPy Statistical and Aggregation Functions

---

# 1️⃣ Introduction to the Topic

When working with data, we often need to **summarize and analyze numbers**.

For example:

- Find the **average marks of students**
- Find the **highest temperature**
- Find the **minimum sales value**
- Calculate **standard deviation**

NumPy provides many **statistical and aggregation functions** that help us analyze data easily.

These functions are heavily used in:

- **Data Analysis**
- **Exploratory Data Analysis (EDA)**
- **Machine Learning**
- **Scientific Computing**

In this module we will learn important functions such as:

- `sum()`
- `mean()`
- `median()`
- `min()`
- `max()`
- `argmax()`
- `argmin()`
- `std()`
- `var()`

---

# 2️⃣ Explanation of Concepts in Simple Language

## What are Aggregation Functions?

Aggregation functions **combine multiple values into a single result**.

Example:

Array

```text
[10 20 30 40]
```

Aggregation results

| Operation | Result |
| --------- | ------ |
| Sum       | 100    |
| Mean      | 25     |
| Min       | 10     |
| Max       | 40     |

These functions help us **understand the dataset quickly**.

---

# 3️⃣ Syntax

Basic syntax:

```python
np.function_name(array)
```

Examples:

```python
np.sum(array)
np.mean(array)
np.median(array)
np.min(array)
np.max(array)
np.std(array)
np.var(array)
```

---

# 4️⃣ Code Examples

---

# Example 1 — Sum of Elements

```python
import numpy as np

arr = np.array([10,20,30,40])

print(np.sum(arr))
```

### Output

```
100
```

### Explanation

NumPy adds all elements.

```
10 + 20 + 30 + 40 = 100
```

---

# Example 2 — Mean (Average)

Mean is the **average value of elements**.

Formula:

```
Mean = Sum of elements / Number of elements
```

Example:

```python
import numpy as np

arr = np.array([10,20,30,40])

print(np.mean(arr))
```

### Output

```
25.0
```

### Explanation

```
(10 + 20 + 30 + 40) / 4 = 25
```

---

# Example 3 — Median

Median is the **middle value** when data is sorted.

Example:

```python
import numpy as np

arr = np.array([10,20,30,40,50])

print(np.median(arr))
```

### Output

```
30
```

### Explanation

Sorted data:

```
10 20 30 40 50
```

Middle value = **30**

---

# Example 4 — Minimum Value

```python
import numpy as np

arr = np.array([15,25,10,40])

print(np.min(arr))
```

### Output

```
10
```

Explanation:

10 is the **smallest value**.

---

# Example 5 — Maximum Value

```python
import numpy as np

arr = np.array([15,25,10,40])

print(np.max(arr))
```

### Output

```
40
```

Explanation:

40 is the **largest value**.

---

# Example 6 — argmax()

`argmax()` returns the **index of the maximum value**.

```python
import numpy as np

arr = np.array([10,25,18,40])

print(np.argmax(arr))
```

### Output

```
3
```

### Explanation

```
Index: 0 1 2 3
Array:10 25 18 40
```

Maximum value = **40**

Index = **3**

---

# Example 7 — argmin()

Returns the **index of minimum value**.

```python
import numpy as np

arr = np.array([10,25,18,5])

print(np.argmin(arr))
```

### Output

```
3
```

Explanation

Minimum value = **5**

Index = **3**

---

# Example 8 — Standard Deviation

Standard deviation measures **how spread out the data is**.

```python
import numpy as np

arr = np.array([10,20,30,40])

print(np.std(arr))
```

### Output

```
11.18
```

Explanation

Higher standard deviation means **data is more spread out**.

---

# Example 9 — Variance

Variance is the **square of standard deviation**.

```python
import numpy as np

arr = np.array([10,20,30,40])

print(np.var(arr))
```

### Output

```
125
```

Explanation

Variance measures **data variability**.

---

# 5️⃣ Using Axis in 2D Arrays

When working with matrices, we can calculate statistics **row-wise or column-wise**.

Example matrix:

```python
import numpy as np

arr = np.array([[10,20,30],
                [40,50,60]])
```

---

### Sum of Columns

```python
print(np.sum(arr, axis=0))
```

Output

```
[50 70 90]
```

Explanation

```
10+40
20+50
30+60
```

---

### Sum of Rows

```python
print(np.sum(arr, axis=1))
```

Output

```
[60 150]
```

Explanation

```
10+20+30
40+50+60
```

---

# 6️⃣ Real-World Example

### Example — Student Marks Analysis

Suppose marks of students are stored in an array.

```python
import numpy as np

marks = np.array([78,85,90,66,88])
```

Calculate statistics:

```python
print("Average:", np.mean(marks))
print("Highest:", np.max(marks))
print("Lowest:", np.min(marks))
```

### Output

```
Average: 81.4
Highest: 90
Lowest: 66
```

Explanation:

These values help teachers **analyze class performance**.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Always use NumPy functions instead of loops for statistics.

Example

```python
np.mean(array)
```

instead of manual calculation.

---

### Tip 2

Check array shape before applying axis operations.

```python
array.shape
```

---

### Tip 3

Remember:

| Function | Meaning                |
| -------- | ---------------------- |
| argmax   | index of maximum value |
| argmin   | index of minimum value |

---

# 8️⃣ Summary

In this module we learned:

Important NumPy statistical functions:

- `sum()`
- `mean()`
- `median()`
- `min()`
- `max()`
- `argmax()`
- `argmin()`
- `std()`
- `var()`

We also learned about **axis operations** for matrices.

These functions are widely used in:

- Data Analysis
- Exploratory Data Analysis (EDA)
- Machine Learning

---

# 9️⃣ Practice Questions

### Question 1

Create array:

```
[5,10,15,20]
```

Find the **sum**.

---

### Question 2

Find the **average marks**.

```
[60,70,80,90]
```

---

### Question 3

Find the **maximum value and its index**.

```
[12,45,30,55,20]
```

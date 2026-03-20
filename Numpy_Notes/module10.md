# Module 10 — NumPy Random Module

---

# 1️⃣ Introduction to the Topic

In many real-world applications, we need **random numbers**.

Examples:

- Simulating data for experiments
- Initializing weights in machine learning models
- Generating random datasets for testing
- Creating random samples

NumPy provides a powerful module called:

**`numpy.random`**

This module helps us generate **different types of random numbers easily**.

In this module we will learn important functions like:

- `rand()`
- `randn()`
- `randint()`
- `choice()`
- `shuffle()`
- `seed()`

These functions are widely used in **Machine Learning, Data Science, and Statistics**.

---

# 2️⃣ Explanation of Concepts in Simple Language

## What are Random Numbers?

Random numbers are numbers that are **generated without a fixed pattern**.

Example:

```text
4, 10, 2, 7, 15
```

Each time the program runs, the numbers may change.

Random numbers help simulate **real-world randomness**.

Example:

- Rolling a dice
- Randomly selecting students
- Generating test data

---

# 3️⃣ Syntax

First import NumPy.

```python
import numpy as np
```

Then use random functions.

Example:

```python
np.random.function_name()
```

Examples:

```python
np.random.rand()
np.random.randn()
np.random.randint()
np.random.choice()
np.random.shuffle()
np.random.seed()
```

---

# 4️⃣ Code Examples

---

# Example 1 — rand()

`rand()` generates **random numbers between 0 and 1**.

```python
import numpy as np

arr = np.random.rand(3)

print(arr)
```

### Output (example)

```text
[0.23 0.75 0.11]
```

### Explanation

- Generates **3 random numbers**
- Each number is between **0 and 1**

---

# Example 2 — rand() with matrix

```python
import numpy as np

arr = np.random.rand(2,3)

print(arr)
```

### Output (example)

```text
[[0.34 0.11 0.76]
 [0.88 0.22 0.45]]
```

### Explanation

Creates a **2×3 matrix of random numbers**.

---

# Example 3 — randn()

`randn()` generates numbers from a **normal distribution**.

```python
import numpy as np

arr = np.random.randn(5)

print(arr)
```

### Output (example)

```text
[-0.52 1.12 0.67 -1.45 0.33]
```

### Explanation

Values are generated around **mean = 0**.

This function is commonly used in **machine learning models**.

---

# Example 4 — randint()

`randint()` generates **random integers**.

### Syntax

```python
np.random.randint(start, end, size)
```

### Example

```python
import numpy as np

arr = np.random.randint(1,10,5)

print(arr)
```

### Output (example)

```text
[3 7 2 9 5]
```

### Explanation

Generates **5 random integers between 1 and 9**.

---

# Example 5 — choice()

`choice()` selects **random elements from an array**.

```python
import numpy as np

arr = np.array([10,20,30,40])

result = np.random.choice(arr)

print(result)
```

### Output (example)

```text
20
```

### Explanation

Randomly selects **one element from the array**.

---

# Example 6 — choice with multiple selections

```python
import numpy as np

arr = np.array([10,20,30,40])

result = np.random.choice(arr,3)

print(result)
```

### Output (example)

```text
[30 10 20]
```

### Explanation

Selects **3 random values from the array**.

---

# Example 7 — shuffle()

`shuffle()` randomly **reorders elements in an array**.

```python
import numpy as np

arr = np.array([1,2,3,4,5])

np.random.shuffle(arr)

print(arr)
```

### Output (example)

```text
[3 5 1 4 2]
```

### Explanation

Elements are **randomly rearranged**.

---

# Example 8 — seed()

`seed()` controls the **random number generator**.

If we use the same seed, we get **same random numbers every time**.

```python
import numpy as np

np.random.seed(10)

print(np.random.randint(1,10,5))
```

### Output

```text
[9 5 1 2 1]
```

### Explanation

Using the same seed will always produce **the same result**.

This is useful for:

- Reproducible experiments
- Machine learning training

---

# 5️⃣ Explanation of Output

Example:

```python
np.random.randint(1,10,5)
```

Explanation:

| Parameter | Meaning                  |
| --------- | ------------------------ |
| 1         | starting number          |
| 10        | ending number (excluded) |
| 5         | number of values         |

So NumPy generates **5 random numbers between 1 and 9**.

---

# 6️⃣ Real-World Example

### Example — Random Student Selection

Suppose we have students.

```python
import numpy as np

students = np.array(["Amit","Rahul","Priya","Neha","Arjun"])
```

Select a random student.

```python
selected = np.random.choice(students)

print(selected)
```

### Output (example)

```text
Priya
```

Explanation:

This randomly selects a **student from the list**.

---

# 7️⃣ Important Tips / Common Mistakes

### Tip 1

Use `seed()` when you want **repeatable results**.

Example:

```python
np.random.seed(42)
```

---

### Tip 2

Remember difference:

| Function  | Meaning                        |
| --------- | ------------------------------ |
| rand()    | random numbers between 0 and 1 |
| randn()   | normal distribution            |
| randint() | random integers                |

---

### Tip 3

Use random functions to **simulate datasets for testing ML models**.

---

# 8️⃣ Summary

In this module we learned about the **NumPy random module**.

Important functions include:

- `rand()` → random numbers between 0 and 1
- `randn()` → normal distribution numbers
- `randint()` → random integers
- `choice()` → random selection from array
- `shuffle()` → randomly rearrange elements
- `seed()` → control randomness

These functions are widely used in:

- Machine learning
- Data simulation
- Experiment reproducibility

---

# 9️⃣ Practice Questions

### Question 1

Generate **5 random numbers between 0 and 1**.

---

### Question 2

Generate **10 random integers between 1 and 50**.

---

### Question 3

Create array:

```text
[10,20,30,40,50]
```

Randomly select **2 elements** using `choice()`.

---

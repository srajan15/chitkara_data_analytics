# Module 16: Performance Optimization in Pandas

---

# 1️⃣ Introduction

When working with **large datasets**, performance becomes very important.

For example:

- A dataset may contain **millions of rows**
- Slow code can take **minutes or hours** to run

Therefore, data analysts must write **efficient Pandas code**.

Performance optimization means:

✔ Making code **faster**
✔ Reducing **memory usage**
✔ Handling **large datasets efficiently**

In this module we will learn:

- Vectorization
- Avoiding loops
- Efficient filtering
- Memory optimization
- Using categorical data

These techniques help improve **Pandas performance significantly**.

---

# 2️⃣ Why This Concept is Important

Suppose a dataset has **1 million rows**.

If we use inefficient code like **loops**, it may run very slowly.

Example:

```python
for i in range(len(df)):
    df["Salary"][i] = df["Salary"][i] * 1.10
```

This is **slow and inefficient**.

Instead, Pandas allows **vectorized operations**, which are much faster.

Understanding performance optimization is essential when working with **big data**.

---

# 3️⃣ Vectorization

Vectorization means performing operations on **entire columns at once** instead of using loops.

### Example (Slow Method)

```python
for i in range(len(df)):
    df["Salary"][i] = df["Salary"][i] * 1.10
```

This processes **one row at a time**.

---

### Example (Fast Method)

```python
df["Salary"] = df["Salary"] * 1.10
```

Explanation:

This multiplies **all values in the Salary column at once**.

Vectorization is **much faster than loops**.

---

# 4️⃣ Avoiding Loops

Loops should generally be **avoided in Pandas**.

Instead of loops, use:

- Vectorized operations
- `apply()`
- Built-in Pandas functions

### Example

```python
df["Bonus"] = df["Salary"] * 0.10
```

This calculates bonus for **all rows instantly**.

---

# 5️⃣ Efficient Filtering

Filtering large datasets efficiently is very important.

### Example Dataset

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha", "Priya"],
    "Salary": [40000, 50000, 35000, 45000]
}

df = pd.DataFrame(data)
```

### Example

Find employees with salary greater than **40000**.

```python
df[df["Salary"] > 40000]
```

Explanation:

This uses **vectorized boolean filtering**, which is very efficient.

---

# 6️⃣ Memory Optimization

Large datasets consume **large amounts of memory**.

We can reduce memory usage by **choosing efficient data types**.

### Example

```python
df.info()
```

This shows the **memory usage of the DataFrame**.

---

### Changing Data Type

```python
df["Age"] = df["Age"].astype("int32")
```

Explanation:

This reduces memory compared to **int64**.

---

# 7️⃣ Using Categorical Data

Columns with **repeated values** can be converted to **category type**.

Example:

| City   |
| ------ |
| Delhi  |
| Delhi  |
| Delhi  |
| Mumbai |

Instead of storing "Delhi" multiple times, Pandas stores it once and uses **category codes**.

### Example

```python
df["City"] = df["City"].astype("category")
```

Benefits:

✔ Reduces memory usage
✔ Improves performance

---

# 8️⃣ Using Built-in Pandas Functions

Pandas functions are optimized and **much faster than manual calculations**.

Example:

```python
df["Salary"].mean()
```

Instead of calculating the mean manually using loops.

---

# 9️⃣ Using `query()` for Filtering

Another efficient filtering method is `query()`.

### Example

```python
df.query("Salary > 40000")
```

Explanation:

This is sometimes **faster for complex filtering conditions**.

---

# 🔟 Using `eval()` for Calculations

`eval()` evaluates expressions efficiently.

### Example

```python
df.eval("Bonus = Salary * 0.10")
```

Explanation:

Creates a **Bonus column** efficiently.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst working with a dataset containing 5 million rows**.

If you write inefficient code like loops, the program may take **a long time to run**.

Instead, use vectorized operations:

```python
df["Revenue"] = df["Price"] * df["Quantity"]
```

This calculates revenue **for millions of rows instantly**.

This is why **performance optimization is very important in large-scale data analysis**.

---

# 6️⃣ Important Tips

✔ Avoid loops in Pandas

✔ Use **vectorized operations**

✔ Convert repeated text columns to **category**

✔ Use built-in functions like:

```text
mean()
sum()
groupby()
```

✔ Monitor memory usage using:

```python
df.info()
```

---

# 7️⃣ Summary of Module

In this module we learned how to **optimize Pandas performance**.

Concepts covered:

- Vectorization
- Avoiding loops
- Efficient filtering
- Memory optimization
- Using categorical data
- `query()` and `eval()`

These techniques help analysts **handle large datasets efficiently and improve processing speed**.

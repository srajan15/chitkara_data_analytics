# Module 19: Pandas with NumPy

---

# 1️⃣ Introduction

**Pandas and NumPy** are two of the most important libraries in Python for data analysis.

- **NumPy** is used for **numerical computations and array operations**.
- **Pandas** is used for **data manipulation and analysis using tables (DataFrames)**.

In fact, **Pandas is built on top of NumPy**, which means Pandas internally uses NumPy arrays for storing data.

Because of this, Pandas and NumPy work very well together.

In this module we will learn:

- Converting DataFrame to NumPy arrays
- Converting NumPy arrays to DataFrames
- Using NumPy operations with Pandas
- Vectorized numerical calculations

---

# 2️⃣ Why This Concept is Important

NumPy is **very fast for numerical operations**.

When working with large datasets, combining **Pandas + NumPy** helps:

✔ Perform fast calculations
✔ Work with numerical arrays efficiently
✔ Apply mathematical functions to data

Example:

| Age | Salary |
| --- | ------ |
| 22  | 40000  |
| 25  | 50000  |
| 21  | 35000  |

Using NumPy with Pandas, we can easily perform operations like:

- Average salary
- Standard deviation
- Mathematical transformations

---

# 3️⃣ Example Dataset

```python
import pandas as pd
import numpy as np

data = {
    "Age": [22, 25, 21, 24],
    "Salary": [40000, 50000, 35000, 45000]
}

df = pd.DataFrame(data)

print(df)
```

Output

```
   Age  Salary
0  22   40000
1  25   50000
2  21   35000
3  24   45000
```

---

# 4️⃣ Converting DataFrame to NumPy Array

We can convert a DataFrame into a NumPy array.

### Example

```python
df.values
```

Output

```
array([
 [22, 40000],
 [25, 50000],
 [21, 35000],
 [24, 45000]
])
```

Explanation:

- `.values` converts the DataFrame into a **NumPy array**

---

### Alternative Method

```python
df.to_numpy()
```

This is the **recommended modern method**.

---

# 5️⃣ Creating DataFrame from NumPy Array

We can also create a DataFrame from a NumPy array.

### Example

```python
import numpy as np
import pandas as pd

data = np.array([
    [22, 40000],
    [25, 50000],
    [21, 35000]
])

df = pd.DataFrame(data, columns=["Age", "Salary"])

print(df)
```

Output

```
   Age  Salary
0  22   40000
1  25   50000
2  21   35000
```

Explanation:

NumPy array is converted into a **DataFrame with column names**.

---

# 6️⃣ Using NumPy Functions with Pandas

NumPy functions can be applied directly to Pandas data.

### Example: Calculate Mean

```python
np.mean(df["Salary"])
```

Output

```
42500
```

---

### Example: Square Root

```python
np.sqrt(df["Salary"])
```

This calculates the **square root of each salary value**.

---

### Example: Logarithm

```python
np.log(df["Salary"])
```

Used in **data science and machine learning**.

---

# 7️⃣ NumPy Mathematical Operations

NumPy supports many mathematical operations.

Example:

```python
np.max(df["Salary"])
np.min(df["Salary"])
np.std(df["Salary"])
```

Explanation:

| Function   | Meaning            |
| ---------- | ------------------ |
| `np.max()` | maximum value      |
| `np.min()` | minimum value      |
| `np.std()` | standard deviation |

---

# 8️⃣ Vectorized Calculations

Vectorization allows operations on **entire columns at once**.

### Example

Increase salary by 10%.

```python
df["Salary"] = df["Salary"] * 1.10
```

This operation internally uses **NumPy vectorized calculations**, making it very fast.

---

# 9️⃣ Generating Random Data with NumPy

NumPy can generate random data for analysis.

### Example

```python
import numpy as np

data = np.random.randint(100, 500, size=5)

print(data)
```

Output example

```
[120 340 210 450 180]
```

Convert to DataFrame:

```python
df = pd.DataFrame(data, columns=["Sales"])
```

---

# 🔟 Using NumPy with Pandas Aggregation

Example:

```python
np.mean(df["Salary"])
np.median(df["Salary"])
np.std(df["Salary"])
```

These operations are commonly used in **statistical analysis**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst analyzing sales data**.

Dataset:

| Product | Price |
| ------- | ----- |

You may want to perform numerical operations:

Calculate **log of price**:

```python
df["LogPrice"] = np.log(df["Price"])
```

Calculate **standard deviation of sales**:

```python
np.std(df["Sales"])
```

These operations are commonly used in **machine learning and statistical modeling**.

---

# 6️⃣ Important Tips

✔ Pandas internally uses **NumPy arrays**

✔ Use `.to_numpy()` to convert DataFrame to NumPy array

✔ NumPy functions are very useful for **mathematical computations**

✔ Vectorized operations make Pandas **very fast**

---

# 7️⃣ Summary of Module

In this module we learned how **Pandas works with NumPy**.

Concepts covered:

- Converting DataFrame to NumPy array
- Creating DataFrame from NumPy array
- Using NumPy functions with Pandas
- Vectorized numerical operations

NumPy and Pandas together form the **core foundation of Python data analysis**.

---

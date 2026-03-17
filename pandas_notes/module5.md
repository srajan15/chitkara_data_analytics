# Module 5: Data Cleaning in Pandas

---

# 1️⃣ Introduction

In real-world datasets, the data is **rarely perfect**.
Most datasets contain problems such as:

- Missing values
- Duplicate records
- Incorrect data
- Inconsistent values

This process of fixing data problems is called **Data Cleaning**.

Data cleaning is one of the **most important tasks in data analysis**, because incorrect or incomplete data can lead to **wrong analysis results**.

Pandas provides powerful tools to clean data easily.

In this module we will learn:

- `isnull()`
- `notnull()`
- `dropna()`
- `fillna()`
- `replace()`
- `drop_duplicates()`

---

# 2️⃣ Why This Concept is Important

In real-world data:

- Customer information may have **missing values**
- Sales data may contain **duplicate transactions**
- Datasets may contain **wrong entries**

Example dataset:

| Name | Age | City   | Salary |
| ---- | --- | ------ | ------ |
| Amit | 22  | Delhi  | 40000  |
| Ravi | NaN | Mumbai | 50000  |
| Neha | 21  | NaN    | 35000  |
| Amit | 22  | Delhi  | 40000  |

Problems in this dataset:

- Missing age
- Missing city
- Duplicate record

Using Pandas data cleaning tools we can easily fix these issues.

---

# 3️⃣ Example Dataset

```python
import pandas as pd
import numpy as np

data = {
    "Name": ["Amit", "Ravi", "Neha", "Amit"],
    "Age": [22, np.nan, 21, 22],
    "City": ["Delhi", "Mumbai", np.nan, "Delhi"],
    "Salary": [40000, 50000, 35000, 40000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
   Name   Age   City   Salary
0  Amit  22.0  Delhi   40000
1  Ravi   NaN  Mumbai  50000
2  Neha  21.0   NaN    35000
3  Amit  22.0  Delhi   40000
```

Here:

- **NaN** means missing value.

---

# 4️⃣ `isnull()` Function

### Purpose

Detects **missing values** in the dataset.

### Example

```python
df.isnull()
```

### Output

```
   Name   Age   City   Salary
0 False False False False
1 False True  False False
2 False False True  False
3 False False False False
```

Explanation:

- **True → Missing value**
- **False → Value present**

---

### Count Missing Values

```python
df.isnull().sum()
```

Output

```
Name      0
Age       1
City      1
Salary    0
```

This shows how many **missing values exist in each column**.

---

# 5️⃣ `notnull()` Function

### Purpose

Checks which values are **not missing**.

### Example

```python
df.notnull()
```

Output shows:

- **True → value present**
- **False → missing value**

---

# 6️⃣ `dropna()` Function

### Purpose

Removes rows that contain **missing values**.

### Example

```python
df.dropna()
```

### Output

```
   Name   Age   City   Salary
0  Amit  22.0  Delhi   40000
3  Amit  22.0  Delhi   40000
```

Explanation:

Rows containing **NaN values are removed**.

---

### Remove Columns with Missing Values

```python
df.dropna(axis=1)
```

Explanation:

```
axis=0 → rows
axis=1 → columns
```

---

# 7️⃣ `fillna()` Function

### Purpose

Replaces missing values with another value.

### Example

Fill missing ages with **0**.

```python
df.fillna(0)
```

Output

```
   Name  Age   City   Salary
0  Amit 22.0  Delhi   40000
1  Ravi 0     Mumbai  50000
2  Neha 21.0  0       35000
3  Amit 22.0  Delhi   40000
```

---

### Fill with Mean Value

```python
df["Age"].fillna(df["Age"].mean())
```

Explanation:

Replace missing age with **average age**.

---

# 8️⃣ `replace()` Function

### Purpose

Replace specific values in the dataset.

### Example

```python
df.replace("Delhi", "New Delhi")
```

Output

```
City column:
Delhi → New Delhi
```

---

### Example

```python
df["City"] = df["City"].replace("Delhi", "New Delhi")
```

---

# 9️⃣ `drop_duplicates()` Function

### Purpose

Removes duplicate rows.

### Example

```python
df.drop_duplicates()
```

### Output

```
   Name   Age   City   Salary
0  Amit  22.0  Delhi   40000
1  Ravi   NaN  Mumbai  50000
2  Neha  21.0   NaN    35000
```

Explanation:

The duplicate row:

```
Amit 22 Delhi 40000
```

is removed.

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in an e-commerce company**.

Customer dataset:

| Customer | Age | City   |
| -------- | --- | ------ |
| Amit     | 22  | Delhi  |
| Ravi     | NaN | Mumbai |
| Neha     | 21  | NaN    |

Problems:

- Missing age
- Missing city

You can fix it using:

```python
df["Age"].fillna(df["Age"].mean())
df["City"].fillna("Unknown")
```

Now the dataset becomes **clean and usable for analysis**.

---

# 6️⃣ Important Tips

✔ Always check missing values first

```
df.isnull().sum()
```

✔ Use `fillna()` if data is important.

✔ Use `dropna()` only when rows are not useful.

✔ Remove duplicate records using `drop_duplicates()`.

---

# 7️⃣ Summary of Module

In this module we learned how to **clean data using Pandas**.

Functions covered:

- `isnull()` → detect missing values
- `notnull()` → check non-missing values
- `dropna()` → remove missing values
- `fillna()` → replace missing values
- `replace()` → change values
- `drop_duplicates()` → remove duplicate rows

Data cleaning is one of the **most important steps in data analysis**.

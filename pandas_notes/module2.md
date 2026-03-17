# Module 2: Pandas Data Structures (Series & DataFrame)

---

# 1️⃣ Introduction

In Pandas, data is stored using **two main data structures**:

1️⃣ **Series**
2️⃣ **DataFrame**

These structures allow us to store and analyze data in a **structured format**, similar to **Excel tables or database tables**.

Understanding these two structures is **very important**, because almost every Pandas operation works on them.

---

# 2️⃣ Why This Concept is Important

In real-world data analysis:

- Data usually comes in **table format**
- Each column represents a **feature**
- Each row represents a **record**

Example dataset:

| Name | Age | City   |
| ---- | --- | ------ |
| Amit | 22  | Delhi  |
| Ravi | 25  | Mumbai |
| Neha | 21  | Jaipur |

To work with this data in Python, we use **Pandas DataFrame**.

And if we work with **one column**, we use **Series**.

---

# 3️⃣ Explanation of Each Topic

## 1️⃣ Series

A **Series** is a **one-dimensional labeled array**.

It contains:

- Data
- Index

Example:

```text
Index   Value
0       10
1       20
2       30
3       40
```

You can think of a **Series as a single column in Excel**.

### Structure of Series

```
Index → identifies the position
Data → actual values
```

---

## 2️⃣ Creating a Series

We can create a Series using:

- Lists
- NumPy arrays
- Dictionaries

---

### Example 1: Series from List

```python
import pandas as pd

data = [10, 20, 30, 40]

s = pd.Series(data)

print(s)
```

---

### Code Explanation

**Line 1**

```python
import pandas as pd
```

Imports the Pandas library.

---

**Line 2**

```python
data = [10, 20, 30, 40]
```

Creates a Python list containing numbers.

---

**Line 3**

```python
s = pd.Series(data)
```

`pd.Series()` converts the list into a **Pandas Series object**.

---

**Line 4**

```python
print(s)
```

Displays the series.

---

### Output

```
0    10
1    20
2    30
3    40
dtype: int64
```

Explanation:

- **0,1,2,3 → index**
- **10,20,30,40 → values**
- **dtype → data type**

---

## 3️⃣ Custom Index in Series

We can assign our own index labels.

### Example

```python
import pandas as pd

data = [100, 200, 300]

s = pd.Series(data, index=["A", "B", "C"])

print(s)
```

---

### Output

```
A    100
B    200
C    300
```

Here:

- A, B, C are **custom indexes**

---

## 4️⃣ Accessing Elements in Series

We can access values using the **index**.

### Example

```python
print(s["A"])
```

Output

```
100
```

This retrieves the value associated with index **A**.

---

# 5️⃣ DataFrame

A **DataFrame** is a **two-dimensional data structure**.

It contains:

- Rows
- Columns
- Index

A DataFrame looks like a **table or spreadsheet**.

Example:

| Name | Age | City   |
| ---- | --- | ------ |
| Amit | 22  | Delhi  |
| Ravi | 25  | Mumbai |
| Neha | 21  | Jaipur |

---

## 6️⃣ Creating a DataFrame

A DataFrame can be created using:

- Dictionary
- List
- NumPy array
- CSV or Excel file

---

### Example: DataFrame from Dictionary

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha"],
    "Age": [22, 25, 21],
    "City": ["Delhi", "Mumbai", "Jaipur"]
}

df = pd.DataFrame(data)

print(df)
```

---

### Code Explanation

**Line 1**

Import Pandas library.

---

**Line 2–6**

Create a **dictionary** containing column names and values.

---

**Line 7**

```python
df = pd.DataFrame(data)
```

Converts dictionary into a **DataFrame**.

---

**Line 8**

```python
print(df)
```

Displays the table.

---

### Output

```
    Name   Age     City
0   Amit   22     Delhi
1   Ravi   25     Mumbai
2   Neha   21     Jaipur
```

Explanation:

- **Columns → Name, Age, City**
- **Rows → individual records**
- **Index → 0,1,2**

---

# 4️⃣ Accessing Data in DataFrame

We can access columns using column names.

### Example

```python
print(df["Name"])
```

Output

```
0    Amit
1    Ravi
2    Neha
```

This returns a **Series**.

---

### Access Multiple Columns

```python
print(df[["Name", "City"]])
```

Output

```
    Name     City
0   Amit     Delhi
1   Ravi     Mumbai
2   Neha     Jaipur
```

---

# 5️⃣ Real-World Example

Suppose you work in a **bank** and you have customer data:

| Customer | Balance | City   |
| -------- | ------- | ------ |
| Amit     | 50000   | Delhi  |
| Ravi     | 30000   | Mumbai |
| Neha     | 45000   | Jaipur |

Using Pandas you can:

- Find **average balance**
- Filter **customers with balance > 40000**
- Analyze **customer distribution by city**

This is why **DataFrames are widely used in business analytics**.

---

# 6️⃣ Important Notes / Tips

✔ **Series = Single column**

✔ **DataFrame = Multiple columns (table)**

✔ Most real-world datasets are stored as **DataFrames**

✔ A **column inside a DataFrame is actually a Series**

Example:

```
df["Age"] → Series
df → DataFrame
```

---

# 7️⃣ Summary of Module

In this module we learned:

- What is **Series**
- How to create Series
- Custom indexing in Series
- Accessing values in Series
- What is **DataFrame**
- Creating DataFrame from dictionary
- Accessing columns in DataFrame

These concepts form the **foundation of Pandas**.

```

```

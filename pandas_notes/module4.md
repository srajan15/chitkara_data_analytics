# Module 4: Selecting Data in Pandas (Indexing & Filtering)

---

# 1️⃣ Introduction

In data analysis, we rarely use the **entire dataset at once**.
Most of the time, we need to **select specific rows, columns, or filtered data**.

For example:

- Select only the **Name column**
- Select employees with **salary greater than 40,000**
- Select the **first row of data**
- Select rows based on **conditions**

Pandas provides several powerful methods to select data:

1️⃣ Column Selection
2️⃣ Row Selection
3️⃣ `loc[]` (Label-based selection)
4️⃣ `iloc[]` (Position-based selection)
5️⃣ Boolean Filtering

These methods are used **daily in real-world data analysis**.

---

# 2️⃣ Why This Concept is Important

In real projects, datasets can contain **thousands of rows and many columns**.

Example dataset:

| Name | Age | City   | Salary |
| ---- | --- | ------ | ------ |
| Amit | 22  | Delhi  | 40000  |
| Ravi | 25  | Mumbai | 50000  |
| Neha | 21  | Jaipur | 35000  |

A data analyst may need to:

✔ Find employees with **salary > 40000**
✔ Extract **only the Name and Salary columns**
✔ Get **specific rows of data**

To perform these tasks efficiently, we use **Pandas selection methods**.

---

# 3️⃣ Example Dataset

Let's create a sample dataset.

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha", "Priya", "Karan"],
    "Age": [22, 25, 21, 24, 23],
    "City": ["Delhi", "Mumbai", "Jaipur", "Delhi", "Pune"],
    "Salary": [40000, 50000, 35000, 45000, 42000]
}

df = pd.DataFrame(data)
```

Now we will perform different types of **data selection**.

---

# 4️⃣ Selecting Columns

## Select One Column

```python
df["Name"]
```

### Output

```
0    Amit
1    Ravi
2    Neha
3    Priya
4    Karan
```

### Explanation

- `"Name"` is the **column name**
- Pandas returns a **Series**

---

## Select Multiple Columns

```python
df[["Name", "Salary"]]
```

### Output

```
    Name   Salary
0   Amit   40000
1   Ravi   50000
2   Neha   35000
3   Priya  45000
4   Karan  42000
```

### Explanation

We use **double brackets** when selecting multiple columns.

```
df[[column1, column2]]
```

---

# 5️⃣ Selecting Rows

Rows can be selected using **index numbers**.

### Example

```python
df[0:3]
```

### Output

```
    Name   Age   City   Salary
0   Amit   22   Delhi   40000
1   Ravi   25   Mumbai  50000
2   Neha   21   Jaipur  35000
```

Explanation:

```
0:3 → rows from index 0 to 2
```

---

# 6️⃣ Using `loc[]` (Label-Based Selection)

`loc[]` selects data using **row labels and column names**.

### Example

```python
df.loc[0]
```

### Output

```
Name      Amit
Age       22
City      Delhi
Salary    40000
```

Explanation:

- `0` → row label

---

### Select Specific Row and Column

```python
df.loc[0, "Name"]
```

Output

```
Amit
```

---

### Select Multiple Rows and Columns

```python
df.loc[0:2, ["Name", "City"]]
```

Output

```
   Name   City
0  Amit   Delhi
1  Ravi   Mumbai
2  Neha   Jaipur
```

---

# 7️⃣ Using `iloc[]` (Position-Based Selection)

`iloc[]` selects data based on **numerical index position**.

### Example

```python
df.iloc[0]
```

Output

```
Name      Amit
Age       22
City      Delhi
Salary    40000
```

---

### Select Row and Column by Position

```python
df.iloc[0, 1]
```

Output

```
22
```

Explanation:

```
0 → first row
1 → second column
```

---

### Select Multiple Rows and Columns

```python
df.iloc[0:3, 0:2]
```

Output

```
   Name   Age
0  Amit   22
1  Ravi   25
2  Neha   21
```

---

# 8️⃣ Boolean Filtering (Conditional Selection)

We can filter rows based on conditions.

### Example: Salary greater than 40000

```python
df[df["Salary"] > 40000]
```

### Output

```
    Name   Age   City   Salary
1   Ravi   25   Mumbai  50000
3   Priya  24   Delhi   45000
4   Karan  23   Pune    42000
```

Explanation:

```
df["Salary"] > 40000
```

Creates a **True/False filter**.

Pandas then returns rows where the condition is **True**.

---

### Multiple Conditions

Example:

Employees from **Delhi**

```python
df[df["City"] == "Delhi"]
```

Output

```
   Name   Age   City   Salary
0  Amit   22   Delhi   40000
3  Priya  24   Delhi   45000
```

---

# 5️⃣ Real-World Example

Suppose you work in a **company HR department**.

Employee dataset:

| Name | Age | Department | Salary |
| ---- | --- | ---------- | ------ |

You may want to find:

✔ Employees with **salary > 50000**

```python
df[df["Salary"] > 50000]
```

✔ Employees from **IT department**

```python
df[df["Department"] == "IT"]
```

✔ Only **Name and Salary columns**

```python
df[["Name","Salary"]]
```

This type of **data filtering is used daily in business analytics**.

---

# 6️⃣ Important Tips

✔ `df["column"]` → select column

✔ `df[["col1","col2"]]` → select multiple columns

✔ `df.loc[]` → label-based selection

✔ `df.iloc[]` → index position selection

✔ Boolean filtering → conditional selection

---

# 7️⃣ Summary of Module

In this module we learned how to **select and filter data in Pandas**.

Concepts covered:

- Column selection
- Row selection
- `loc[]`
- `iloc[]`
- Boolean filtering

These are **core Pandas operations used in almost every data analysis task**.

---

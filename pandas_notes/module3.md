# Module 3: Exploring DataFrames (Basic Data Inspection)

---

# 1️⃣ Introduction

After loading or creating a dataset in Pandas, the **first step in data analysis** is to **explore the dataset**.

This process is called **Data Inspection** or **Data Exploration**.

It helps us quickly understand:

- What the dataset looks like
- How many rows and columns it has
- What type of data is present
- Whether there are missing values

Pandas provides several **built-in functions** that allow us to explore data easily.

The most commonly used ones are:

- `head()`
- `tail()`
- `info()`
- `describe()`
- `shape`
- `columns`
- `index`

These functions are used **daily by data analysts**.

---

# 2️⃣ Why This Concept is Important

In real-world data analysis, datasets can contain **thousands or millions of rows**.

For example:

- Customer data
- Sales data
- Financial transactions
- Website analytics

Before performing analysis, we must understand:

✔ Data structure
✔ Number of records
✔ Data types
✔ Missing values

Using Pandas inspection functions helps analysts **quickly understand the dataset**.

---

# 3️⃣ Example Dataset

Let's create a simple DataFrame.

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

Now we will explore this dataset using different functions.

---

# 4️⃣ `head()` Function

### Purpose

Displays the **first 5 rows** of the dataset.

### Example

```python
df.head()
```

### Output

```
    Name  Age   City   Salary
0   Amit  22   Delhi   40000
1   Ravi  25   Mumbai  50000
2   Neha  21   Jaipur  35000
3   Priya 24   Delhi   45000
4   Karan 23   Pune    42000
```

### Explanation

- Shows the **top rows of the dataset**
- Helps us quickly see the **structure of the data**

### Custom Rows

You can also specify the number of rows.

```python
df.head(3)
```

Output → first **3 rows**

---

# 5️⃣ `tail()` Function

### Purpose

Displays the **last 5 rows** of the dataset.

### Example

```python
df.tail()
```

### Output

```
    Name  Age   City   Salary
0   Amit  22   Delhi   40000
1   Ravi  25   Mumbai  50000
2   Neha  21   Jaipur  35000
3   Priya 24   Delhi   45000
4   Karan 23   Pune    42000
```

### Custom Rows

```python
df.tail(2)
```

Shows the **last 2 rows**.

---

# 6️⃣ `info()` Function

### Purpose

Provides **information about the dataset**.

### Example

```python
df.info()
```

### Output

```
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 4 columns):

Name      5 non-null object
Age       5 non-null int64
City      5 non-null object
Salary    5 non-null int64
```

### Explanation

`df.info()` shows:

- Number of rows
- Number of columns
- Column names
- Data types
- Non-null values
- Memory usage

This function is **very useful for detecting missing data**.

---

# 7️⃣ `describe()` Function

### Purpose

Shows **statistical summary of numerical columns**.

### Example

```python
df.describe()
```

### Output

```
       Age   Salary
count  5.0  5.0
mean   23.0  42400
std    1.58  5580
min    21    35000
max    25    50000
```

### Explanation

`describe()` calculates:

| Statistic | Meaning            |
| --------- | ------------------ |
| count     | number of values   |
| mean      | average value      |
| std       | standard deviation |
| min       | minimum value      |
| max       | maximum value      |

This helps understand **data distribution**.

---

# 8️⃣ `shape` Attribute

### Purpose

Shows the **number of rows and columns**.

### Example

```python
df.shape
```

### Output

```
(5, 4)
```

Explanation:

```
( rows , columns )
```

Here:

- 5 rows
- 4 columns

---

# 9️⃣ `columns` Attribute

### Purpose

Displays **column names**.

### Example

```python
df.columns
```

### Output

```
Index(['Name', 'Age', 'City', 'Salary'], dtype='object')
```

This shows the **list of columns in the dataset**.

---

# 🔟 `index` Attribute

### Purpose

Shows the **row index values**.

### Example

```python
df.index
```

### Output

```
RangeIndex(start=0, stop=5, step=1)
```

Meaning:

Row numbers start from **0 and go up to 4**.

---

# 5️⃣ Real-World Example

Imagine you work as a **Data Analyst in a retail company**.

You receive a dataset:

```
sales_data.csv
```

The first thing you do is:

```python
df = pd.read_csv("sales_data.csv")

df.head()
df.info()
df.describe()
```

This helps you quickly understand:

- Data structure
- Column types
- Sales distribution
- Missing values

This step is called **Exploratory Data Analysis (EDA)**.

---

# 6️⃣ Important Tips

✔ Always run these commands first when analyzing data

```
df.head()
df.info()
df.describe()
```

✔ They help detect **data problems early**

✔ These functions are used **in almost every data analysis project**

---

# 7️⃣ Summary of Module

In this module we learned how to **inspect and explore a dataset** using Pandas.

Functions learned:

- `head()` → first rows
- `tail()` → last rows
- `info()` → dataset information
- `describe()` → statistical summary
- `shape` → number of rows & columns
- `columns` → column names
- `index` → row labels

These are **fundamental tools used by every data analyst**.

---

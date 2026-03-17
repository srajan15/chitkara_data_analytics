# Module 1: Introduction to Pandas

---

# 1️⃣ Introduction

**Pandas** is one of the most powerful Python libraries used for **data analysis and data manipulation**.

It helps us to:

- Organize data
- Clean data
- Analyze data
- Transform data
- Prepare data for visualization or machine learning

In simple words:

👉 **Pandas helps us work with structured data like tables.**

Just like **Excel sheets**, Pandas also works with **rows and columns**.

Example of table data:

| Name | Age | City   |
| ---- | --- | ------ |
| Amit | 22  | Delhi  |
| Ravi | 25  | Mumbai |
| Neha | 21  | Jaipur |

Pandas allows us to perform operations on this type of data very easily.

---

# 2️⃣ Why Pandas is Important

Pandas is widely used in:

- Data Analysis
- Data Science
- Machine Learning
- Business Analytics
- Financial Analysis

### Without Pandas

Working with large datasets using normal Python lists or dictionaries becomes very difficult.

### With Pandas

We can easily:

- Filter data
- Calculate statistics
- Clean missing values
- Combine datasets
- Analyze trends

Companies like **Amazon, Google, Netflix, Uber** use data analysis tools like Pandas to analyze data.

---

# 3️⃣ Key Features of Pandas

Some important features of Pandas are:

### 1. Fast Data Analysis

Pandas can process **large datasets quickly**.

### 2. Data Cleaning

It helps handle:

- Missing values
- Incorrect data
- Duplicate records

### 3. Data Filtering

We can easily filter specific rows or columns.

### 4. Data Aggregation

We can calculate:

- Sum
- Mean
- Maximum
- Minimum

### 5. File Handling

Pandas can read data from files like:

- CSV
- Excel
- JSON
- SQL databases

---

# 4️⃣ Installing Pandas

Before using Pandas, we need to install it.

### Installation Command

```python
pip install pandas
```

This command installs the Pandas library in Python.

---

# 5️⃣ Importing Pandas

Before using Pandas in a program, we must import it.

### Standard Import Syntax

```python
import pandas as pd
```

### Explanation

`import pandas`

This imports the Pandas library.

`as pd`

This creates a **short alias name**.

Instead of writing:

```python
pandas.DataFrame()
```

We write:

```python
pd.DataFrame()
```

This makes the code shorter and easier.

---

# 6️⃣ Pandas Data Structures

Pandas mainly provides **two important data structures**:

### 1️⃣ Series

A **Series** is a **one-dimensional array**.

It contains:

- Data
- Index

Example:

```
0    10
1    20
2    30
3    40
```

It is similar to a **single column in Excel**.

---

### 2️⃣ DataFrame

A **DataFrame** is a **two-dimensional table**.

It contains:

- Rows
- Columns

Example:

| Name | Age |
| ---- | --- |
| Amit | 22  |
| Ravi | 25  |
| Neha | 21  |

This looks like an **Excel sheet or database table**.

---

# 7️⃣ Creating a Simple Pandas Series

### Example

```python
import pandas as pd

data = [10, 20, 30, 40]

s = pd.Series(data)

print(s)
```

---

# Code Explanation

### Line 1

```python
import pandas as pd
```

Imports the Pandas library.

---

### Line 2

```python
data = [10, 20, 30, 40]
```

A Python list containing numbers.

---

### Line 3

```python
s = pd.Series(data)
```

`pd.Series()` converts the list into a **Pandas Series object**.

---

### Line 4

```python
print(s)
```

Displays the Series.

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

- **0,1,2,3** → Index
- **10,20,30,40** → Data values
- **dtype** → Data type

---

# 8️⃣ Creating a Simple DataFrame

### Example

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha"],
    "Age": [22, 25, 21]
}

df = pd.DataFrame(data)

print(df)
```

---

# Code Explanation

### Line 1

Import Pandas.

---

### Line 2–5

Create a **dictionary** with two columns:

- Name
- Age

---

### Line 6

```python
df = pd.DataFrame(data)
```

This converts the dictionary into a **DataFrame**.

---

### Line 7

```python
print(df)
```

Displays the DataFrame.

---

### Output

```
    Name  Age
0   Amit   22
1   Ravi   25
2   Neha   21
```

Explanation:

- **Columns:** Name, Age
- **Rows:** 3 records
- **Index:** 0,1,2

---

# 9️⃣ Real-World Example

Imagine you work as a **Data Analyst in an e-commerce company**.

You have a dataset like this:

| OrderID | Customer | Price |
| ------- | -------- | ----- |
| 101     | Amit     | 500   |
| 102     | Ravi     | 700   |
| 103     | Neha     | 450   |

Using Pandas you can:

- Find **total sales**
- Find **average price**
- Filter **orders above ₹500**
- Analyze **customer buying patterns**

This is why Pandas is **one of the most important libraries in data analysis**.

---

# 🔟 Important Tips

✔ Always import Pandas as `pd` (industry standard)

✔ Pandas works best with **tabular data**

✔ It integrates very well with:

- NumPy
- Matplotlib
- Seaborn
- Scikit-learn

---

# 1️⃣1️⃣ Summary

In this module we learned:

- What Pandas is
- Why Pandas is used
- Installing Pandas
- Importing Pandas
- Pandas data structures
- Series
- DataFrame
- Creating Series and DataFrame

Pandas is the **core library for data analysis in Python**.

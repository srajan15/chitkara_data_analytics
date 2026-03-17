# Module 18: Exploratory Data Analysis (EDA) with Pandas

---

# 1️⃣ Introduction

Before building models or performing advanced analysis, the first step in any data project is **Exploratory Data Analysis (EDA)**.

EDA means **exploring and understanding the dataset** to discover patterns, trends, and potential problems.

During EDA we try to answer questions like:

- What does the dataset look like?
- Are there missing values?
- Are there unusual values (outliers)?
- How are variables related?

Pandas provides many tools that help us perform **EDA quickly and efficiently**.

---

# 2️⃣ Why This Concept is Important

In real-world projects, datasets are often **messy and complex**.

For example:

- Missing values
- Incorrect data types
- Outliers
- Hidden relationships between variables

If we analyze data without performing EDA, we may get **incorrect results**.

EDA helps analysts:

✔ Understand the dataset
✔ Identify problems in the data
✔ Discover patterns and trends
✔ Prepare data for modeling

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Age": [22, 25, 21, 24, 23],
    "Salary": [40000, 50000, 35000, 45000, 42000],
    "Experience": [1, 3, 2, 4, 2]
}

df = pd.DataFrame(data)

print(df)
```

Output

```
   Age  Salary  Experience
0  22   40000      1
1  25   50000      3
2  21   35000      2
3  24   45000      4
4  23   42000      2
```

Now we will perform **EDA on this dataset**.

---

# 4️⃣ Data Inspection

The first step in EDA is to inspect the dataset.

### View first rows

```python
df.head()
```

Shows the **first 5 rows**.

### View last rows

```python
df.tail()
```

Shows the **last rows of the dataset**.

---

### Dataset Information

```python
df.info()
```

This shows:

- Number of rows
- Column names
- Data types
- Missing values

---

# 5️⃣ Statistical Summary

We can get basic statistics of numerical data.

### Example

```python
df.describe()
```

Output example:

| Statistic | Meaning            |
| --------- | ------------------ |
| count     | number of values   |
| mean      | average            |
| std       | standard deviation |
| min       | minimum value      |
| max       | maximum value      |

This helps understand **data distribution**.

---

# 6️⃣ Missing Data Analysis

Missing values are common in real-world datasets.

### Check missing values

```python
df.isnull()
```

### Count missing values

```python
df.isnull().sum()
```

Example output

```
Age          0
Salary       1
Experience   0
```

This helps identify **which columns contain missing data**.

---

# 7️⃣ Detecting Outliers

Outliers are **extremely high or low values** that differ from other data.

Example:

| Salary  |
| ------- |
| 40000   |
| 42000   |
| 1000000 |

The value **1000000** is an outlier.

We can detect outliers using **box plots**.

### Example

```python
df.boxplot()
```

Box plots help identify **unusual values in the dataset**.

---

# 8️⃣ Correlation Analysis

Correlation shows the **relationship between variables**.

Example:

- Does experience affect salary?
- Does age affect income?

### Example

```python
df.corr()
```

Output example

|            | Age | Salary | Experience |
| ---------- | --- | ------ | ---------- |
| Age        | 1.0 | 0.7    | 0.6        |
| Salary     | 0.7 | 1.0    | 0.8        |
| Experience | 0.6 | 0.8    | 1.0        |

Explanation:

- Values close to **1** → strong positive relationship
- Values close to **0** → weak relationship
- Values close to **-1** → negative relationship

---

# 9️⃣ Analyzing Relationships Between Variables

We can visualize relationships using **scatter plots**.

### Example

```python
import matplotlib.pyplot as plt

df.plot(x="Experience", y="Salary", kind="scatter")
plt.show()
```

Explanation:

This chart shows how **experience affects salary**.

---

# 🔟 Value Counts

We can count occurrences of categorical values.

### Example

```python
df["Age"].value_counts()
```

Output

```
22    1
25    1
21    1
24    1
23    1
```

This shows **frequency of values**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in an e-commerce company**.

Customer dataset:

| Customer | Age | Purchase Amount |

Before analyzing customer behavior, you perform EDA:

```python
df.head()
df.info()
df.describe()
df.isnull().sum()
df.corr()
```

This helps understand:

✔ Customer demographics
✔ Spending patterns
✔ Relationships between variables

---

# 6️⃣ Important Tips

✔ Always perform **EDA before analysis or modeling**

✔ Key EDA steps:

```
df.head()
df.info()
df.describe()
df.isnull().sum()
df.corr()
```

✔ Visualization helps identify **patterns and anomalies**.

✔ EDA improves **data quality and insights**.

---

# 7️⃣ Summary of Module

In this module we learned about **Exploratory Data Analysis (EDA)** using Pandas.

Concepts covered:

- Data inspection
- Statistical summary
- Missing data analysis
- Outlier detection
- Correlation analysis
- Feature relationships

EDA is one of the **most important steps in any data analytics or data science workflow**.

---

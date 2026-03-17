# Module 7: Data Aggregation in Pandas

---

# 1️⃣ Introduction

In data analysis, we often need to **summarize data** to understand patterns and trends.

For example:

- What is the **average salary** of employees?
- What is the **total sales** in a company?
- What is the **maximum price** of a product?

These types of calculations are called **Data Aggregation**.

Pandas provides several built-in functions that allow us to **calculate statistics easily**.

Some commonly used aggregation functions are:

- `sum()`
- `mean()`
- `min()`
- `max()`
- `count()`
- `median()`
- `std()`

These functions help us quickly understand **data distribution and patterns**.

---

# 2️⃣ Why This Concept is Important

In real-world data analysis, companies want to know:

✔ Total revenue
✔ Average sales
✔ Highest performing product
✔ Lowest performing product

Example dataset:

| Name  | Age | Salary |
| ----- | --- | ------ |
| Amit  | 22  | 40000  |
| Ravi  | 25  | 50000  |
| Neha  | 21  | 35000  |
| Priya | 24  | 45000  |

Using aggregation functions we can easily find:

- Average salary
- Maximum salary
- Total salary expenditure

This helps businesses **make data-driven decisions**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha", "Priya", "Karan"],
    "Age": [22, 25, 21, 24, 23],
    "Salary": [40000, 50000, 35000, 45000, 42000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
    Name   Age   Salary
0   Amit   22   40000
1   Ravi   25   50000
2   Neha   21   35000
3   Priya  24   45000
4   Karan  23   42000
```

---

# 4️⃣ `sum()` Function

### Purpose

Calculates the **total sum of values**.

### Example

```python
df["Salary"].sum()
```

### Output

```
212000
```

### Explanation

This calculates the **total salary of all employees**.

---

# 5️⃣ `mean()` Function

### Purpose

Calculates the **average value**.

### Example

```python
df["Salary"].mean()
```

### Output

```
42400
```

### Explanation

This calculates the **average salary**.

Formula:

```
Mean = Total Values / Number of Values
```

---

# 6️⃣ `min()` Function

### Purpose

Finds the **minimum value**.

### Example

```python
df["Salary"].min()
```

### Output

```
35000
```

Explanation:

The **lowest salary** in the dataset is **35000**.

---

# 7️⃣ `max()` Function

### Purpose

Finds the **maximum value**.

### Example

```python
df["Salary"].max()
```

### Output

```
50000
```

Explanation:

The **highest salary** is **50000**.

---

# 8️⃣ `count()` Function

### Purpose

Counts the **number of values in a column**.

### Example

```python
df["Salary"].count()
```

### Output

```
5
```

Explanation:

There are **5 salary records** in the dataset.

---

# 9️⃣ `median()` Function

### Purpose

Finds the **middle value** in a dataset.

### Example

```python
df["Salary"].median()
```

### Output

```
42000
```

Explanation:

The median is the **middle value when data is sorted**.

---

# 🔟 `std()` Function

### Purpose

Calculates the **standard deviation**.

Standard deviation measures **how spread out the data is**.

### Example

```python
df["Salary"].std()
```

### Explanation

If the standard deviation is **large**, it means values are **far from the mean**.

If it is **small**, values are **close to the mean**.

---

# 1️⃣1️⃣ Applying Aggregation on Multiple Columns

We can calculate statistics for the **entire dataset**.

### Example

```python
df.mean(numeric_only=True)
```

### Output

```
Age       23
Salary    42400
```

Explanation:

Calculates the **average of all numerical columns**.

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in a retail company**.

Sales dataset:

| Product | Sales |
| ------- | ----- |
| Laptop  | 50000 |
| Mobile  | 30000 |
| Tablet  | 20000 |

You can analyze:

Total sales:

```python
df["Sales"].sum()
```

Average sales:

```python
df["Sales"].mean()
```

Highest sales:

```python
df["Sales"].max()
```

This helps businesses **understand performance and trends**.

---

# 6️⃣ Important Tips

✔ Always apply aggregation functions to **numeric columns**.

Example:

```
df["Salary"].mean()
```

✔ `describe()` already uses many aggregation functions internally.

✔ Aggregation functions are commonly used with **groupby()**, which we will learn in the next module.

---

# 7️⃣ Summary of Module

In this module we learned about **Data Aggregation in Pandas**.

Functions covered:

- `sum()` → total value
- `mean()` → average value
- `min()` → smallest value
- `max()` → largest value
- `count()` → number of values
- `median()` → middle value
- `std()` → standard deviation

These functions help summarize data and **extract meaningful insights from datasets**.

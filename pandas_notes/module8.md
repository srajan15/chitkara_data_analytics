# Module 8: GroupBy in Pandas

---

# 1️⃣ Introduction

In data analysis, we often need to **analyze data by categories or groups**.

For example:

- What is the **average salary by department**?
- What are the **total sales by region**?
- How many employees work in each **department**?

To perform this type of analysis, Pandas provides a powerful function called **`groupby()`**.

The **groupby operation** allows us to:

1️⃣ Split the data into groups
2️⃣ Apply calculations to each group
3️⃣ Combine the results

This process is often called:

**Split → Apply → Combine**

---

# 2️⃣ Why This Concept is Important

In real-world analytics, companies often analyze data **based on categories**.

Example dataset:

| Name  | Department | Salary |
| ----- | ---------- | ------ |
| Amit  | IT         | 50000  |
| Ravi  | HR         | 40000  |
| Neha  | IT         | 55000  |
| Priya | HR         | 42000  |
| Karan | Finance    | 48000  |

Questions analysts may ask:

✔ What is the **average salary in each department?**
✔ What is the **total salary by department?**
✔ How many employees are in each department?

These types of analysis are performed using **groupby()**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha", "Priya", "Karan"],
    "Department": ["IT", "HR", "IT", "HR", "Finance"],
    "Salary": [50000, 40000, 55000, 42000, 48000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
    Name  Department  Salary
0   Amit      IT      50000
1   Ravi      HR      40000
2   Neha      IT      55000
3   Priya     HR      42000
4   Karan     Finance 48000
```

---

# 4️⃣ Basic `groupby()` Operation

### Example

Find **average salary by department**.

```python
df.groupby("Department")["Salary"].mean()
```

### Output

```
Department
Finance    48000
HR         41000
IT         52500
```

### Explanation

```python
df.groupby("Department")
```

Groups the data based on **Department**.

```python
["Salary"].mean()
```

Calculates the **average salary in each group**.

---

# 5️⃣ Grouping and Calculating Total

Find **total salary by department**.

```python
df.groupby("Department")["Salary"].sum()
```

### Output

```
Department
Finance    48000
HR         82000
IT        105000
```

Explanation:

This adds all salary values **within each department group**.

---

# 6️⃣ Counting Values in Each Group

We can count how many records exist in each group.

### Example

```python
df.groupby("Department").count()
```

### Output

```
Department
Finance    1
HR         2
IT         2
```

This shows **how many employees are in each department**.

---

# 7️⃣ Multiple Aggregations

We can calculate **multiple statistics at once**.

### Example

```python
df.groupby("Department")["Salary"].agg(["mean", "max", "min"])
```

### Output

```
Department   mean   max   min
Finance     48000 48000 48000
HR          41000 42000 40000
IT          52500 55000 50000
```

### Explanation

`agg()` allows us to apply **multiple aggregation functions**.

---

# 8️⃣ Grouping by Multiple Columns

Sometimes we need to group by **more than one column**.

Example dataset:

| Name | Department | City | Salary |
| ---- | ---------- | ---- | ------ |

### Example

```python
df.groupby(["Department", "City"])["Salary"].mean()
```

Explanation:

First group by **Department**, then by **City**.

---

# 9️⃣ Viewing Groups

We can see the grouped data structure.

### Example

```python
df.groupby("Department")
```

This creates a **GroupBy object**.

To view groups:

```python
df.groupby("Department").groups
```

---

# 🔟 Iterating Through Groups

We can loop through groups.

### Example

```python
for dept, group in df.groupby("Department"):
    print(dept)
    print(group)
```

### Explanation

This prints each **department and its corresponding data**.

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in a retail company**.

Sales dataset:

| Product | Region | Sales |
| ------- | ------ | ----- |
| Laptop  | North  | 50000 |
| Laptop  | South  | 45000 |
| Mobile  | North  | 30000 |
| Mobile  | South  | 32000 |

You want to find **total sales by product**.

```python
df.groupby("Product")["Sales"].sum()
```

Or **average sales by region**.

```python
df.groupby("Region")["Sales"].mean()
```

This helps businesses **analyze performance across categories**.

---

# 6️⃣ Important Tips

✔ `groupby()` is one of the **most powerful functions in Pandas**.

✔ Often used with:

```
sum()
mean()
count()
max()
min()
agg()
```

✔ It is heavily used in **business analytics, finance, and sales analysis**.

---

# 7️⃣ Summary of Module

In this module we learned about **GroupBy operations in Pandas**.

Concepts covered:

- `groupby()` function
- Grouping data
- Aggregation with groups
- Multiple aggregations
- Grouping by multiple columns

`groupby()` helps analysts **summarize and analyze data across different categories**.

# Module 11: Data Transformation in Pandas

---

# 1️⃣ Introduction

In data analysis, we often need to **modify or transform data** to make it useful for analysis.

For example:

- Increase salary by **10%**
- Convert names to **uppercase**
- Categorize ages into **age groups**
- Apply calculations to columns

These operations are called **Data Transformation**.

Pandas provides several powerful functions for transforming data:

- `apply()`
- `map()`
- `applymap()`
- Lambda functions

These functions allow us to **apply custom operations to data efficiently**.

---

# 2️⃣ Why This Concept is Important

In real-world datasets, raw data often needs **modification before analysis**.

Example dataset:

| Name | Age | Salary |
| ---- | --- | ------ |
| Amit | 22  | 40000  |
| Ravi | 25  | 50000  |
| Neha | 21  | 35000  |

A data analyst may want to:

✔ Increase salary by **10%**
✔ Convert names to **uppercase**
✔ Create a **new category column**

These transformations can be done easily using **Pandas transformation functions**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha", "Priya"],
    "Age": [22, 25, 21, 24],
    "Salary": [40000, 50000, 35000, 45000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
    Name  Age  Salary
0   Amit   22   40000
1   Ravi   25   50000
2   Neha   21   35000
3   Priya  24   45000
```

---

# 4️⃣ `apply()` Function

### Purpose

`apply()` is used to **apply a function to a column or row**.

---

### Example: Increase Salary by 10%

```python
df["Salary"] = df["Salary"].apply(lambda x: x * 1.10)

print(df)
```

### Output

```
    Name  Age  Salary
0   Amit   22  44000
1   Ravi   25  55000
2   Neha   21  38500
3   Priya  24  49500
```

### Explanation

```python
lambda x: x * 1.10
```

- `x` represents each value in the column
- Each value is multiplied by **1.10 (10% increase)**

---

# 5️⃣ `map()` Function

### Purpose

`map()` is used to **transform values in a single column**.

---

### Example: Convert Names to Uppercase

```python
df["Name"] = df["Name"].map(str.upper)

print(df)
```

### Output

```
    Name  Age  Salary
0   AMIT   22  44000
1   RAVI   25  55000
2   NEHA   21  38500
3   PRIYA  24  49500
```

### Explanation

```python
str.upper
```

Converts text to **uppercase**.

---

### Example: Using Dictionary Mapping

```python
city_map = {
    "Delhi": "DL",
    "Mumbai": "MH"
}

df["City"].map(city_map)
```

This replaces values based on a **dictionary mapping**.

---

# 6️⃣ `applymap()` Function

### Purpose

`applymap()` applies a function to **every element in the DataFrame**.

---

### Example

```python
df[["Age"]] = df[["Age"]].applymap(lambda x: x + 1)

print(df)
```

### Output

```
    Name  Age  Salary
0   AMIT   23  44000
1   RAVI   26  55000
2   NEHA   22  38500
3   PRIYA  25  49500
```

### Explanation

`applymap()` modifies **each cell value**.

---

# 7️⃣ Lambda Functions

A **lambda function** is a small anonymous function used for quick calculations.

Syntax:

```
lambda arguments : expression
```

Example:

```python
lambda x: x + 10
```

This adds **10 to a value**.

---

### Example: Create Age Category

```python
df["AgeGroup"] = df["Age"].apply(lambda x: "Young" if x < 25 else "Adult")

print(df)
```

### Output

```
    Name  Age  Salary  AgeGroup
0   AMIT   23  44000   Young
1   RAVI   26  55000   Adult
2   NEHA   22  38500   Young
3   PRIYA  25  49500   Adult
```

---

# 8️⃣ Transforming Multiple Columns

Example:

```python
df[["Age", "Salary"]].apply(lambda x: x * 2)
```

Explanation:

Each value in **Age and Salary columns** is multiplied by **2**.

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in a company HR department**.

Employee dataset:

| Name | Salary |
| ---- | ------ |

You want to calculate **bonus (10%)**.

```python
df["Bonus"] = df["Salary"].apply(lambda x: x * 0.10)
```

Now you can analyze:

- Total salary cost
- Bonus distribution
- Employee compensation

This is a **common transformation task in business analytics**.

---

# 6️⃣ Important Tips

✔ Use `apply()` for **column operations**

✔ Use `map()` for **single column transformations**

✔ Use `applymap()` for **entire DataFrame operations**

✔ Lambda functions are useful for **quick calculations**

---

# 7️⃣ Summary of Module

In this module we learned how to **transform data using Pandas**.

Concepts covered:

- `apply()`
- `map()`
- `applymap()`
- Lambda functions

These functions allow analysts to **modify, transform, and prepare data for analysis**.

---

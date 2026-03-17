# Module 6: Data Manipulation in Pandas

---

# 1️⃣ Introduction

After loading and cleaning a dataset, the next step in data analysis is **data manipulation**.

Data manipulation means **modifying the dataset** to make it suitable for analysis.

Examples of data manipulation:

- Adding new columns
- Removing unnecessary columns
- Renaming columns
- Sorting data

These operations help analysts **organize data properly before performing analysis**.

In this module we will learn:

- Adding columns
- Removing columns
- Renaming columns
- Sorting data
- `sort_values()`
- `sort_index()`

These operations are used **very frequently in real-world data analysis projects**.

---

# 2️⃣ Why This Concept is Important

In real-world datasets:

- Some columns may be **missing**
- Some columns may be **unnecessary**
- Column names may be **incorrect or unclear**
- Data may need to be **sorted for analysis**

Example dataset:

| Name | Age | City   | Salary |
| ---- | --- | ------ | ------ |
| Amit | 22  | Delhi  | 40000  |
| Ravi | 25  | Mumbai | 50000  |
| Neha | 21  | Jaipur | 35000  |

A data analyst might want to:

✔ Add a **Bonus column**
✔ Remove **City column**
✔ Rename **Salary → Monthly Salary**
✔ Sort employees by **Salary**

Pandas allows us to perform these operations easily.

---

# 3️⃣ Example Dataset

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

---

# 4️⃣ Adding a New Column

We can easily add a new column to a DataFrame.

### Example

Add a **Bonus column**.

```python
df["Bonus"] = [4000, 5000, 3500, 4500, 4200]

print(df)
```

### Output

```
    Name   Age   City   Salary  Bonus
0   Amit   22   Delhi   40000   4000
1   Ravi   25   Mumbai  50000   5000
2   Neha   21   Jaipur  35000   3500
3   Priya  24   Delhi   45000   4500
4   Karan  23   Pune    42000   4200
```

### Explanation

```python
df["Bonus"] = values
```

- `"Bonus"` → new column name
- Values → data inserted into column

---

# 5️⃣ Removing a Column

Sometimes a dataset contains **unnecessary columns**.

We can remove them using `drop()`.

### Example

```python
df.drop("City", axis=1)
```

### Explanation

```python
axis = 1 → column
axis = 0 → row
```

### Permanent Removal

```python
df.drop("City", axis=1, inplace=True)
```

Explanation:

```python
inplace=True
```

Means the change is **permanent in the DataFrame**.

---

# 6️⃣ Renaming Columns

Sometimes column names are **not clear or not formatted properly**.

We can rename them using `rename()`.

### Example

```python
df.rename(columns={"Salary": "Monthly_Salary"})
```

### Explanation

```python
columns={"old_name":"new_name"}
```

### Permanent Change

```python
df.rename(columns={"Salary": "Monthly_Salary"}, inplace=True)
```

---

# 7️⃣ Sorting Data

Sorting helps us arrange data **in ascending or descending order**.

Example:

Sort employees by salary.

---

# 8️⃣ `sort_values()` Function

This function sorts data based on **column values**.

### Example

```python
df.sort_values("Salary")
```

### Output

Employees sorted by salary (ascending).

```
    Name   Age   City   Salary
2   Neha   21   Jaipur  35000
0   Amit   22   Delhi   40000
4   Karan  23   Pune    42000
3   Priya  24   Delhi   45000
1   Ravi   25   Mumbai  50000
```

---

### Descending Order

```python
df.sort_values("Salary", ascending=False)
```

Output:

Highest salary first.

---

# 9️⃣ Sorting by Multiple Columns

Example:

```python
df.sort_values(["City", "Salary"])
```

Explanation:

- First sort by **City**
- Then by **Salary**

---

# 🔟 `sort_index()` Function

Sorts data based on **row index**.

### Example

```python
df.sort_index()
```

Output

Rows sorted by **index numbers**.

---

### Reverse Index Order

```python
df.sort_index(ascending=False)
```

Output:

Rows sorted from **largest index to smallest**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in a company HR department**.

Employee dataset:

| Name | Salary |
| ---- | ------ |

You want to:

✔ Add **Bonus column**

```python
df["Bonus"] = df["Salary"] * 0.10
```

✔ Sort employees by salary

```python
df.sort_values("Salary", ascending=False)
```

✔ Remove unnecessary column

```python
df.drop("City", axis=1)
```

This type of **data manipulation is done daily in business analytics**.

---

# 6️⃣ Important Tips

✔ Add column

```
df["column_name"] = values
```

✔ Remove column

```
df.drop("column", axis=1)
```

✔ Rename column

```
df.rename(columns={"old":"new"})
```

✔ Sort data

```
df.sort_values("column")
```

---

# 7️⃣ Summary of Module

In this module we learned how to **manipulate data in Pandas**.

Concepts covered:

- Adding columns
- Removing columns
- Renaming columns
- Sorting data
- `sort_values()`
- `sort_index()`

These operations are **essential for organizing and preparing datasets for analysis**.

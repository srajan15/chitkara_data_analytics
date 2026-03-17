# Module 14: Advanced Indexing in Pandas

---

# 1️⃣ Introduction

In Pandas, **indexing** helps us identify and access rows in a DataFrame.

Normally, a DataFrame has a **single index** like:

```
0
1
2
3
```

But in many real-world datasets, we need **multiple levels of indexing**.

Example:

| Region | Product | Sales |
| ------ | ------- | ----- |
| North  | Laptop  | 50000 |
| North  | Mobile  | 30000 |
| South  | Laptop  | 45000 |
| South  | Mobile  | 32000 |

Here, we may want to organize data by:

- Region
- Product

Pandas allows this using **Advanced Indexing**, including:

- MultiIndex
- Hierarchical Indexing
- `set_index()`
- `reset_index()`
- `stack()`
- `unstack()`

These features help manage **complex datasets efficiently**.

---

# 2️⃣ Why This Concept is Important

In real-world analytics, data often has **multiple dimensions**.

For example:

Sales data might depend on:

- Region
- Product
- Year

Example dataset:

| Region | Product | Sales |
| ------ | ------- | ----- |
| North  | Laptop  | 50000 |
| North  | Mobile  | 30000 |
| South  | Laptop  | 45000 |
| South  | Mobile  | 32000 |

Using **MultiIndex**, we can represent this dataset in a more organized way.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Region": ["North", "North", "South", "South"],
    "Product": ["Laptop", "Mobile", "Laptop", "Mobile"],
    "Sales": [50000, 30000, 45000, 32000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
   Region  Product  Sales
0  North   Laptop   50000
1  North   Mobile   30000
2  South   Laptop   45000
3  South   Mobile   32000
```

---

# 4️⃣ `set_index()` Function

This function sets a **column as the index**.

### Example

```python
df.set_index("Region")
```

### Output

```
        Product  Sales
Region
North   Laptop   50000
North   Mobile   30000
South   Laptop   45000
South   Mobile   32000
```

Explanation:

```text
Region column becomes the row index
```

---

# 5️⃣ Creating MultiIndex

We can create **multiple levels of indexing**.

### Example

```python
df.set_index(["Region", "Product"])
```

### Output

```
                 Sales
Region Product
North  Laptop    50000
       Mobile    30000
South  Laptop    45000
       Mobile    32000
```

Explanation:

The DataFrame now has **two index levels**:

- Region
- Product

This structure is called **Hierarchical Indexing**.

---

# 6️⃣ Accessing Data from MultiIndex

We can access data using multiple index levels.

### Example

```python
df.set_index(["Region", "Product"]).loc["North"]
```

### Output

```
         Sales
Product
Laptop   50000
Mobile   30000
```

Explanation:

This retrieves all data where **Region = North**.

---

# 7️⃣ `reset_index()` Function

This function converts **index back to columns**.

### Example

```python
df.reset_index()
```

### Output

```
   index  Region  Product  Sales
0     0   North   Laptop   50000
1     1   North   Mobile   30000
2     2   South   Laptop   45000
3     3   South   Mobile   32000
```

Explanation:

The **index becomes a normal column again**.

---

# 8️⃣ `stack()` Function

`stack()` converts **columns into rows**.

### Example

```python
df.stack()
```

Explanation:

This creates a **multi-level index** by stacking columns.

---

# 9️⃣ `unstack()` Function

`unstack()` converts **row index into columns**.

### Example

```python
df.set_index(["Region", "Product"]).unstack()
```

### Output

```
         Sales
Product  Laptop  Mobile
Region
North     50000   30000
South     45000   32000
```

Explanation:

The **Product index becomes columns**.

---

# 🔟 Checking Index Levels

You can check the number of index levels.

### Example

```python
df.index.nlevels
```

Output

```
1
```

For MultiIndex:

```
2
```

---

# 5️⃣ Real-World Example

Suppose you work as a **data analyst in a retail company**.

Sales dataset:

| Region | Product | Sales |

Management wants to analyze:

✔ Sales by region
✔ Sales by product
✔ Sales by region and product

Using MultiIndex:

```python
df.set_index(["Region", "Product"])
```

This makes it easier to perform **multi-level analysis**.

---

# 6️⃣ Important Tips

✔ Use `set_index()` to create indexes.

✔ Use `reset_index()` to convert indexes back to columns.

✔ Use `stack()` and `unstack()` to reshape data.

✔ MultiIndex is very useful for **multi-dimensional datasets**.

---

# 7️⃣ Summary of Module

In this module we learned about **Advanced Indexing in Pandas**.

Concepts covered:

- `set_index()`
- `reset_index()`
- MultiIndex
- Hierarchical indexing
- `stack()`
- `unstack()`

These tools help organize **complex datasets with multiple categories**.

---

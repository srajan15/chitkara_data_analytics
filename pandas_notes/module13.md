# Module 13: Pivot Tables and Crosstab in Pandas

---

# 1️⃣ Introduction

When analyzing data, we often want to **summarize information in a table format**.

For example:

- Total sales by **region**
- Average salary by **department**
- Number of products sold by **category**

In Excel, we usually use **Pivot Tables** to summarize data.

Pandas provides similar tools:

- `pivot()`
- `pivot_table()`
- `crosstab()`

These functions help convert raw data into **summary tables**, making analysis easier.

---

# 2️⃣ Why This Concept is Important

In business analytics, analysts often need to answer questions like:

✔ Total sales by region
✔ Average salary by department
✔ Number of customers in each city

Example dataset:

| Product | Region | Sales |
| ------- | ------ | ----- |
| Laptop  | North  | 50000 |
| Laptop  | South  | 45000 |
| Mobile  | North  | 30000 |
| Mobile  | South  | 32000 |

Using pivot tables we can easily generate:

| Product | North | South |
| ------- | ----- | ----- |
| Laptop  | 50000 | 45000 |
| Mobile  | 30000 | 32000 |

This type of **summary table is very useful for decision-making**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Product": ["Laptop", "Laptop", "Mobile", "Mobile"],
    "Region": ["North", "South", "North", "South"],
    "Sales": [50000, 45000, 30000, 32000]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
  Product Region  Sales
0 Laptop  North  50000
1 Laptop  South  45000
2 Mobile  North  30000
3 Mobile  South  32000
```

---

# 4️⃣ `pivot()` Function

The `pivot()` function reshapes data into a **pivot table format**.

### Example

```python
df.pivot(index="Product", columns="Region", values="Sales")
```

### Output

```
Region   North   South
Product
Laptop   50000   45000
Mobile   30000   32000
```

### Explanation

```
index → row labels
columns → column categories
values → data values
```

So the table shows **sales by product and region**.

---

# 5️⃣ `pivot_table()` Function

`pivot_table()` is more powerful than `pivot()` because it allows **aggregation**.

Example: Calculate **average sales**.

```python
df.pivot_table(values="Sales", index="Product", columns="Region", aggfunc="mean")
```

### Output

```
Region   North   South
Product
Laptop   50000   45000
Mobile   30000   32000
```

### Explanation

```
aggfunc="mean"
```

Calculates the **average sales**.

Other aggregation options:

- `sum`
- `max`
- `min`
- `count`

---

### Example: Total Sales

```python
df.pivot_table(values="Sales", index="Product", aggfunc="sum")
```

Output

```
Product
Laptop    95000
Mobile    62000
```

---

# 6️⃣ Pivot Table with Multiple Columns

We can also summarize by **multiple categories**.

Example dataset:

| Product | Region | Year | Sales |

### Example

```python
df.pivot_table(values="Sales",
               index="Product",
               columns=["Region","Year"],
               aggfunc="sum")
```

This creates a **multi-level summary table**.

---

# 7️⃣ `crosstab()` Function

`crosstab()` is used to **calculate frequency tables**.

Example dataset:

| Product | Region |
| ------- | ------ |
| Laptop  | North  |
| Laptop  | South  |
| Mobile  | North  |

### Example

```python
pd.crosstab(df["Product"], df["Region"])
```

### Output

```
Region   North   South
Product
Laptop      1       1
Mobile      1       1
```

### Explanation

This shows **how many times each product appears in each region**.

---

# 8️⃣ Crosstab with Aggregation

We can also calculate values using `crosstab()`.

Example:

```python
pd.crosstab(df["Product"], df["Region"], values=df["Sales"], aggfunc="sum")
```

Output

```
Region   North   South
Product
Laptop   50000   45000
Mobile   30000   32000
```

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in a retail company**.

Dataset:

| Product | Region | Sales |

Management wants to know:

✔ Total sales by product
✔ Sales distribution by region

You can generate a pivot table:

```python
df.pivot_table(values="Sales", index="Product", columns="Region", aggfunc="sum")
```

This produces a **clear summary report** for decision-makers.

---

# 6️⃣ Important Tips

✔ Use `pivot()` when data is **already unique**.

✔ Use `pivot_table()` when data contains **duplicate combinations**.

✔ Use `crosstab()` for **frequency analysis**.

✔ Pivot tables are widely used in **business reporting and dashboards**.

---

# 7️⃣ Summary of Module

In this module we learned how to **summarize data using pivot tables in Pandas**.

Concepts covered:

- `pivot()`
- `pivot_table()`
- `crosstab()`
- Aggregation with pivot tables

These tools help transform raw data into **clear summary tables for analysis**.

---

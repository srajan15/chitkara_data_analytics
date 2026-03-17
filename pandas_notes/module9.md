# Module 9: Merging and Joining Data in Pandas

---

# 1️⃣ Introduction

In real-world data analysis, data is often stored in **multiple tables or datasets**.

For example:

- Customer information in one table
- Orders in another table
- Payments in another table

To analyze data properly, we often need to **combine these datasets**.

Pandas provides several functions to combine datasets:

- `merge()`
- `concat()`
- `join()`

These functions help us combine DataFrames in different ways.

Types of joins:

- Inner Join
- Left Join
- Right Join
- Outer Join

These concepts are similar to **SQL joins used in databases**.

---

# 2️⃣ Why This Concept is Important

In real-world projects, data rarely exists in **one single dataset**.

Example:

### Customers Table

| CustomerID | Name |
| ---------- | ---- |
| 1          | Amit |
| 2          | Ravi |
| 3          | Neha |

### Orders Table

| CustomerID | OrderAmount |
| ---------- | ----------- |
| 1          | 500         |
| 2          | 700         |
| 1          | 300         |

To know **which customer made which order**, we must **combine these tables**.

This is done using **merge or join operations**.

---

# 3️⃣ Example Datasets

### Customer Dataset

```python
import pandas as pd

customers = pd.DataFrame({
    "CustomerID": [1, 2, 3],
    "Name": ["Amit", "Ravi", "Neha"]
})
```

### Orders Dataset

```python
orders = pd.DataFrame({
    "CustomerID": [1, 2, 1],
    "OrderAmount": [500, 700, 300]
})
```

---

# 4️⃣ `merge()` Function

The `merge()` function is the **most commonly used method to combine DataFrames**.

### Example

```python
pd.merge(customers, orders, on="CustomerID")
```

### Output

```
CustomerID   Name   OrderAmount
1            Amit   500
1            Amit   300
2            Ravi   700
```

### Explanation

```python
on="CustomerID"
```

The DataFrames are merged using the **CustomerID column**.

---

# 5️⃣ Inner Join

An **Inner Join** returns only the **matching records from both tables**.

### Example

```python
pd.merge(customers, orders, on="CustomerID", how="inner")
```

### Result

Only rows with **matching CustomerID** appear.

If a customer has **no order**, they will not appear.

---

# 6️⃣ Left Join

A **Left Join** returns:

- All records from the **left DataFrame**
- Matching records from the **right DataFrame**

### Example

```python
pd.merge(customers, orders, on="CustomerID", how="left")
```

### Output

```
CustomerID   Name   OrderAmount
1            Amit   500
1            Amit   300
2            Ravi   700
3            Neha   NaN
```

Explanation:

Customer **Neha has no orders**, so the value becomes **NaN**.

---

# 7️⃣ Right Join

A **Right Join** returns:

- All records from the **right DataFrame**
- Matching records from the **left DataFrame**

### Example

```python
pd.merge(customers, orders, on="CustomerID", how="right")
```

Output will contain **all orders**, even if customer information is missing.

---

# 8️⃣ Outer Join

An **Outer Join** returns **all records from both tables**.

### Example

```python
pd.merge(customers, orders, on="CustomerID", how="outer")
```

Explanation:

- Includes **all customers**
- Includes **all orders**
- Missing values appear as **NaN**

---

# 9️⃣ `concat()` Function

The `concat()` function is used to **combine DataFrames vertically or horizontally**.

### Example

```python
df1 = pd.DataFrame({
    "Name": ["Amit", "Ravi"]
})

df2 = pd.DataFrame({
    "Name": ["Neha", "Priya"]
})

pd.concat([df1, df2])
```

### Output

```
Name
Amit
Ravi
Neha
Priya
```

Explanation:

The DataFrames are **stacked vertically**.

---

### Horizontal Concatenation

```python
pd.concat([df1, df2], axis=1)
```

Explanation:

```text
axis = 0 → rows
axis = 1 → columns
```

---

# 🔟 `join()` Function

The `join()` function is another way to **combine DataFrames based on index**.

### Example

```python
df1.join(df2)
```

This joins the DataFrames using **index values**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in an e-commerce company**.

You have:

### Customers dataset

| CustomerID | Name |
| ---------- | ---- |

### Orders dataset

| CustomerID | OrderAmount |
| ---------- | ----------- |

You can combine them:

```python
pd.merge(customers, orders, on="CustomerID")
```

Now you can analyze:

- Customer purchase behavior
- Total orders per customer
- Top customers

This is a **very common operation in business analytics**.

---

# 6️⃣ Important Tips

✔ Use `merge()` for **database-style joins**

✔ Use `concat()` to **stack DataFrames**

✔ Use `join()` when working with **index-based merging**

✔ Always check **common columns before merging**

Example:

```python
df.columns
```

---

# 7️⃣ Summary of Module

In this module we learned how to **combine datasets using Pandas**.

Concepts covered:

- `merge()`
- `concat()`
- `join()`
- Inner Join
- Left Join
- Right Join
- Outer Join

These operations are **essential when working with multiple datasets**.

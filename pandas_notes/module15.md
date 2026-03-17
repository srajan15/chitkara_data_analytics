# Module 15: Window Functions in Pandas

---

# 1️⃣ Introduction

In many real-world datasets, we want to analyze **trends over time** instead of just individual values.

For example:

- Average sales over the **last 3 days**
- Moving average of **stock prices**
- Cumulative total of **revenue**

These types of calculations use **Window Functions**.

A **window** means a subset of data points used for calculations.

Pandas provides two important window functions:

- `rolling()` → Moving calculations over a fixed window
- `expanding()` → Cumulative calculations from the beginning

These functions are widely used in **financial analysis, stock market data, and time-series analysis**.

---

# 2️⃣ Why This Concept is Important

In business analytics, companies often analyze **trends over time**.

Example dataset:

| Day  | Sales |
| ---- | ----- |
| Day1 | 100   |
| Day2 | 150   |
| Day3 | 200   |
| Day4 | 250   |
| Day5 | 300   |

Instead of analyzing each value individually, we may want to calculate:

✔ **Moving average of sales**
✔ **Cumulative total sales**

Window functions help analyze **patterns and trends in sequential data**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Day": [1, 2, 3, 4, 5],
    "Sales": [100, 150, 200, 250, 300]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
   Day  Sales
0   1   100
1   2   150
2   3   200
3   4   250
4   5   300
```

---

# 4️⃣ Rolling Window

A **rolling window** calculates statistics over a **fixed number of previous values**.

For example:

- Average of the **last 3 values**

---

### Example: Moving Average

```python
df["Sales"].rolling(3).mean()
```

### Output

```
0      NaN
1      NaN
2    150.0
3    200.0
4    250.0
```

### Explanation

```text
rolling(3)
```

Means the calculation uses **3 consecutive values**.

Example:

```
(100 + 150 + 200) / 3 = 150
```

---

# 5️⃣ Rolling Sum

We can also calculate the **sum of values in the window**.

### Example

```python
df["Sales"].rolling(3).sum()
```

### Output

```
0    NaN
1    NaN
2    450
3    600
4    750
```

Explanation:

```
100 + 150 + 200 = 450
```

---

# 6️⃣ Expanding Window

An **expanding window** calculates statistics from the **start of the dataset to the current row**.

---

### Example: Expanding Sum

```python
df["Sales"].expanding().sum()
```

### Output

```
0    100
1    250
2    450
3    700
4   1000
```

Explanation:

```
100
100 + 150
100 + 150 + 200
```

The window **keeps expanding** as we move forward.

---

# 7️⃣ Expanding Mean

We can also calculate **cumulative averages**.

### Example

```python
df["Sales"].expanding().mean()
```

### Output

```
0    100
1    125
2    150
3    175
4    200
```

Explanation:

This calculates the **average from the beginning up to the current row**.

---

# 8️⃣ Rolling with Minimum Periods

We can control when calculations start.

### Example

```python
df["Sales"].rolling(window=3, min_periods=1).mean()
```

Explanation:

```text
min_periods=1
```

Allows calculation even if fewer than **3 values exist**.

---

# 9️⃣ Rolling Maximum

We can also calculate **maximum values in a window**.

### Example

```python
df["Sales"].rolling(3).max()
```

Output

```
0    NaN
1    NaN
2    200
3    250
4    300
```

---

# 🔟 Rolling Minimum

Example:

```python
df["Sales"].rolling(3).min()
```

This finds the **minimum value within the rolling window**.

---

# 5️⃣ Real-World Example

Imagine you work as a **data analyst in a stock market company**.

Stock price dataset:

| Day | Price |
| --- | ----- |

Investors often analyze:

✔ **Moving average of stock price**

```python
df["Price"].rolling(7).mean()
```

✔ **Cumulative revenue**

```python
df["Revenue"].expanding().sum()
```

These calculations help identify **trends and patterns in financial data**.

---

# 6️⃣ Important Tips

✔ `rolling()` is used for **moving calculations**

✔ `expanding()` is used for **cumulative calculations**

✔ Rolling averages are widely used in **stock market analysis**

✔ Window functions are commonly used in **time-series analysis**

---

# 7️⃣ Summary of Module

In this module we learned about **Window Functions in Pandas**.

Concepts covered:

- Rolling window
- Expanding window
- Moving average
- `rolling()`
- `expanding()`

These techniques help analyze **trends in sequential or time-based data**.

---

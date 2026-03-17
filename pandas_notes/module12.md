# Module 12: Working with Date and Time in Pandas

---

# 1️⃣ Introduction

In many real-world datasets, **date and time information** is very important.

Examples:

- Sales transactions with **date and time**
- Website traffic with **timestamps**
- Stock market prices with **daily records**
- Weather data recorded **hourly**

To analyze such data, we need to work with **date and time values**.

Pandas provides powerful tools to handle **DateTime data**, including:

- `to_datetime()`
- Extracting **year, month, day**
- Date filtering
- Time indexing
- Resampling time-series data

These features are especially useful when working with **time-series data**.

---

# 2️⃣ Why This Concept is Important

Many business analyses depend on **time-based insights**.

For example:

A company might want to know:

✔ Monthly sales
✔ Daily website visitors
✔ Yearly revenue growth
✔ Weekly customer activity

Example dataset:

| Date       | Sales |
| ---------- | ----- |
| 2024-01-01 | 500   |
| 2024-01-02 | 700   |
| 2024-01-03 | 650   |

Using Pandas DateTime tools, we can analyze **sales trends over time**.

---

# 3️⃣ Example Dataset

```python
import pandas as pd

data = {
    "Date": ["2024-01-01", "2024-01-02", "2024-01-03", "2024-01-04"],
    "Sales": [500, 700, 650, 800]
}

df = pd.DataFrame(data)

print(df)
```

### Output

```
        Date  Sales
0  2024-01-01   500
1  2024-01-02   700
2  2024-01-03   650
3  2024-01-04   800
```

Here, the **Date column is currently stored as a string**, not as a DateTime object.

---

# 4️⃣ Converting to DateTime

To work with dates properly, we must convert them using **`to_datetime()`**.

### Example

```python
df["Date"] = pd.to_datetime(df["Date"])

print(df)
```

### Explanation

```
pd.to_datetime()
```

This converts the **Date column into a Pandas DateTime format**.

Now Pandas can perform **date operations**.

---

# 5️⃣ Extracting Year, Month, and Day

Once a column is converted to DateTime, we can extract parts of the date.

### Extract Year

```python
df["Year"] = df["Date"].dt.year
```

### Extract Month

```python
df["Month"] = df["Date"].dt.month
```

### Extract Day

```python
df["Day"] = df["Date"].dt.day
```

### Output

```
        Date  Sales  Year  Month  Day
0  2024-01-01   500  2024      1    1
1  2024-01-02   700  2024      1    2
2  2024-01-03   650  2024      1    3
3  2024-01-04   800  2024      1    4
```

Explanation:

```
.dt
```

This allows us to **access DateTime properties**.

---

# 6️⃣ Date Filtering

We can filter data based on specific dates.

### Example

Select sales after **January 2, 2024**.

```python
df[df["Date"] > "2024-01-02"]
```

### Output

```
        Date  Sales
2  2024-01-03   650
3  2024-01-04   800
```

Explanation:

This filters rows where the **date is greater than the given date**.

---

# 7️⃣ Setting Date as Index

In time-series analysis, we often set the **date column as the index**.

### Example

```python
df.set_index("Date", inplace=True)

print(df)
```

### Output

```
            Sales
Date
2024-01-01   500
2024-01-02   700
2024-01-03   650
2024-01-04   800
```

Explanation:

The **Date column becomes the row index**.

This is useful for **time-based operations**.

---

# 8️⃣ Resampling Data

Resampling means **changing the frequency of time data**.

For example:

- Daily → Monthly
- Hourly → Daily
- Monthly → Yearly

### Example

Calculate **monthly sales total**.

```python
df.resample("M").sum()
```

Explanation:

```
"M"
```

Means **monthly frequency**.

Other options:

| Code | Meaning |
| ---- | ------- |
| D    | Daily   |
| W    | Weekly  |
| M    | Monthly |
| Y    | Yearly  |

---

# 9️⃣ Getting Current Date and Time

Pandas can also generate the **current timestamp**.

### Example

```python
pd.Timestamp.now()
```

Output example:

```
2026-03-10 20:45:32
```

This is useful for **logging events or tracking activity**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in an e-commerce company**.

Sales dataset:

| Date | Revenue |
| ---- | ------- |

You may want to analyze:

✔ Monthly revenue

```python
df.resample("M").sum()
```

✔ Sales by year

```python
df["Year"] = df.index.year
df.groupby("Year").sum()
```

This helps businesses understand **sales trends over time**.

---

# 6️⃣ Important Tips

✔ Always convert date columns using:

```
pd.to_datetime()
```

✔ Use `.dt` to access **date components**.

✔ Set date as index when performing **time-series analysis**.

✔ Use `resample()` for **time-based aggregation**.

---

# 7️⃣ Summary of Module

In this module we learned how to **work with date and time in Pandas**.

Concepts covered:

- `to_datetime()`
- Extract year, month, day
- Date filtering
- Setting date as index
- Resampling time-series data

DateTime operations are **very important for analyzing time-based datasets** such as sales, finance, and web analytics.

---

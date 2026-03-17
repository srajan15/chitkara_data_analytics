# Module 17: Data Visualization with Pandas

---

# 1️⃣ Introduction

In data analysis, numbers alone can be difficult to understand.
Data visualization helps us **present data in graphical form** so that patterns and trends become easier to understand.

Examples of visualizations:

- Sales trends over time
- Comparison of product sales
- Distribution of data
- Relationship between variables

Pandas provides built-in plotting functions that work with **Matplotlib**, allowing us to easily create charts.

Common plots in Pandas:

- Line Plot
- Bar Chart
- Histogram
- Box Plot
- Scatter Plot

These visualizations help analysts **interpret data quickly and effectively**.

---

# 2️⃣ Why This Concept is Important

Businesses often use charts to **communicate insights**.

Example:

| Month | Sales |
| ----- | ----- |
| Jan   | 500   |
| Feb   | 600   |
| Mar   | 750   |

Instead of reading numbers, a **line chart** clearly shows the **growth trend**.

Visualization helps:

✔ Identify trends
✔ Compare categories
✔ Detect outliers
✔ Present results to stakeholders

---

# 3️⃣ Example Dataset

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Month": ["Jan", "Feb", "Mar", "Apr", "May"],
    "Sales": [500, 600, 750, 700, 850],
    "Profit": [100, 120, 180, 160, 200]
}

df = pd.DataFrame(data)

print(df)
```

Output

```
  Month  Sales  Profit
0  Jan    500     100
1  Feb    600     120
2  Mar    750     180
3  Apr    700     160
4  May    850     200
```

---

# 4️⃣ Line Plot

A **line plot** is used to show **trends over time**.

### Example

```python
df.plot(x="Month", y="Sales", kind="line")
plt.show()
```

Explanation:

```
x = Month → x-axis
y = Sales → y-axis
kind="line" → line chart
```

Use cases:

- Stock prices
- Sales growth
- Website traffic

---

# 5️⃣ Bar Chart

A **bar chart** is used to compare values across categories.

### Example

```python
df.plot(x="Month", y="Sales", kind="bar")
plt.show()
```

Explanation:

Each bar represents **sales for a specific month**.

Use cases:

- Product comparison
- Regional sales comparison
- Department performance

---

# 6️⃣ Histogram

A **histogram** shows the **distribution of numerical data**.

### Example

```python
df["Sales"].plot(kind="hist")
plt.show()
```

Explanation:

This shows how frequently values appear in different ranges.

Use cases:

- Age distribution
- Salary distribution
- Sales distribution

---

# 7️⃣ Box Plot

A **box plot** helps detect:

- Outliers
- Median
- Data spread

### Example

```python
df.plot(kind="box")
plt.show()
```

Explanation:

The box plot shows:

- Minimum value
- Maximum value
- Median
- Quartiles

Use cases:

- Detecting unusual values
- Comparing data distributions

---

# 8️⃣ Scatter Plot

A **scatter plot** shows the relationship between two variables.

### Example

```python
df.plot(x="Sales", y="Profit", kind="scatter")
plt.show()
```

Explanation:

Each point represents **a pair of values (Sales, Profit)**.

Use cases:

- Relationship between advertising and sales
- Correlation analysis

---

# 9️⃣ Multiple Columns Plot

We can visualize multiple columns at once.

### Example

```python
df.plot(x="Month", y=["Sales", "Profit"])
plt.show()
```

Explanation:

This displays **two lines on the same chart**.

---

# 🔟 Customizing Charts

We can add titles and labels.

### Example

```python
df.plot(x="Month", y="Sales", kind="line")
plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.show()
```

This improves **chart readability**.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in an e-commerce company**.

Dataset:

| Month | Revenue |
| ----- | ------- |

You can visualize sales growth:

```python
df.plot(x="Month", y="Revenue", kind="line")
```

This chart helps management quickly see:

✔ Sales growth
✔ Seasonal trends
✔ Business performance

---

# 6️⃣ Important Tips

✔ Use **line plots for trends**

✔ Use **bar charts for comparisons**

✔ Use **histograms for distributions**

✔ Use **scatter plots to analyze relationships**

✔ Always add **titles and labels** for clarity

---

# 7️⃣ Summary of Module

In this module we learned how to **visualize data using Pandas**.

Charts covered:

- Line plot
- Bar chart
- Histogram
- Box plot
- Scatter plot

Data visualization helps analysts **understand patterns and communicate insights effectively**.

---

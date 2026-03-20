## Module 10: Advanced Seaborn Customization

---

# 1️⃣ Module Title

**Advanced Seaborn Customization (Combining Seaborn + Matplotlib)**

---

# 2️⃣ Concept Explanation (Very Simple Language)

When we start using Seaborn, plots are **already beautiful by default**.
But in real-world analytics projects, we often need to **customize graphs further**.

Examples:

- Add **titles**
- Add **axis labels**
- Rotate **text**
- Add **annotations**
- Change **axis limits**
- Save graphs as **images**
- Combine multiple plots into **dashboards**

Seaborn works **on top of Matplotlib**, so we can combine both libraries to create **fully customized visualizations**.

Think of it like this:

```text
Seaborn → Creates beautiful statistical plots
Matplotlib → Gives full control over customization
```

So in advanced visualization, we often use **Seaborn + Matplotlib together**.

---

# 3️⃣ Topics Covered in This Module

### 1️⃣ Combining Seaborn + Matplotlib

Seaborn creates the plot, and Matplotlib modifies it.

Example:

```python
sns.barplot(...)
plt.title(...)
plt.xlabel(...)
```

---

### 2️⃣ Adding Titles

Titles help explain **what the chart represents**.

Example:

```python
plt.title("Average Total Bill by Day")
```

---

### 3️⃣ Adding Axis Labels

Axis labels explain **what the axes represent**.

Example:

```python
plt.xlabel("Day")
plt.ylabel("Total Bill")
```

---

### 4️⃣ Custom Annotations

Annotations allow us to **highlight important values**.

Example:

```python
plt.text(x_position, y_position, "Important Value")
```

---

### 5️⃣ Axis Formatting

We can customize:

- axis limits
- tick labels
- rotation

Example:

```python
plt.xticks(rotation=45)
```

---

### 6️⃣ Saving Plots

In real projects we often save graphs as **images** for reports or dashboards.

Example:

```python
plt.savefig("chart.png")
```

Supported formats:

- PNG
- JPG
- PDF
- SVG

---

### 7️⃣ Dashboard-Style Visualizations

We can combine **multiple plots in one figure**.

Example:

- Sales chart
- Profit chart
- Customer chart

All in **one dashboard layout**.

This is done using:

```python
plt.subplot()
```

---

# 4️⃣ Why This Concept Is Important

In real companies, graphs are used in:

- **business reports**
- **executive presentations**
- **data dashboards**
- **data science portfolios**

If graphs are **not properly labeled and formatted**, they become confusing.

Advanced customization helps analysts:

✔ Create **professional charts**
✔ Improve **data storytelling**
✔ Build **dashboard-style reports**
✔ Present results clearly to stakeholders

---

# 5️⃣ Syntax Explanation

### Add Title

```python
plt.title("Title Name")
```

---

### Add Labels

```python
plt.xlabel("X Label")
plt.ylabel("Y Label")
```

---

### Rotate Axis Text

```python
plt.xticks(rotation=45)
```

---

### Add Annotation

```python
plt.text(x, y, "text")
```

---

### Save Plot

```python
plt.savefig("plot.png")
```

---

# 6️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
tips = sns.load_dataset("tips")

# Create plot
sns.barplot(data=tips, x="day", y="total_bill")

# Add title
plt.title("Average Total Bill by Day")

# Add axis labels
plt.xlabel("Day")
plt.ylabel("Total Bill")

# Rotate labels
plt.xticks(rotation=45)

# Save figure
plt.savefig("bill_chart.png")

plt.show()
```

---

# 7️⃣ Code Breakdown

### Line 1

```python
import seaborn as sns
```

Imports **Seaborn library**.

---

### Line 2

```python
import matplotlib.pyplot as plt
```

Imports **Matplotlib**.

---

### Line 5

```python
tips = sns.load_dataset("tips")
```

Loads **tips dataset**.

---

### Line 8

```python
sns.barplot(data=tips, x="day", y="total_bill")
```

Creates a **bar chart** showing average total bill by day.

---

### Line 11

```python
plt.title("Average Total Bill by Day")
```

Adds a **title** to the chart.

---

### Line 14

```python
plt.xlabel("Day")
plt.ylabel("Total Bill")
```

Adds **axis labels**.

---

### Line 17

```python
plt.xticks(rotation=45)
```

Rotates x-axis labels for better readability.

---

### Line 20

```python
plt.savefig("bill_chart.png")
```

Saves the graph as an **image file**.

---

### Line 22

```python
plt.show()
```

Displays the graph.

---

# 8️⃣ Output Explanation

The output will be a **professional bar chart** showing:

```text
X-axis → Day
Y-axis → Average Total Bill
```

The chart will include:

- Title
- Axis labels
- Rotated labels
- Clean design

This type of visualization is **ready for business reports**.

---

# 9️⃣ Real-Life Use Case

Advanced customization is used in **professional analytics dashboards**.

### Business Analytics

```text
Sales by Region Dashboard
```

Charts show:

- monthly sales
- profit trends
- customer growth

---

### Finance

```text
Stock Market Reports
```

Charts include:

- trend lines
- annotations
- highlighted events

---

### Data Science Portfolio

When building **portfolio projects**, analysts use customized charts to make their projects **look professional**.

Example project:

```text
Netflix Data Visualization
```

Customized charts improve **storytelling with data**.

---

# 🔟 Small Practice Task

### Task 1

Load tips dataset

```python
tips = sns.load_dataset("tips")
```

---

### Task 2

Create barplot

```python
sns.barplot(data=tips, x="day", y="total_bill")
```

---

### Task 3

Add:

- title
- axis labels
- rotated ticks

---

### Task 4

Save plot

```python
plt.savefig("tips_chart.png")
```

---

## Module 3: Relational Plots

### 1️⃣ Concept Explanation (Very Simple Language)

**Relational plots** are used to understand the **relationship between two or more variables** in a dataset.

In data analysis, we often want to answer questions like:

- Does **age affect income**?
- Does **advertising increase sales**?
- Does **higher bill lead to higher tip**?

Relational plots help us **see patterns, trends, and relationships** in the data.

In Seaborn, the main relational plots are:

1️⃣ **`scatterplot()`**
Shows the relationship between **two numerical variables** using dots.

Example idea:

```
Total Bill → X-axis
Tip → Y-axis
```

Each dot = **one observation (one customer bill)**

---

2️⃣ **`lineplot()`**
Used to show **trends over time or ordered data**.

Example:

```
Year vs Sales
Month vs Temperature
```

A line connects the points to show **trend direction**.

---

3️⃣ **`relplot()`**
A **figure-level function** used to create relational plots.

It can create:

- scatter plots
- line plots
- multi-variable plots

It also supports **multiple categories in one graph**.

---

4️⃣ **Multiple Variable Visualization**

Seaborn allows us to visualize **more than 2 variables** using parameters like:

| Parameter | Meaning                         |
| --------- | ------------------------------- |
| `hue`     | Changes color based on category |
| `style`   | Changes marker style            |
| `size`    | Changes size of points          |

Example:

```
x → total_bill
y → tip
hue → sex
```

This shows **male vs female tipping behavior**.

---

### 2️⃣ Why This Concept Is Important

Relational plots are used heavily in **Exploratory Data Analysis (EDA)**.

They help analysts:

- Identify **correlations**
- Detect **patterns**
- Discover **trends**
- Spot **outliers**

Example:

A company may analyze:

```
Advertising Spend vs Sales
```

If the scatter plot shows an **upward pattern**, it means:

```
Higher advertising → Higher sales
```

This helps businesses **make data-driven decisions**.

---

### 3️⃣ Syntax Explanation

### Scatter Plot

```python
sns.scatterplot(data=dataset, x="column1", y="column2")
```

---

### Line Plot

```python
sns.lineplot(data=dataset, x="column1", y="column2")
```

---

### Using Multiple Variables

```python
sns.scatterplot(data=dataset, x="col1", y="col2", hue="category")
```

---

### Relplot

```python
sns.relplot(data=dataset, x="col1", y="col2", kind="scatter")
```

---

### Important Parameters

| Parameter | Purpose                         |
| --------- | ------------------------------- |
| `hue`     | Different colors for categories |
| `style`   | Different markers               |
| `size`    | Different point sizes           |

---

# Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
tips = sns.load_dataset("tips")

# Create scatter plot
sns.scatterplot(data=tips, x="total_bill", y="tip", hue="sex")

# Show plot
plt.show()
```

---

# Code Breakdown

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

Imports **Matplotlib** for displaying the graph.

---

### Line 5

```python
tips = sns.load_dataset("tips")
```

Loads the **tips dataset**.

This dataset includes:

- total_bill
- tip
- sex
- day
- time
- size

---

### Line 8

```python
sns.scatterplot(data=tips, x="total_bill", y="tip", hue="sex")
```

Creates a **scatter plot**.

- **X-axis → total bill**
- **Y-axis → tip**
- **Color → gender**

This helps compare **tipping behavior by gender**.

---

### Line 11

```python
plt.show()
```

Displays the plot.

---

# Output Explanation

The graph will show **dots representing customers**.

Each dot represents:

```
One restaurant bill
```

The plot shows:

- Higher bills often produce **higher tips**
- Colors show **male vs female customers**

This helps analyze **customer tipping patterns**.

---

# Real-Life Use Case

Relational plots are widely used in:

### Marketing Analysis

```
Ad Spend vs Sales
```

To see if marketing campaigns increase sales.

---

### Finance

```
Experience vs Salary
```

To analyze employee salary growth.

---

### E-commerce

```
Product Price vs Sales
```

To understand pricing impact on sales.

---

### Weather Analysis

```
Time vs Temperature
```

To analyze climate trends.

This is similar to the **weather visualization project** you are already doing with Python.

---

# Small Practice Task

### Task 1

Load Titanic dataset

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Create a scatter plot:

```
age vs fare
```

---

### Task 3

Add category visualization:

```
hue = sex
```

---

### Task 4 (Bonus)

Create a **line plot**:

```
size vs total_bill
```

---

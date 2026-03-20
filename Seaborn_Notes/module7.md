## Module 7: Regression Plots

### 1️⃣ Module Title

**Regression Plots in Seaborn**

---

# 2️⃣ Concept Explanation (Very Simple Language)

A **regression plot** helps us understand the **relationship between two variables and whether one variable influences another**.

In simple terms, regression plots show:

- Data points (scatter plot)
- A **best-fit line (regression line)**

This line shows the **trend of the data**.

Example question:

```
Does higher restaurant bill lead to higher tip?
```

If the regression line goes **upwards**, it means:

```
Higher bill → Higher tip
```

If the line goes **downwards**, it means:

```
Higher price → Lower sales
```

Regression plots help us **understand relationships and make predictions**.

---

# Main Regression Plot Functions

## 1️⃣ `regplot()`

`regplot()` shows:

- Scatter plot
- Regression line
- Confidence interval

Example idea:

```
Total Bill vs Tip
```

This helps understand **customer tipping behavior**.

---

## 2️⃣ `lmplot()`

`lmplot()` also shows regression but is more **advanced**.

It allows:

- Multiple plots
- Category-based regression
- Facet visualization

Example:

```
Tip vs Bill by Gender
```

---

## 3️⃣ Confidence Interval

Regression plots often show a **shaded region around the regression line**.

This shaded region is called the **confidence interval (CI)**.

It shows **uncertainty of the regression line**.

Example interpretation:

- Narrow CI → more reliable relationship
- Wide CI → less reliable relationship

---

# 3️⃣ Why This Concept Is Important

Regression plots are very important in:

### Data Science

Understanding **relationships between variables**.

Example:

```
Study hours vs exam score
```

---

### Business Analytics

```
Advertising spend vs sales
```

Helps companies decide **marketing budgets**.

---

### Finance

```
Experience vs salary
```

Helps analyze **salary growth trends**.

---

### Machine Learning

Regression plots help analysts:

✔ Identify **linear relationships**
✔ Detect **patterns in data**
✔ Prepare features for **predictive models**

---

# 4️⃣ Syntax Explanation

### Regression Plot

```python
sns.regplot(data=dataset, x="column1", y="column2")
```

---

### Linear Model Plot

```python
sns.lmplot(data=dataset, x="column1", y="column2")
```

---

### Disable Confidence Interval

```python
sns.regplot(data=df, x="col1", y="col2", ci=None)
```

---

### Regression by Category

```python
sns.lmplot(data=df, x="col1", y="col2", hue="category")
```

---

# 5️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
tips = sns.load_dataset("tips")

# Regression plot
sns.regplot(data=tips, x="total_bill", y="tip")

plt.show()
```

---

# 6️⃣ Code Breakdown

### Line 1

```python
import seaborn as sns
```

Imports the **Seaborn library**.

---

### Line 2

```python
import matplotlib.pyplot as plt
```

Imports **Matplotlib** to display the plot.

---

### Line 5

```python
tips = sns.load_dataset("tips")
```

Loads the **tips dataset**.

This dataset contains:

- total_bill
- tip
- sex
- day
- time
- size

---

### Line 8

```python
sns.regplot(data=tips, x="total_bill", y="tip")
```

Creates a **regression plot**.

It includes:

- Scatter points
- Regression line
- Confidence interval

---

### Line 10

```python
plt.show()
```

Displays the plot.

---

# 7️⃣ Output Explanation

The graph will show:

**X-axis**

```
Total Bill
```

**Y-axis**

```
Tip
```

You will see:

- Scatter points representing customers
- A **line showing trend**

If the line slopes **upwards**, it means:

```
Higher bill → Higher tip
```

This indicates a **positive relationship**.

---

# 8️⃣ Real-Life Use Case

Regression plots are widely used in **predictive analytics**.

### Marketing

```
Ad Budget vs Sales
```

Companies analyze whether **more advertising increases sales**.

---

### Education

```
Study Hours vs Exam Score
```

Helps understand **learning patterns**.

---

### Finance

```
Income vs Spending
```

Helps analyze **consumer behavior**.

---

### Weather Analysis

```
Temperature vs Energy Consumption
```

Helps predict **electricity demand**.

---

# 9️⃣ Small Practice Task

### Task 1

Load the **tips dataset**

```python
tips = sns.load_dataset("tips")
```

---

### Task 2

Create regression plot:

```
total_bill vs tip
```

---

### Task 3

Create regression plot by gender:

```python
sns.lmplot(data=tips, x="total_bill", y="tip", hue="sex")
```

Observe how regression lines differ for **male and female customers**.

---

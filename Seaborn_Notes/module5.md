## Module 5: Categorical Plots

### 1️⃣ Concept Explanation (Very Simple Language)

In many datasets, some columns contain **categories instead of numbers**.

Examples of categorical data:

| Column     | Example Values |
| ---------- | -------------- |
| Gender     | Male, Female   |
| Day        | Mon, Tue, Wed  |
| Department | HR, Sales, IT  |
| Survival   | Yes, No        |

When we want to analyze **numerical values across categories**, we use **categorical plots**.

Example questions:

- Do **men give higher tips than women**?
- Which **day has the highest restaurant bills**?
- Which **department has highest salary**?

Seaborn provides many categorical plots to answer these questions.

---

### Main Categorical Plots in Seaborn

### 1️⃣ `barplot()`

Shows **average values for each category**.

Example idea:

```text
Day vs Average Total Bill
```

Bars represent the **average value**.

---

### 2️⃣ `countplot()`

Shows **how many observations exist in each category**.

Example:

```text
Gender count
```

This tells us:

- How many **male passengers**
- How many **female passengers**

---

### 3️⃣ `boxplot()`

Shows **data distribution inside categories**.

It helps detect:

- Median
- Quartiles
- Outliers

Example:

```text
Total Bill vs Day
```

We can see **how bills vary across days**.

---

### 4️⃣ `violinplot()`

Similar to boxplot but shows **full distribution shape**.

It combines:

- Boxplot
- KDE distribution

---

### 5️⃣ `stripplot()`

Shows **individual data points** across categories.

This helps see **exact observations**.

---

### 6️⃣ `swarmplot()`

Similar to stripplot but prevents **overlapping points**.

It arranges dots so they are easier to see.

---

### 7️⃣ `catplot()`

A **figure-level function** used to create categorical plots.

It can generate multiple plot types:

- bar
- box
- violin
- count

---

# 2️⃣ Why This Concept Is Important

In real-world analytics, many variables are **categorical**.

Examples:

| Industry   | Example Analysis     |
| ---------- | -------------------- |
| Marketing  | Sales by region      |
| HR         | Salary by department |
| E-commerce | Orders by category   |
| Healthcare | Patients by disease  |

Categorical plots help analysts **compare groups easily**.

Example in Titanic dataset:

```text
Gender vs Survival
```

We may observe:

```text
Women survived more than men
```

This insight becomes **immediately visible in a plot**.

---

# 3️⃣ Syntax Explanation

### Bar Plot

```python
sns.barplot(data=dataset, x="category", y="value")
```

---

### Count Plot

```python
sns.countplot(data=dataset, x="category")
```

---

### Box Plot

```python
sns.boxplot(data=dataset, x="category", y="value")
```

---

### Violin Plot

```python
sns.violinplot(data=dataset, x="category", y="value")
```

---

### Strip Plot

```python
sns.stripplot(data=dataset, x="category", y="value")
```

---

### Swarm Plot

```python
sns.swarmplot(data=dataset, x="category", y="value")
```

---

### Catplot

```python
sns.catplot(data=dataset, x="category", y="value", kind="bar")
```

---

# 4️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
titanic = sns.load_dataset("titanic")

# Countplot
sns.countplot(data=titanic, x="sex")

plt.show()
```

---

# 5️⃣ Code Breakdown

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

Imports **Matplotlib** to display plots.

---

### Line 5

```python
titanic = sns.load_dataset("titanic")
```

Loads the **Titanic dataset**.

---

### Line 8

```python
sns.countplot(data=titanic, x="sex")
```

Creates a **count plot** showing number of passengers by gender.

---

### Line 10

```python
plt.show()
```

Displays the plot.

---

# 6️⃣ Output Explanation

The graph will show:

**X-axis**

```
Male   Female
```

**Y-axis**

```
Number of passengers
```

Bars represent **how many passengers belong to each gender**.

Example observation:

```
There may be more male passengers than female passengers.
```

---

# 7️⃣ Real-Life Use Case

Categorical plots are widely used in **business analytics**.

### HR Analytics

```
Department vs Average Salary
```

Helps understand **salary distribution across departments**.

---

### Marketing

```
Region vs Sales
```

Shows **which region performs better**.

---

### E-commerce

```
Product Category vs Orders
```

Helps identify **most popular products**.

---

### Healthcare

```
Disease vs Patient Count
```

Helps hospitals analyze **disease distribution**.

---

# 8️⃣ Small Practice Task

### Task 1

Load Titanic dataset

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Create a **countplot**

```
sex
```

---

### Task 3

Create a **barplot**

```
class vs fare
```

---

### Task 4

Create a **boxplot**

```
class vs age
```

Observe **outliers and median values**.

---

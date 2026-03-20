## Module 6: Matrix Plots

### 1️⃣ Module Title

**Matrix Plots (Heatmap & Clustermap)**

---

# 2️⃣ Concept Explanation (Very Simple Language)

Sometimes in data analysis we want to understand **relationships between many variables at the same time**.

Example dataset columns:

| Age | Fare | Pclass | SibSp | Parch |
| --- | ---- | ------ | ----- | ----- |

Instead of comparing them **one by one**, we can use a **matrix visualization**.

A **matrix plot shows relationships between multiple variables using colors**.

The two most important matrix plots in Seaborn are:

1️⃣ **Heatmap**
2️⃣ **Clustermap**

---

## 1️⃣ Correlation Concept

Before understanding heatmaps, we must understand **correlation**.

**Correlation shows how strongly two variables are related.**

Correlation values range from:

```text
-1  → Strong negative relationship
0   → No relationship
+1  → Strong positive relationship
```

Example:

| Relationship         | Example                 |
| -------------------- | ----------------------- |
| Positive correlation | Experience ↑ → Salary ↑ |
| Negative correlation | Price ↑ → Sales ↓       |
| No correlation       | Shoe size vs income     |

In Python we calculate correlation using:

```python
df.corr()
```

---

## 2️⃣ Heatmap

A **heatmap shows correlation values using colors**.

Example interpretation:

| Color       | Meaning             |
| ----------- | ------------------- |
| Dark color  | Strong relationship |
| Light color | Weak relationship   |

This helps analysts **quickly understand feature relationships**.

---

## 3️⃣ Annotated Heatmap

We can display **numbers inside the heatmap** using:

```python
annot=True
```

This shows the **exact correlation values**.

Example:

```
Age vs Fare → 0.20
```

---

## 4️⃣ Clustermap

A **clustermap groups similar variables together**.

It uses **hierarchical clustering** to organize data.

This helps analysts discover:

- Similar features
- Similar data groups

It is often used in:

- **Machine learning**
- **Genomics**
- **Feature clustering**

---

# 3️⃣ Why This Concept Is Important

Matrix plots are extremely important in **Exploratory Data Analysis (EDA)**.

They help analysts:

✔ Detect **strong relationships between variables**
✔ Select **important features for ML models**
✔ Identify **multicollinearity**
✔ Understand **dataset structure**

Example in Titanic dataset:

We can check correlation between:

```
Age
Fare
SibSp
Parch
```

If **Fare and Pclass are strongly correlated**, it reveals ticket class patterns.

---

# 4️⃣ Syntax Explanation

### Correlation Matrix

```python
df.corr()
```

---

### Heatmap

```python
sns.heatmap(data)
```

---

### Annotated Heatmap

```python
sns.heatmap(data, annot=True)
```

---

### Change Color Map

```python
sns.heatmap(data, cmap="coolwarm")
```

---

### Clustermap

```python
sns.clustermap(data)
```

---

# 5️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
titanic = sns.load_dataset("titanic")

# Select numeric columns
corr = titanic.corr(numeric_only=True)

# Plot heatmap
sns.heatmap(corr, annot=True, cmap="coolwarm")

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

Imports **Matplotlib** for displaying graphs.

---

### Line 5

```python
titanic = sns.load_dataset("titanic")
```

Loads the **Titanic dataset**.

---

### Line 8

```python
corr = titanic.corr(numeric_only=True)
```

Calculates **correlation matrix** for numeric columns.

Example result:

|     | Age | Fare | SibSp |
| --- | --- | ---- | ----- |
| Age | 1   | 0.2  | -0.3  |

---

### Line 11

```python
sns.heatmap(corr, annot=True, cmap="coolwarm")
```

Creates a **heatmap visualization**.

Parameters:

| Parameter  | Meaning                   |
| ---------- | ------------------------- |
| annot=True | Shows correlation numbers |
| cmap       | Color style               |

---

### Line 13

```python
plt.show()
```

Displays the heatmap.

---

# 7️⃣ Output Explanation

The output will be a **color grid (matrix)**.

Each square represents **relationship between two variables**.

Example:

| Variable Pair  | Correlation |
| -------------- | ----------- |
| Age vs Fare    | 0.20        |
| SibSp vs Parch | 0.41        |

Interpretation:

- Red = strong relationship
- Blue = weak relationship

Analysts quickly see **important relationships in the dataset**.

---

# 8️⃣ Real-Life Use Case

Matrix plots are widely used in **Data Science and Analytics**.

### Finance

```
Stock correlation analysis
```

Helps investors understand **which stocks move together**.

---

### Machine Learning

```
Feature correlation analysis
```

Helps remove **highly correlated variables**.

---

### Healthcare

```
Medical feature correlation
```

Helps find relationships between:

- age
- blood pressure
- cholesterol

---

### Marketing Analytics

```
Customer feature correlation
```

Helps identify **factors affecting customer spending**.

---

# 9️⃣ Small Practice Task

### Task 1

Load Titanic dataset

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Create correlation matrix

```python
titanic.corr(numeric_only=True)
```

---

### Task 3

Create heatmap

```python
sns.heatmap(titanic.corr(numeric_only=True))
```

---

### Task 4

Create annotated heatmap

```python
sns.heatmap(titanic.corr(numeric_only=True), annot=True)
```

---

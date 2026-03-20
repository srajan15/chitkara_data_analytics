## Module 8: Multi-Plot Grids

### 1️⃣ Module Title

**Multi-Plot Grids in Seaborn (FacetGrid, Pairplot, Jointplot, PairGrid)**

---

# 2️⃣ Concept Explanation (Very Simple Language)

Sometimes a dataset has **many variables**.
If we create plots **one by one**, it takes a lot of time.

Seaborn provides **multi-plot grids**, which allow us to create **multiple plots in a single figure automatically**.

This is extremely useful in **Exploratory Data Analysis (EDA)** because we can analyze **many relationships at once**.

Example dataset:

| Age | Fare | Pclass | SibSp |
| --- | ---- | ------ | ----- |

Instead of making many separate plots, Seaborn can create **a grid of plots automatically**.

The main multi-plot tools in Seaborn are:

1️⃣ **FacetGrid**
2️⃣ **pairplot()**
3️⃣ **jointplot()**
4️⃣ **PairGrid**

---

# 1️⃣ `pairplot()`

`pairplot()` is one of the **most powerful EDA tools**.

It creates **scatter plots between all numerical variables** in a dataset.

Example:

If a dataset has columns:

```text
sepal_length
sepal_width
petal_length
petal_width
```

Pairplot automatically creates **plots between every pair of variables**.

Example relationships shown:

```
sepal_length vs sepal_width
sepal_length vs petal_length
petal_length vs petal_width
```

It also shows **histograms on the diagonal**.

This helps analysts quickly understand **relationships in the dataset**.

---

# 2️⃣ `jointplot()`

`jointplot()` shows the relationship between **two variables**, but with extra information.

It includes:

- Scatter plot in the center
- Distribution plots on the sides

Example:

```
Total Bill vs Tip
```

Side plots show **distribution of both variables**.

---

# 3️⃣ `FacetGrid`

`FacetGrid` creates **multiple plots based on categories**.

Example:

```
Total Bill vs Tip for each day
```

It creates **separate plots for each category**.

Example output:

```
Monday plot
Tuesday plot
Wednesday plot
```

This helps compare **categories visually**.

---

# 4️⃣ `PairGrid`

`PairGrid` is a **more customizable version of pairplot**.

It allows us to define:

- different plots on upper triangle
- different plots on lower triangle
- custom plots on diagonal

This is used in **advanced analysis**.

---

# 3️⃣ Why This Concept Is Important

Multi-plot grids are very powerful in **Exploratory Data Analysis**.

They help analysts:

✔ Understand **relationships between many variables**
✔ Detect **correlations quickly**
✔ Discover **patterns in the dataset**
✔ Save time in analysis

Example in **machine learning workflow**:

Before building a model, analysts use **pairplot** to see how features interact.

---

# 4️⃣ Syntax Explanation

### Pairplot

```python
sns.pairplot(data)
```

---

### Pairplot with category

```python
sns.pairplot(data, hue="category")
```

---

### Jointplot

```python
sns.jointplot(data=data, x="column1", y="column2")
```

---

### FacetGrid

```python
g = sns.FacetGrid(data, col="category")
g.map(sns.scatterplot, "x", "y")
```

---

### PairGrid

```python
g = sns.PairGrid(data)
g.map(sns.scatterplot)
```

---

# 5️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
iris = sns.load_dataset("iris")

# Pairplot
sns.pairplot(iris, hue="species")

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

Imports **Matplotlib** to display plots.

---

### Line 5

```python
iris = sns.load_dataset("iris")
```

Loads the **Iris dataset**.

This dataset contains flower measurements:

- sepal_length
- sepal_width
- petal_length
- petal_width
- species

---

### Line 8

```python
sns.pairplot(iris, hue="species")
```

Creates **multiple plots showing relationships between all variables**.

`hue="species"` colors the points by flower species.

---

### Line 10

```python
plt.show()
```

Displays the plots.

---

# 7️⃣ Output Explanation

The output is a **grid of plots**.

Each cell shows the relationship between **two variables**.

Example:

```
petal_length vs petal_width
```

You will notice that **different species form separate clusters**.

This means the features are **good for classification models**.

---

# 8️⃣ Real-Life Use Case

Multi-plot grids are widely used in **data science workflows**.

### Machine Learning

```
Feature relationship analysis
```

Used before building models.

---

### Finance

```
Stock feature analysis
```

Analyze relationships between:

- price
- volume
- volatility

---

### Healthcare

```
Patient feature analysis
```

Analyze relationships between:

- age
- cholesterol
- blood pressure

---

### Marketing

```
Customer behavior analysis
```

Analyze relationships between:

- spending
- visits
- engagement

---

# 9️⃣ Small Practice Task

### Task 1

Load **Iris dataset**

```python
iris = sns.load_dataset("iris")
```

---

### Task 2

Create pairplot

```python
sns.pairplot(iris)
```

---

### Task 3

Create pairplot with species

```python
sns.pairplot(iris, hue="species")
```

---

### Task 4

Create jointplot

```
total_bill vs tip
```

(using tips dataset)

---

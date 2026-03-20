## Module 4: Distribution Plots

### 1️⃣ Concept Explanation (Very Simple Language)

In Data Analysis, we often want to understand **how data is distributed**.

Example questions:

- Are most people **young or old**?
- Are most customers paying **low or high bills**?
- What is the **most common value** in the dataset?

To answer these questions, we use **distribution plots**.

A **distribution plot shows how values are spread in the data**.

Example:

If we plot **Age distribution**, we can see:

- Which age group appears the most
- Whether the data is **skewed**
- Whether there are **outliers**

---

### Types of Distribution Plots in Seaborn

#### 1️⃣ `histplot()`

A **Histogram** shows how frequently values occur.

Example idea:

```
Age distribution
```

It groups values into **bins (ranges)**.

Example bins:

```
0–10
10–20
20–30
30–40
```

Each bar shows **how many data points fall in that range**.

---

#### 2️⃣ `kdeplot()`

KDE means **Kernel Density Estimation**.

It shows a **smooth curve representing the distribution**.

Instead of bars, it shows a **probability density curve**.

This helps understand **data shape** easily.

---

#### 3️⃣ `displot()`

`displot()` is a **figure-level function**.

It can create:

- Histogram
- KDE plot
- Combination plots

It is commonly used in **EDA workflows**.

---

#### 4️⃣ Combining Histogram + KDE

We can combine both:

```
Histogram + Density curve
```

This helps see:

- **Exact frequency (bars)**
- **Smooth distribution shape (curve)**

---

#### 5️⃣ Binning Concept

In histograms, data is divided into **bins (ranges)**.

Example:

```
Fare values
0–10
10–20
20–30
30–40
```

Each bin counts **how many observations fall inside it**.

More bins → **more detailed distribution**
Fewer bins → **simpler distribution**

---

### 2️⃣ Why This Concept Is Important

Distribution plots are **one of the most important tools in EDA**.

They help analysts:

✔ Understand **data spread**
✔ Detect **outliers**
✔ Identify **skewness**
✔ Understand **data patterns**

Example:

In the Titanic dataset we can analyze:

```
Age distribution
Fare distribution
```

This helps answer:

- Are most passengers **young or old**?
- Are ticket prices mostly **cheap or expensive**?

This is crucial before applying **Machine Learning models**.

---

### 3️⃣ Syntax Explanation

### Histogram

```python
sns.histplot(data=dataset, x="column")
```

---

### KDE Plot

```python
sns.kdeplot(data=dataset, x="column")
```

---

### Histogram + KDE

```python
sns.histplot(data=dataset, x="column", kde=True)
```

---

### Displot

```python
sns.displot(data=dataset, x="column")
```

---

### Bins Example

```python
sns.histplot(data=df, x="column", bins=20)
```

---

# Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
titanic = sns.load_dataset("titanic")

# Plot histogram with KDE
sns.histplot(data=titanic, x="age", kde=True)

plt.show()
```

---

# Code Breakdown

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

Imports Matplotlib for showing the graph.

---

### Line 5

```python
titanic = sns.load_dataset("titanic")
```

Loads the **Titanic dataset**.

---

### Line 8

```python
sns.histplot(data=titanic, x="age", kde=True)
```

Creates a **histogram for age distribution**.

- `x="age"` → age column
- `kde=True` → adds a smooth density curve

---

### Line 10

```python
plt.show()
```

Displays the plot.

---

# Output Explanation

The plot shows:

**X-axis**

```
Age
```

**Y-axis**

```
Number of passengers
```

Bars show **how many passengers belong to each age group**.

The **KDE curve** shows the **overall distribution shape**.

Example observation:

- Most passengers may be between **20–40 years old**.

---

# Real-Life Use Case

Distribution plots are used in many industries.

### Finance

```
Customer income distribution
```

Helps banks analyze **income groups**.

---

### E-commerce

```
Product price distribution
```

Helps understand **most common price range**.

---

### Healthcare

```
Patient age distribution
```

Helps hospitals analyze **age demographics**.

---

### Data Science Workflow

Distribution plots are used in **EDA before building ML models**.

Example:

```
Check if data is normally distributed
```

---

# Small Practice Task

### Task 1

Load Titanic dataset

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Create histogram:

```
age distribution
```

---

### Task 3

Create histogram:

```
fare distribution
```

---

### Task 4

Change number of bins

```python
sns.histplot(data=titanic, x="fare", bins=30)
```

Observe how the graph changes.

---

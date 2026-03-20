## Module 1: Introduction to Seaborn

### 1️⃣ Concept Explanation (Very Simple Language)

**Seaborn** is a **Python data visualization library** used to create **beautiful and statistical graphs** easily.

It is built **on top of Matplotlib**, which means:

- Matplotlib provides the **basic plotting engine**
- Seaborn provides **better design, themes, and statistical plots**

So instead of writing **many lines of Matplotlib code**, Seaborn lets us create **better visualizations with fewer lines of code**.

In **Data Analytics**, Seaborn is mainly used for:

- **Exploratory Data Analysis (EDA)**
- Understanding **patterns in data**
- Finding **relationships between variables**

Example visualizations in Seaborn:

- Scatter plots
- Bar charts
- Distribution plots
- Heatmaps
- Regression plots

---

### 2️⃣ Why This Concept Is Important

In Data Analysis, raw data is difficult to understand.

Seaborn helps us:

- 📊 **Visualize patterns**
- 📈 Understand **relationships between variables**
- 🔍 Detect **outliers**
- 📉 Analyze **distributions**
- 📊 Build **professional dashboards**

Example:

Instead of reading **1000 rows of Titanic data**, we can quickly see:

- Survival by gender
- Age distribution
- Fare vs survival

using **Seaborn graphs**.

---

### 3️⃣ Syntax Explanation

First we import Seaborn.

```python
import seaborn as sns
```

Common syntax:

```python
sns.plot_type(data=dataset, x="column1", y="column2")
```

Example:

```python
sns.scatterplot(data=df, x="age", y="salary")
```

Where:

- **data** → dataset
- **x** → column for X-axis
- **y** → column for Y-axis

---

### 4️⃣ Installing Seaborn

If Seaborn is not installed:

```python
pip install seaborn
```

---

### 5️⃣ Importing Seaborn

```python
import seaborn as sns
import matplotlib.pyplot as plt
```

Why import matplotlib?

Because **Seaborn uses Matplotlib to display plots**.

---

### 6️⃣ Built-in Datasets in Seaborn

Seaborn provides **built-in datasets for practice**.

Examples:

- **tips**
- **titanic**
- **iris**
- **flights**
- **penguins**

These datasets help beginners **practice visualization easily**.

To see available datasets:

```python
sns.get_dataset_names()
```

---

### 7️⃣ Loading Dataset Using `sns.load_dataset()`

Seaborn provides a function:

```python
sns.load_dataset()
```

Example:

```python
tips = sns.load_dataset("tips")
```

---

# Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load built-in dataset
tips = sns.load_dataset("tips")

# Show first 5 rows
print(tips.head())

# Simple scatter plot
sns.scatterplot(data=tips, x="total_bill", y="tip")

plt.show()
```

---

# Code Breakdown

### Line 1

```python
import seaborn as sns
```

Imports Seaborn library.

---

### Line 2

```python
import matplotlib.pyplot as plt
```

Imports Matplotlib for displaying plots.

---

### Line 4

```python
tips = sns.load_dataset("tips")
```

Loads the **tips dataset**.

This dataset contains restaurant data such as:

- total_bill
- tip
- gender
- day
- time
- size

---

### Line 7

```python
print(tips.head())
```

Displays the **first 5 rows of the dataset**.

---

### Line 10

```python
sns.scatterplot(data=tips, x="total_bill", y="tip")
```

Creates a **scatter plot** showing relationship between:

- **total_bill**
- **tip**

---

### Line 12

```python
plt.show()
```

Displays the plot.

---

# Output Explanation

The graph will show:

- **X-axis → total bill**
- **Y-axis → tip**

Each point represents **one customer bill**.

You will notice:

- Higher bills usually lead to **higher tips**

This helps analysts understand **customer tipping behavior**.

---

# Real-Life Use Case

A **restaurant analyst** can use this plot to study:

- Do customers give higher tips for higher bills?
- Which day has more spending?
- Does group size affect tipping?

Companies use this to **analyze customer behavior**.

---

# Small Practice Task

Try this yourself.

### Task 1

Load **Titanic dataset**.

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Print:

```python
titanic.head()
titanic.info()
titanic.describe()
```

---

### Task 3

Create a scatter plot:

```
age vs fare
```

---

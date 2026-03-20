# Module 14: Matplotlib with Other Libraries

**Goal:** Learn how Matplotlib works together with other important Python libraries used in **Data Analytics and Data Science**.

In real projects, Matplotlib is rarely used alone.
It is usually combined with:

- **Pandas** → for data handling
- **NumPy** → for numerical computations
- **Seaborn** → for advanced statistical visualization
- **Jupyter Notebook** → for interactive analysis

---

# 1. Matplotlib + Pandas

## 1️⃣ Simple Explanation

**Pandas** is used to **store and analyze data** in tables called **DataFrames**.

Matplotlib is used to **visualize that data**.

So the typical workflow is:

```text
Load Data → Analyze with Pandas → Visualize with Matplotlib
```

---

## 2️⃣ Example

Dataset:

| Month | Sales |
| ----- | ----- |
| Jan   | 100   |
| Feb   | 150   |
| Mar   | 200   |
| Apr   | 180   |

This data is stored in a **Pandas DataFrame**, then plotted using Matplotlib.

---

## 3️⃣ Use Cases

Matplotlib + Pandas is used in:

- Data analytics projects
- Kaggle datasets
- Sales analysis
- Financial data visualization

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import Pandas and Matplotlib.

Step 2
Create or load a DataFrame.

Step 3
Select columns.

Step 4
Plot the data.

---

## 5️⃣ Code Example

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Month": ["Jan","Feb","Mar","Apr"],
    "Sales": [100,150,200,180]
}

df = pd.DataFrame(data)

plt.plot(df["Month"], df["Sales"])

plt.title("Monthly Sales")

plt.show()
```

---

## 6️⃣ Key Points

- Pandas manages **data tables**
- Matplotlib visualizes **DataFrame columns**

---

# 2. Matplotlib + NumPy

## 1️⃣ Simple Explanation

**NumPy** is used for **fast numerical calculations and arrays**.

Matplotlib works very well with **NumPy arrays**.

Many mathematical plots use NumPy to **generate data**.

---

## 2️⃣ Example

Plot a **mathematical function** like:

```text
y = sin(x)
```

---

## 3️⃣ Use Cases

Matplotlib + NumPy is used in:

- Scientific computing
- Mathematical visualization
- Physics simulations
- Machine learning experiments

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create numerical arrays.

Step 2
Compute mathematical values.

Step 3
Plot them.

---

## 5️⃣ Code Example

```python
import numpy as np
import matplotlib.pyplot as plt

x = np.linspace(0,10,100)

y = np.sin(x)

plt.plot(x,y)

plt.title("Sine Wave")

plt.show()
```

---

## Explanation

`np.linspace()` → generates evenly spaced values
`np.sin()` → computes sine values

---

## 6️⃣ Key Points

- NumPy generates **numerical data**
- Matplotlib visualizes **mathematical functions**

---

# 3. Matplotlib + Seaborn

## 1️⃣ Simple Explanation

**Seaborn** is a visualization library built **on top of Matplotlib**.

It makes graphs:

- More attractive
- Easier to create
- Better for statistical visualization

Seaborn automatically uses **Matplotlib internally**.

---

## 2️⃣ Example

Instead of manually styling charts, Seaborn automatically applies **beautiful themes**.

---

## 3️⃣ Use Cases

Seaborn is used for:

- Correlation heatmaps
- Statistical analysis
- Distribution plots
- Machine learning data exploration

---

## 4️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

tips = sns.load_dataset("tips")

sns.scatterplot(x="total_bill", y="tip", data=tips)

plt.show()
```

---

## Explanation

`load_dataset()` → loads sample dataset
`sns.scatterplot()` → creates scatter plot

---

## 5️⃣ Key Points

- Seaborn is built on **Matplotlib**
- Used for **statistical visualization**

---

# 4. Matplotlib in Jupyter Notebook

## 1️⃣ Simple Explanation

**Jupyter Notebook** is a tool used for **interactive data analysis**.

It allows you to:

- Write code
- Display graphs
- Add explanations

All in the same document.

Matplotlib works very well inside Jupyter.

---

## 2️⃣ Important Command

Inside Jupyter, we usually run:

```python
%matplotlib inline
```

This displays plots **inside the notebook**.

---

## 3️⃣ Example Code

```python
%matplotlib inline

import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,15,30]

plt.plot(x,y)

plt.title("Notebook Plot")

plt.show()
```

---

## 4️⃣ Use Cases

Matplotlib in Jupyter is used in:

- Data science notebooks
- Kaggle analysis
- Machine learning experiments
- Teaching and tutorials

---

# Key Points to Remember

- **Pandas + Matplotlib** → visualize datasets
- **NumPy + Matplotlib** → visualize mathematical functions
- **Seaborn + Matplotlib** → advanced statistical visualization
- **Jupyter Notebook** → interactive data analysis environment

Matplotlib acts as the **core visualization engine** for many Python data science tools.

---

✅ You have now completed the **full Matplotlib learning roadmap (14 modules)** from beginner to advanced.

Your syllabus now includes:

- Basic plotting
- Advanced charts
- Styling and customization
- Real-time visualization
- Performance optimization
- 3D visualization
- Data visualization with Pandas and NumPy

---

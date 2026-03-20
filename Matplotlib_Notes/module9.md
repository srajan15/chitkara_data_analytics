# Module 9: Advanced Visualizations (Matplotlib)

**Goal:** Learn advanced charts used in **data analysis, statistics, and machine learning** to better understand **data distribution, relationships, and uncertainty**.

These charts are commonly used during **Exploratory Data Analysis (EDA)**.

---

# 1. Box Plot

## 1️⃣ Simple Explanation

A **Box Plot** shows the **distribution of data** using statistics like:

- Minimum
- Maximum
- Median
- Quartiles
- Outliers

It helps us quickly understand **spread and variation of data**.

Think of it as a **summary of a dataset in one small chart**.

---

## 2️⃣ Example

Suppose we analyze **student exam scores**.

```text
[45, 50, 55, 60, 70, 75, 80, 85]
```

A box plot will show:

- Median score
- Range of scores
- Any unusual values (outliers)

---

## 3️⃣ Use Cases

Box plots are used in:

- Data distribution analysis
- Detecting **outliers**
- Comparing groups
- Statistical analysis

---

## 4️⃣ Step-by-Step Understanding

Step 1
Prepare numeric data.

Step 2
Use `plt.boxplot()`.

Step 3
Display the graph.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

scores = [45,50,55,60,70,75,80,85]

plt.boxplot(scores)

plt.title("Exam Score Distribution")

plt.show()
```

### Explanation

`plt.boxplot()` → Creates a box plot
The box represents **data spread and median**

---

## 6️⃣ Key Points

- Shows **distribution of numerical data**
- Helps identify **outliers**
- Created using `plt.boxplot()`

---

# 2. Violin Plot

## 1️⃣ Simple Explanation

A **Violin Plot** is similar to a box plot but shows **data density**.

It combines:

- Box plot
- Distribution curve

So it gives **more detailed information about data distribution**.

---

## 2️⃣ Example

If student scores cluster around **70–80**, the violin plot will show a **wider shape there**.

---

## 3️⃣ Use Cases

Violin plots are used in:

- Statistical analysis
- Machine learning datasets
- Comparing distributions

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

scores = [45,50,55,60,70,75,80,85]

plt.violinplot(scores)

plt.title("Violin Plot of Scores")

plt.show()
```

---

## 5️⃣ Key Points

- Shows **data density**
- More detailed than box plots
- Created using `plt.violinplot()`

---

# 3. Heatmap (Using Matplotlib)

## 1️⃣ Simple Explanation

A **Heatmap** shows data values using **colors**.

Higher values → darker colors
Lower values → lighter colors

It helps visualize **relationships between variables**.

---

## 2️⃣ Example

Example **correlation matrix**:

|     | A   | B   | C   |
| --- | --- | --- | --- |
| A   | 1   | 0.8 | 0.4 |
| B   | 0.8 | 1   | 0.6 |
| C   | 0.4 | 0.6 | 1   |

A heatmap shows these relationships using colors.

---

## 3️⃣ Use Cases

Heatmaps are used in:

- Correlation analysis
- Machine learning feature analysis
- Data science EDA
- Image processing

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt
import numpy as np

data = np.random.rand(5,5)

plt.imshow(data, cmap="hot")

plt.colorbar()

plt.title("Heatmap")

plt.show()
```

---

## 5️⃣ Explanation

`imshow()` → Displays matrix as image
`cmap` → Controls color scheme

---

# 4. Area Chart

## 1️⃣ Simple Explanation

An **Area Chart** is similar to a **line chart**, but the area under the line is filled with color.

This makes it easier to see **volume or magnitude of change**.

---

## 2️⃣ Example

Tracking **website visitors over time**.

Instead of just a line, the area under the line shows **traffic growth visually**.

---

## 3️⃣ Use Cases

Area charts are used in:

- Website traffic analysis
- Sales growth visualization
- Population growth trends

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,15,30]

plt.fill_between(x, y)

plt.title("Area Chart")

plt.show()
```

---

# 5. Stack Plot

## 1️⃣ Simple Explanation

A **Stack Plot** shows how **multiple variables contribute to a total**.

Each dataset is stacked on top of another.

---

## 2️⃣ Example

Suppose we track **company expenses**:

- Marketing
- Salaries
- Infrastructure

Stack plots show **how each expense contributes to the total cost**.

---

## 3️⃣ Use Cases

Stack plots are used in:

- Budget analysis
- Resource allocation
- Business growth analysis

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]

marketing = [10,15,20,25]
salary = [20,25,30,35]

plt.stackplot(x, marketing, salary)

plt.title("Company Expenses")

plt.show()
```

---

# 6. Error Bars

## 1️⃣ Simple Explanation

**Error bars show uncertainty or variation in data**.

They indicate how much a measurement **may vary from the true value**.

Example:

```text
Average score = 70 ± 5
```

The error bar shows the possible range.

---

## 2️⃣ Example

If experiment results vary slightly each time, error bars show that **uncertainty**.

---

## 3️⃣ Use Cases

Error bars are used in:

- Scientific experiments
- Machine learning model evaluation
- Research studies
- Statistical analysis

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3]
y = [10,20,30]

error = [2,3,4]

plt.errorbar(x, y, yerr=error)

plt.title("Error Bar Example")

plt.show()
```

---

# Key Points to Remember

| Chart       | Purpose                             |
| ----------- | ----------------------------------- |
| Box Plot    | Show data distribution and outliers |
| Violin Plot | Show data density                   |
| Heatmap     | Show relationships using colors     |
| Area Chart  | Show magnitude over time            |
| Stack Plot  | Show cumulative contributions       |
| Error Bars  | Show uncertainty in data            |

---

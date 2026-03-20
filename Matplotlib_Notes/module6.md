# Module 6: Multiple Plots (Subplots)

**Goal:** Learn how to display **multiple charts inside one figure** using Matplotlib.
This is very useful when comparing **different datasets or metrics in the same dashboard**.

---

# 1. `subplot()`

## 1️⃣ Simple Explanation

`subplot()` is used to create **multiple plots inside one figure window**.

Instead of opening **separate windows for each chart**, we can display them **together in a grid layout**.

Think of it like dividing a **page into sections**, where each section contains a graph.

---

## 2️⃣ Example

Imagine a **sales dashboard** showing:

- Sales chart
- Profit chart
- Expense chart

Instead of three separate graphs, we place them **inside one figure**.

---

## 3️⃣ Use Cases

`subplot()` is used in:

- Data analysis dashboards
- Machine learning evaluation graphs
- Comparing multiple datasets
- Business reporting

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create a figure.

Step 2
Divide the figure into **rows and columns**.

Step 3
Select the position for the plot.

Step 4
Draw the graph.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]

sales = [10,20,25,30]
profit = [5,10,15,20]

plt.subplot(1,2,1)
plt.plot(x, sales)
plt.title("Sales")

plt.subplot(1,2,2)
plt.plot(x, profit)
plt.title("Profit")

plt.show()
```

### Code Explanation

```python
plt.subplot(1,2,1)
```

Means:

```
1 row
2 columns
plot number 1
```

```python
plt.subplot(1,2,2)
```

Second plot in the grid.

---

## 6️⃣ Key Points

- `subplot()` divides the figure into a grid
- Syntax:

```python
plt.subplot(rows, columns, position)
```

---

# 2. `subplots()`

## 1️⃣ Simple Explanation

`subplots()` is a **more modern and recommended way** to create multiple plots.

It follows the **Object-Oriented approach**.

Instead of manually selecting positions, it automatically creates **axes objects**.

---

## 2️⃣ Example

Create **two charts side-by-side**.

---

## 3️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots(1,2)

x = [1,2,3]
sales = [10,20,30]
profit = [5,15,25]

ax[0].plot(x, sales)
ax[0].set_title("Sales")

ax[1].plot(x, profit)
ax[1].set_title("Profit")

plt.show()
```

### Code Explanation

```python
fig, ax = plt.subplots(1,2)
```

Creates:

- 1 row
- 2 columns

```python
ax[0]
```

First plot.

```python
ax[1]
```

Second plot.

---

## 4️⃣ Use Cases

`subplots()` is widely used in:

- Data science dashboards
- Machine learning visualization
- Research reports
- Kaggle notebooks

---

# 3. Multiple Graphs in One Figure

## 1️⃣ Simple Explanation

Multiple graphs can be placed inside **one figure** to compare data.

Example:

A company dashboard might include:

- Sales chart
- Profit chart
- Customer growth chart

All inside one figure.

---

## 2️⃣ Example Layout

```
Figure
 ├── Graph 1
 ├── Graph 2
 └── Graph 3
```

---

## 3️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots(2,1)

x = [1,2,3]

sales = [10,20,30]
profit = [5,15,25]

ax[0].plot(x, sales)
ax[0].set_title("Sales")

ax[1].plot(x, profit)
ax[1].set_title("Profit")

plt.show()
```

This creates:

```
2 rows
1 column
```

---

## 4️⃣ Use Cases

Multiple graphs help in:

- Comparative analysis
- Dashboard creation
- Business reporting
- Model performance comparison

---

# 4. Grid Layout

## 1️⃣ Simple Explanation

A **grid layout** organizes plots into rows and columns.

Example:

```
2 x 2 grid
```

This means:

```
Plot1 | Plot2
Plot3 | Plot4
```

---

## 2️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots(2,2)

x = [1,2,3]

ax[0,0].plot(x,[1,2,3])
ax[0,0].set_title("Plot 1")

ax[0,1].plot(x,[3,2,1])
ax[0,1].set_title("Plot 2")

ax[1,0].plot(x,[2,3,1])
ax[1,0].set_title("Plot 3")

ax[1,1].plot(x,[1,3,2])
ax[1,1].set_title("Plot 4")

plt.show()
```

---

## 3️⃣ Layout Visualization

```
+-------+-------+
| Plot1 | Plot2 |
+-------+-------+
| Plot3 | Plot4 |
+-------+-------+
```

---

## 4️⃣ Use Cases

Grid layouts are used in:

- Machine learning evaluation dashboards
- Financial reports
- Research analysis
- Data science presentations

---

# Key Points to Remember

- `subplot()` divides a figure into sections.
- Syntax:

```python
plt.subplot(rows, columns, position)
```

- `subplots()` is the **recommended modern approach**.
- Multiple plots help compare **different datasets**.
- Grid layouts organize plots in **rows and columns**.

---

# Module 3: Working with Figures and Axes (Matplotlib)

**Goal:** Understand how Matplotlib structures plots using **Figure and Axes**, and how to create multiple plots in one figure.

---

# 1. Figure vs Axes

## 1️⃣ Simple Explanation

In Matplotlib, every plot has **two main components**:

- **Figure**
- **Axes**

Think of it like **a page and a chart**.

- **Figure → The entire canvas or page**
- **Axes → The actual chart area where data is plotted**

So:

```
Figure = Whole window
Axes = Individual plot inside the window
```

👉 A single figure can contain **multiple axes (plots)**.

---

## 2️⃣ Example

Imagine a **notebook page**.

- The **page** = Figure
- The **charts drawn on the page** = Axes

Example layout:

```
Figure
 ├── Axes 1 → Sales Chart
 ├── Axes 2 → Profit Chart
 └── Axes 3 → Expense Chart
```

---

## 3️⃣ Use Cases

Understanding Figure and Axes is important for:

- **Professional dashboards**
- **Multiple charts in reports**
- **Data science projects**
- **Machine learning model evaluation plots**

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create a **Figure**.

Step 2
Create one or more **Axes inside the figure**.

Step 3
Plot data on the **Axes**.

Step 4
Display the figure.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots()

x = [1,2,3,4]
y = [10,20,25,30]

ax.plot(x, y)

plt.show()
```

### Code Explanation

```python
fig, ax = plt.subplots()
```

Creates:

- `fig` → Figure
- `ax` → Axes

```python
ax.plot(x,y)
```

Plots the graph on the **axes**.

---

## 6️⃣ Key Points

- **Figure** = Entire drawing area
- **Axes** = Individual plot area
- One figure can have **multiple axes**

---

# 2. Object-Oriented Interface

## 1️⃣ Simple Explanation

Matplotlib has **two ways to create plots**:

1️⃣ **Pyplot Interface** (Simple, beginner)

```
plt.plot()
```

2️⃣ **Object-Oriented Interface** (Professional approach)

```
ax.plot()
```

Data scientists prefer the **Object-Oriented method** because it gives **more control**.

---

## 2️⃣ Example

### Pyplot style

```python
plt.plot(x,y)
```

### Object-oriented style

```python
ax.plot(x,y)
```

---

## 3️⃣ Use Cases

Object-oriented plotting is used in:

- **Data science projects**
- **Machine learning visualizations**
- **Complex dashboards**
- **Multiple subplot layouts**

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create figure and axes.

Step 2
Use axes object to plot data.

Step 3
Customize the plot.

Step 4
Display the figure.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots()

x = [1,2,3,4]
y = [5,10,15,20]

ax.plot(x,y)

ax.set_title("Sales Trend")

plt.show()
```

---

# 3. Creating Figure Manually

## 1️⃣ Simple Explanation

Sometimes we want to **create a figure manually** and then add plots to it.

Matplotlib provides:

```
plt.figure()
```

This creates a **blank figure canvas**.

---

## 2️⃣ Example Code

```python
import matplotlib.pyplot as plt

plt.figure()

x = [1,2,3]
y = [2,4,6]

plt.plot(x,y)

plt.show()
```

---

## 3️⃣ Use Cases

Manual figure creation is useful when:

- Creating **multiple plots**
- Building **custom layouts**
- Adjusting figure properties

---

# 4. Adjusting Figure Size

## 1️⃣ Simple Explanation

Sometimes the graph appears **too small or too large**.

Matplotlib allows us to change the **size of the figure**.

This is useful for:

- Reports
- Presentations
- Dashboards

---

## 2️⃣ Code Example

```python
import matplotlib.pyplot as plt

plt.figure(figsize=(8,5))

x = [1,2,3,4]
y = [10,20,15,25]

plt.plot(x,y)

plt.show()
```

---

## 3️⃣ Explanation

```
figsize = (width, height)
```

Example:

```
(8,5)
```

Width = 8 inches
Height = 5 inches

---

## 4️⃣ Use Cases

Adjusting figure size is used when:

- Exporting charts for **PowerPoint**
- Creating **data dashboards**
- Publishing **research papers**

---

# 5. Multiple Plots in One Figure

## 1️⃣ Simple Explanation

Sometimes we want **multiple graphs in one window**.

Example:

- Sales chart
- Profit chart
- Customer growth chart

Matplotlib allows this using **subplots**.

---

## 2️⃣ Example Layout

```
Figure
 ├── Plot 1
 ├── Plot 2
 └── Plot 3
```

---

## 3️⃣ Code Example

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots(1,2)

x = [1,2,3]
y1 = [2,4,6]
y2 = [1,3,5]

ax[0].plot(x,y1)
ax[0].set_title("Sales")

ax[1].plot(x,y2)
ax[1].set_title("Profit")

plt.show()
```

---

## 4️⃣ Explanation

```
plt.subplots(1,2)
```

Creates:

- **1 row**
- **2 plots**

```
ax[0]
```

First graph.

```
ax[1]
```

Second graph.

---

## 5️⃣ Use Cases

Multiple plots are used in:

- **Data science reports**
- **Machine learning evaluation**
- **Business dashboards**
- **Comparative analysis**

Example:

Compare:

- Training accuracy
- Validation accuracy

---

# Key Points to Remember

- **Figure** = Entire canvas
- **Axes** = Individual plotting area
- Object-oriented plotting uses **ax.plot()**
- `plt.figure()` creates a blank figure
- `figsize` controls chart size
- `plt.subplots()` helps create **multiple plots**

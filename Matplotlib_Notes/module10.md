# Module 10: 3D Visualization (Matplotlib)

**Goal:** Learn how to visualize data in **three dimensions (3D)** using Matplotlib.

Normally, most graphs use **two axes**:

- X-axis
- Y-axis

But in **3D visualization**, we use:

- **X-axis**
- **Y-axis**
- **Z-axis**

This allows us to analyze **more complex relationships between variables**.

Example:

```text
Student Study Hours (X)
Sleep Hours (Y)
Exam Score (Z)
```

---

# 1. 3D Plots

## 1️⃣ Simple Explanation

A **3D plot** allows us to visualize data using **three variables** instead of two.

This helps analyze **relationships between three dimensions**.

Matplotlib provides a toolkit called:

```text
mplot3d
```

This module allows creation of **3D graphs**.

---

## 2️⃣ Example

Suppose we analyze:

| X   | Y   | Z   |
| --- | --- | --- |
| 1   | 2   | 3   |
| 2   | 3   | 4   |
| 3   | 4   | 5   |

A 3D plot shows how **Z changes with X and Y**.

---

## 3️⃣ Use Cases

3D visualization is used in:

- Scientific simulations
- Machine learning feature visualization
- Geographic data
- Physics experiments
- Engineering models

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import Matplotlib.

Step 2
Import the **3D toolkit**.

Step 3
Create a figure.

Step 4
Create a 3D axis.

Step 5
Plot the data.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure()

ax = fig.add_subplot(111, projection='3d')

x = [1,2,3,4]
y = [2,3,4,5]
z = [5,6,7,8]

ax.plot(x,y,z)

plt.show()
```

### Explanation

`projection='3d'` → enables 3D plotting
`ax.plot()` → creates 3D line plot

---

## 6️⃣ Key Points

- 3D plots use **three axes**
- Enabled using **mplot3d**
- Useful for **complex data relationships**

---

# 2. 3D Scatter Plot

## 1️⃣ Simple Explanation

A **3D Scatter Plot** shows **points in three-dimensional space**.

Each point has coordinates:

```text
(x, y, z)
```

This helps visualize how **three variables interact**.

---

## 2️⃣ Example

Example dataset:

| Age | Study Hours | Score |
| --- | ----------- | ----- |
| 18  | 2           | 50    |
| 19  | 4           | 65    |
| 20  | 6           | 80    |

A 3D scatter plot shows the **relationship between all three variables**.

---

## 3️⃣ Use Cases

3D scatter plots are used in:

- Machine learning feature analysis
- Data clustering visualization
- Scientific research
- Sensor data analysis

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure()

ax = fig.add_subplot(111, projection='3d')

x = [1,2,3,4]
y = [4,5,6,7]
z = [7,8,9,10]

ax.scatter(x,y,z)

plt.show()
```

### Explanation

`ax.scatter()` → creates scatter points in 3D space.

---

## 5️⃣ Key Points

- Shows **points instead of lines**
- Used for **multivariable relationships**

---

# 3. 3D Surface Plot

## 1️⃣ Simple Explanation

A **3D Surface Plot** creates a **smooth surface across a grid of values**.

Instead of points or lines, it creates a **continuous surface**.

It helps visualize **mathematical functions or terrain-like data**.

---

## 2️⃣ Example

Imagine a **mountain landscape**.

The surface plot shows:

- height
- slope
- valleys

---

## 3️⃣ Use Cases

Surface plots are used in:

- Physics simulations
- Machine learning loss functions
- Geographic terrain modeling
- Mathematical functions

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure()

ax = fig.add_subplot(111, projection='3d')

x = np.linspace(-5,5,50)
y = np.linspace(-5,5,50)

X, Y = np.meshgrid(x,y)

Z = np.sin(np.sqrt(X**2 + Y**2))

ax.plot_surface(X, Y, Z)

plt.show()
```

---

## Explanation

`meshgrid()` → creates grid of X and Y values
`plot_surface()` → draws the 3D surface.

---

# Key Points to Remember

- 3D visualization uses **X, Y, and Z axes**.
- Requires the **mplot3d toolkit**.
- Types of 3D plots include:

| Plot Type    | Purpose                  |
| ------------ | ------------------------ |
| 3D Plot      | Line plot in 3D space    |
| 3D Scatter   | Shows points in 3D       |
| Surface Plot | Shows continuous surface |

---

# Module 13: Performance Optimization (Matplotlib)

**Goal:** Learn how to handle **large datasets and improve plotting performance** so your visualizations remain **fast and memory efficient**.

When working with **real-world datasets (millions of rows)**, plotting everything directly can make the program **slow or crash**.
Performance optimization helps us **plot efficiently without slowing down the system**.

---

# 1. Handling Large Datasets

## 1️⃣ Simple Explanation

Large datasets can contain **thousands or millions of rows**.

If we try to plot every single point, the graph can become:

- Slow
- Hard to read
- Memory intensive

So we often **reduce the amount of data before plotting**.

This is called **data reduction or sampling**.

---

## 2️⃣ Example

Suppose a dataset contains **1,000,000 temperature records**.

Plotting all points:

```text
Too slow and cluttered
```

Instead we can plot **every 100th value**.

```text
Much faster and still meaningful
```

---

## 3️⃣ Use Cases

Handling large datasets is important in:

- Stock market data visualization
- IoT sensor data monitoring
- Weather data analysis
- Web traffic analytics

---

## 4️⃣ Step-by-Step Understanding

Step 1
Load the dataset.

Step 2
Reduce dataset size using sampling.

Step 3
Plot the reduced dataset.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt
import numpy as np

data = np.random.rand(1000000)

sampled_data = data[::100]

plt.plot(sampled_data)

plt.title("Sampled Data Plot")

plt.show()
```

### Explanation

`data[::100]` → selects every **100th data point**.

---

## 6️⃣ Key Points

- Large datasets can slow down visualization.
- Use **sampling or aggregation** to reduce size.

---

# 2. Efficient Plotting

## 1️⃣ Simple Explanation

Efficient plotting means **drawing graphs in a way that minimizes computation time**.

Some techniques include:

- Using **vectorized operations**
- Avoiding repeated redraws
- Updating only necessary parts of the graph

---

## 2️⃣ Example

Bad approach:

```text
Plotting inside loops many times
```

Better approach:

```text
Prepare data first → plot once
```

---

## 3️⃣ Use Cases

Efficient plotting is useful in:

- Real-time dashboards
- Streaming data visualization
- Machine learning training plots

---

## 4️⃣ Code Example

### Inefficient

```python
for i in range(1000):
    plt.plot(i, i*i)
```

### Efficient

```python
import numpy as np
import matplotlib.pyplot as plt

x = np.arange(1000)
y = x**2

plt.plot(x,y)

plt.show()
```

---

## 5️⃣ Key Points

- Avoid unnecessary loops
- Use **NumPy vectorized operations**
- Plot data in **one operation**

---

# 3. Memory Optimization

## 1️⃣ Simple Explanation

When working with many plots or large datasets, memory usage increases.

Memory optimization helps prevent:

- Program crashes
- Slow performance
- System freezing

---

## 2️⃣ Techniques

Some important techniques include:

1. Closing unused figures
2. Clearing plots
3. Limiting stored data

---

## 3️⃣ Example

When generating many plots in a loop:

```python
plt.close()
```

This frees memory.

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

for i in range(5):

    plt.figure()

    plt.plot([1,2,3],[4,5,6])

    plt.title("Plot Example")

    plt.savefig(f"plot_{i}.png")

    plt.close()
```

---

## Explanation

`plt.close()` → releases memory after saving the plot.

Without it, many plots remain in memory.

---

## 5️⃣ Use Cases

Memory optimization is important for:

- Batch plot generation
- Automated reports
- Data science pipelines
- Real-time dashboards

---

# Key Points to Remember

- Large datasets should be **sampled before plotting**.
- Efficient plotting avoids **repeated loops and redraws**.
- Use **NumPy operations for speed**.
- Use `plt.close()` to free memory.
- Performance optimization is important for **large-scale data visualization**.

---

✅ You have now completed **the full Matplotlib learning path from beginner to advanced**.

Your syllabus now covers:

- Basic plotting
- Advanced charts
- Styling and customization
- Real-time visualization
- Performance optimization
- Exporting plots
- 3D visualization

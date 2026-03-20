# Matplotlib Syllabus (Beginner → Advanced)

## Module 1: Introduction to Data Visualization

**Goal:** Understand why visualization is important.

Topics:

- What is Data Visualization
- Why visualization is important in Data Analytics
- Types of charts
- Introduction to **Matplotlib**
- Matplotlib vs Seaborn vs Plotly
- Installing Matplotlib
- Basic structure of a Matplotlib program

Example:

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,25,30]

plt.plot(x,y)
plt.show()
```

---

# Module 2: Basic Plotting

Topics:

- Line Plot
- Plotting multiple lines
- Adding markers
- Changing line style
- Adding labels
- Adding title
- Grid in plot

Example:

```python
plt.plot(x,y, marker='o', linestyle='--')
plt.title("Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.grid(True)
plt.show()
```

---

# Module 3: Working with Figures and Axes

Topics:

- Figure vs Axes
- Object-Oriented Interface
- Creating figure manually
- Adjusting figure size
- Multiple plots in one figure

Example:

```python
fig, ax = plt.subplots()

ax.plot(x,y)
ax.set_title("Sales Data")

plt.show()
```

---

# Module 4: Important Chart Types

### 1 Bar Chart

### 2 Horizontal Bar Chart

### 3 Pie Chart

### 4 Scatter Plot

### 5 Histogram

Example (Bar chart):

```python
categories = ['A','B','C']
values = [10,20,15]

plt.bar(categories,values)
plt.show()
```

---

# Module 5: Customization of Plots

Topics:

- Colors
- Line width
- Markers
- Transparency (alpha)
- Legends
- Annotations
- Text on plot

Example:

```python
plt.plot(x,y,color='red',linewidth=3,label="Sales")
plt.legend()
```

---

# Module 6: Multiple Plots (Subplots)

Topics:

- subplot()
- subplots()
- Multiple graphs in one figure
- Grid layout

Example:

```python
fig, ax = plt.subplots(2,2)
```

---

# Module 7: Working with Real Data

Topics:

- Plotting data from **Pandas DataFrame**
- Plotting CSV data
- Time-series visualization
- Visualization of missing values

Example:

```python
import pandas as pd

df = pd.read_csv("data.csv")

plt.plot(df['date'], df['sales'])
```

---

# Module 8: Advanced Plot Styling

Topics:

- Matplotlib styles
- Custom styles
- Themes
- Tick formatting
- Axis formatting
- Rotating labels

Example:

```python
plt.style.use("ggplot")
```

---

# Module 9: Advanced Visualizations

Topics:

- Box Plot
- Violin Plot
- Heatmap (with matplotlib)
- Area chart
- Stack plot
- Error bars

Example:

```python
plt.boxplot(data)
```

---

# Module 10: 3D Visualization

Topics:

- 3D plots
- 3D scatter
- 3D surface plot

Example:

```python
from mpl_toolkits.mplot3d import Axes3D
```

---

# Module 11: Real-Time Visualization

Very useful for **your weather project**

Topics:

- Updating plots in real time
- Animation
- Live data visualization
- Streaming data plots

Example:

```python
from matplotlib.animation import FuncAnimation
```

---

# Module 12: Exporting and Saving Plots

Topics:

- Saving plots as
  - PNG
  - JPG
  - PDF
  - SVG

- High resolution export

Example:

```python
plt.savefig("chart.png")
```

---

# Module 13: Performance Optimization

Topics:

- Handling large datasets
- Efficient plotting
- Memory optimization

---

# Module 14: Matplotlib with Other Libraries

Topics:

- Matplotlib + Pandas
- Matplotlib + NumPy
- Matplotlib + Seaborn
- Matplotlib in Jupyter Notebook

---

# Module 15: Real Projects

### Project 1

Sales dashboard

### Project 2

Weather data visualization (real-time)

### Project 3

Stock market visualization

### Project 4

COVID data visualization

---

# Skills You Will Gain

After completing this syllabus you will be able to:

✔ Create professional charts
✔ Visualize real datasets
✔ Build dashboards
✔ Create real-time graphs
✔ Use Matplotlib with Pandas
✔ Build analytics reports

---

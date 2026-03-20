## Module 2: Seaborn Styling & Themes

### Concept Explanation (Very Simple Language)

When we create graphs using basic libraries, they often look **plain and simple**.
One of the biggest advantages of **Seaborn** is that it automatically makes graphs **more attractive and professional**.

Seaborn provides **built-in themes and styles** that control things like:

- Background color
- Grid lines
- Font size
- Spacing of the graph

This helps analysts create **clean and readable visualizations**.

Main concepts in this module:

1. **Seaborn Themes**
   A theme controls the **overall appearance** of plots.

2. **`sns.set_theme()`**
   Used to apply a **complete theme** including style and context.

3. **`sns.set_style()`**
   Used to change **only the background style**.

4. **Available Styles**

- `darkgrid`
- `whitegrid`
- `dark`
- `white`
- `ticks`

Each style changes how the plot background looks.

Example idea:

| Style     | Description                      |
| --------- | -------------------------------- |
| darkgrid  | Dark background with grid lines  |
| whitegrid | White background with grid lines |
| dark      | Dark background without grid     |
| white     | Plain white background           |
| ticks     | White background with axis ticks |

5. **Context Settings**

Context controls **size of plot elements** like:

- text
- labels
- lines

Contexts available:

- `paper`
- `notebook`
- `talk`
- `poster`

Example:

- **paper → small plots**
- **poster → large presentation plots**

6. **Figure Size Control**

We can control the **size of the graph** using Matplotlib.

Example:

```python
plt.figure(figsize=(8,5))
```

This sets the **width and height of the plot**.

---

# Why This Concept Is Important

In real data analysis:

- Graphs are used in **reports**
- Graphs are used in **presentations**
- Graphs are used in **dashboards**

If a graph is **hard to read**, the analysis becomes difficult.

Seaborn themes help to:

- Improve **visual clarity**
- Create **professional plots**
- Maintain **consistent design**

For example:

A company dashboard might use **whitegrid style** because it makes values easier to read.

---

# Syntax Explanation

### Apply Theme

```python
sns.set_theme()
```

### Change Style

```python
sns.set_style("whitegrid")
```

### Set Context

```python
sns.set_context("talk")
```

### Control Figure Size

```python
plt.figure(figsize=(8,5))
```

---

# Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
tips = sns.load_dataset("tips")

# Apply seaborn theme
sns.set_theme(style="whitegrid")

# Set figure size
plt.figure(figsize=(8,5))

# Create plot
sns.scatterplot(data=tips, x="total_bill", y="tip")

# Show plot
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

Imports **Matplotlib** to display graphs.

---

### Line 5

```python
tips = sns.load_dataset("tips")
```

Loads the **tips dataset**.

---

### Line 8

```python
sns.set_theme(style="whitegrid")
```

Applies the **whitegrid theme**.

This creates:

- White background
- Grid lines for easy reading

---

### Line 11

```python
plt.figure(figsize=(8,5))
```

Sets the **size of the plot**.

- Width = 8
- Height = 5

---

### Line 14

```python
sns.scatterplot(data=tips, x="total_bill", y="tip")
```

Creates a scatter plot.

---

### Line 17

```python
plt.show()
```

Displays the plot.

---

# Output Explanation

The graph will show:

- **X-axis → total bill**
- **Y-axis → tip**

Because we used **whitegrid style**, the plot will have:

- White background
- Grid lines

This makes it **easier to compare values**.

---

# Real-Life Use Case

Imagine you are creating a **Power BI style report using Python**.

A company analyst might:

- Use **whitegrid style** for dashboards
- Use **dark theme** for presentations
- Use **poster context** for conference slides

Example industries:

- Finance dashboards
- Marketing analysis
- Customer behavior reports

---

# Small Practice Task

### Task 1

Load the **Titanic dataset**

```python
titanic = sns.load_dataset("titanic")
```

---

### Task 2

Apply different styles:

```python
sns.set_style("darkgrid")
sns.set_style("white")
sns.set_style("ticks")
```

Observe how the graph appearance changes.

---

### Task 3

Create a scatter plot:

```
fare vs age
```

---

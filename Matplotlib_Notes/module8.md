# Module 8: Advanced Plot Styling (Matplotlib)

**Goal:** Learn how to make your charts **look professional and readable** by applying styles, themes, and formatting axes and labels.

In real **data analytics dashboards and reports**, styling is very important so that charts look **clean, professional, and easy to read**.

---

# 1. Matplotlib Styles

## 1️⃣ Simple Explanation

Matplotlib provides **predefined styles** that automatically change the **appearance of plots**.

These styles control things like:

- Colors
- Background
- Grid lines
- Font style

Instead of manually changing everything, we can apply **one style** and the graph appearance changes instantly.

---

## 2️⃣ Example

Without style → plain chart

With style → modern-looking chart.

Example styles include:

- `ggplot`
- `seaborn`
- `dark_background`
- `fivethirtyeight`

---

## 3️⃣ Use Cases

Matplotlib styles are used in:

- Data science reports
- Kaggle notebooks
- Business dashboards
- Presentation graphs

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import matplotlib.

Step 2
Apply a style.

Step 3
Create the plot.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

plt.style.use("ggplot")

x = [1,2,3,4]
y = [10,20,15,30]

plt.plot(x,y)

plt.title("Sales Trend")

plt.show()
```

### Explanation

```python
plt.style.use("ggplot")
```

Applies the **ggplot theme** to the entire chart.

---

## 6️⃣ Key Points

- Styles change the **overall appearance** of plots
- Applied using:

```python
plt.style.use()
```

---

# 2. Custom Styles

## 1️⃣ Simple Explanation

Sometimes predefined styles are not enough.
We may want to **customize colors, fonts, and grid style manually**.

This is called **custom styling**.

---

## 2️⃣ Example

Customizing:

- background color
- line color
- grid style

---

## 3️⃣ Code Example

```python
plt.plot(x, y, color="purple", linewidth=3)

plt.grid(True)
plt.title("Customized Plot")
```

---

## 4️⃣ Use Cases

Custom styles are used when:

- Creating **brand-specific dashboards**
- Designing **presentation graphics**
- Building **data visualization tools**

---

# 3. Themes

## 1️⃣ Simple Explanation

A **theme** controls the **overall look of the chart**.

Themes combine:

- Colors
- Background
- Fonts
- Grid styles

Example themes:

| Theme           | Appearance               |
| --------------- | ------------------------ |
| ggplot          | R-style visualization    |
| dark_background | Dark mode charts         |
| seaborn         | Modern statistical style |

---

## 2️⃣ Code Example

```python
plt.style.use("dark_background")
```

This creates **dark mode charts**.

---

## 3️⃣ Use Cases

Themes are useful for:

- Presentation slides
- Dark mode dashboards
- Data science notebooks

---

# 4. Tick Formatting

## 1️⃣ Simple Explanation

**Ticks** are the numbers shown on the **x-axis and y-axis**.

Example:

```
0 1 2 3 4
```

Sometimes we want to **customize tick positions or labels**.

---

## 2️⃣ Example

Instead of numeric values:

```
1 2 3 4
```

We may want:

```
Jan Feb Mar Apr
```

---

## 3️⃣ Code Example

```python
plt.xticks([1,2,3,4], ["Jan","Feb","Mar","Apr"])
```

---

## 4️⃣ Use Cases

Tick formatting is used in:

- Time-series visualization
- Financial charts
- Sales reports

---

# 5. Axis Formatting

## 1️⃣ Simple Explanation

Axis formatting allows us to **customize axis labels, limits, and scale**.

This improves the **readability of graphs**.

---

## 2️⃣ Example

We can control:

- Axis labels
- Axis limits
- Scale

---

## 3️⃣ Code Example

```python
plt.xlabel("Month")
plt.ylabel("Sales")

plt.xlim(1,4)
plt.ylim(0,40)
```

### Explanation

`xlim()` → controls x-axis range
`ylim()` → controls y-axis range

---

## 4️⃣ Use Cases

Axis formatting is used in:

- Financial analysis
- Data science dashboards
- Scientific research graphs

---

# 6. Rotating Labels

## 1️⃣ Simple Explanation

Sometimes labels on the x-axis **overlap or become difficult to read**.

Rotating labels makes them **clear and readable**.

Example:

```
Jan Feb Mar Apr
```

Can become crowded. Rotating solves this.

---

## 2️⃣ Code Example

```python
plt.xticks(rotation=45)
```

---

## 3️⃣ Explanation

`rotation=45` → rotates labels by **45 degrees**.

Example rotations:

- `45`
- `90`
- `30`

---

## 4️⃣ Use Cases

Rotating labels is useful when:

- Labels are **long text**
- Working with **dates**
- Visualizing **large datasets**

---

# Full Example (Combining Styling)

```python
import matplotlib.pyplot as plt

plt.style.use("ggplot")

months = ["Jan","Feb","Mar","Apr"]
sales = [100,150,200,180]

plt.plot(months, sales, color="blue", linewidth=3, marker="o")

plt.title("Monthly Sales")
plt.xlabel("Month")
plt.ylabel("Revenue")

plt.xticks(rotation=45)

plt.grid(True)

plt.show()
```

---

# Key Points to Remember

- **Matplotlib styles** change the overall chart appearance.
- Use `plt.style.use()` to apply themes.
- **Custom styles** allow manual control of colors and fonts.
- **Tick formatting** controls axis tick labels.
- **Axis formatting** controls axis range and labels.
- **Rotating labels** improves readability when labels overlap.

---

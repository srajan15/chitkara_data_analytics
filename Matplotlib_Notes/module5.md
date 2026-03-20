# Module 5: Customization of Plots (Matplotlib)

**Goal:** Learn how to make plots **more readable, attractive, and professional** by customizing colors, lines, markers, legends, and text.

---

# 1. Colors

## 1️⃣ Simple Explanation

Colors help **differentiate multiple data lines or bars** in a graph.

Without colors, graphs can look confusing when multiple datasets are plotted.

Matplotlib allows you to change the **color of lines, markers, bars, and other elements**.

---

## 2️⃣ Example

Suppose we are comparing **two products' sales**.

If both lines are the same color, it becomes difficult to identify them.

Using **different colors** makes the graph easier to understand.

---

## 3️⃣ Use Cases

Colors are used in:

- Business dashboards
- Data science reports
- Comparing multiple datasets
- Highlighting important trends

---

## 4️⃣ Step-by-Step Understanding

Step 1
Create your plot.

Step 2
Use the `color` parameter.

Step 3
Choose a color name or code.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,15,30]

plt.plot(x, y, color="red")

plt.title("Sales Trend")
plt.show()
```

### Explanation

`color="red"` → changes the line color.

Common colors:

- `"red"`
- `"blue"`
- `"green"`
- `"black"`
- `"orange"`

---

## 6️⃣ Key Points

- Colors improve **visual clarity**
- Use the parameter `color=`
- Supports **color names and hex codes**

---

# 2. Line Width

## 1️⃣ Simple Explanation

**Line width** controls how **thick or thin the line appears** in a plot.

Thicker lines are useful when presenting graphs in **presentations or reports**.

---

## 2️⃣ Example

Default lines may appear thin. Increasing line width makes the graph more visible.

---

## 3️⃣ Step-by-Step Understanding

Step 1
Create a plot.

Step 2
Use `linewidth`.

Step 3
Set a numeric value.

---

## 4️⃣ Code Example

```python
plt.plot(x, y, linewidth=3)
```

### Explanation

`linewidth=3` → makes the line thicker.

---

## 5️⃣ Key Points

- Default width is small
- `linewidth` increases thickness

---

# 3. Markers

## 1️⃣ Simple Explanation

Markers highlight **individual data points on a line**.

They make it easier to see **exact values in the graph**.

---

## 2️⃣ Example

Without markers → only a line

With markers → visible points

---

## 3️⃣ Code Example

```python
plt.plot(x, y, marker="o")
```

Common markers:

| Marker | Meaning  |
| ------ | -------- |
| `o`    | Circle   |
| `s`    | Square   |
| `^`    | Triangle |
| `*`    | Star     |

---

## 4️⃣ Use Cases

Markers are used when:

- Showing **exact data points**
- Presenting **small datasets**
- Highlighting important points

---

# 4. Transparency (Alpha)

## 1️⃣ Simple Explanation

Transparency controls **how transparent or solid an element appears**.

It helps when **multiple elements overlap**.

The parameter used is **alpha**.

Value range:

```
0 → fully transparent
1 → fully solid
```

---

## 2️⃣ Example

If two plots overlap, transparency allows us to **see both lines clearly**.

---

## 3️⃣ Code Example

```python
plt.plot(x, y, alpha=0.5)
```

### Explanation

`alpha=0.5` → makes the line semi-transparent.

---

## 4️⃣ Use Cases

Transparency is useful in:

- Scatter plots with many points
- Overlapping graphs
- Data density visualization

---

# 5. Legends

## 1️⃣ Simple Explanation

A **legend explains what each line or color represents** in the graph.

Without legends, viewers may not understand the meaning of the lines.

---

## 2️⃣ Example

Two lines:

- Product A sales
- Product B sales

The legend shows which line represents which product.

---

## 3️⃣ Code Example

```python
plt.plot(x, y, label="Product A")
plt.legend()
```

### Explanation

`label="Product A"` → assigns label
`plt.legend()` → displays legend box

---

## 4️⃣ Use Cases

Legends are used in:

- Comparison charts
- Reports
- Dashboards

---

# 6. Annotations

## 1️⃣ Simple Explanation

Annotations allow us to **highlight specific points on a graph**.

They add **notes or explanations directly on the chart**.

---

## 2️⃣ Example

Highlight the **highest sales value** on a graph.

Example text:

```
Peak Sales
```

---

## 3️⃣ Code Example

```python
plt.annotate("Peak Sales", xy=(4,30))
```

### Explanation

`xy=(4,30)` → location where the text appears.

---

## 4️⃣ Use Cases

Annotations are used in:

- Business reports
- Data storytelling
- Highlighting important insights

---

# 7. Text on Plot

## 1️⃣ Simple Explanation

Matplotlib allows adding **custom text anywhere on a graph**.

This is useful for **extra explanations or notes**.

---

## 2️⃣ Example

Add a note:

```
Sales increased here
```

---

## 3️⃣ Code Example

```python
plt.text(2, 20, "Sales Increase")
```

### Explanation

`2,20` → position of text
`"Sales Increase"` → message displayed

---

# 8. Full Example (Combining Everything)

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
sales = [10,20,15,30]

plt.plot(x, sales,
         color="blue",
         linewidth=3,
         marker="o",
         alpha=0.8,
         label="Sales")

plt.title("Monthly Sales")
plt.xlabel("Month")
plt.ylabel("Revenue")

plt.annotate("Highest Sales", xy=(4,30))
plt.text(2,15,"Mid Growth")

plt.legend()

plt.show()
```

---

# Key Points to Remember

- **Colors** help distinguish data.
- **Line width** controls line thickness.
- **Markers** highlight data points.
- **Alpha** controls transparency.
- **Legends** explain lines or categories.
- **Annotations** highlight important points.
- **Text** adds explanations inside the plot.

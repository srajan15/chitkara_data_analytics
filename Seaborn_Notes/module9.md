## Module 9: Color Palettes

### 1️⃣ Module Title

**Color Palettes in Seaborn**

---

# 2️⃣ Concept Explanation (Very Simple Language)

In data visualization, **colors are very important** because they help people **understand data quickly**.

Imagine a graph without colors.
It would be **hard to distinguish categories or patterns**.

Seaborn provides **built-in color palettes** that make visualizations:

- More **clear**
- More **professional**
- Easier to **interpret**

A **color palette** is simply a **collection of colors used in a graph**.

Example:

If we plot **sales by region**, each region can have a **different color**.

```text
North  → Blue
South  → Red
East   → Green
West   → Orange
```

This helps viewers quickly **identify categories**.

---

# Types of Color Palettes in Seaborn

Seaborn mainly provides **three types of palettes**.

---

## 1️⃣ Categorical Palettes

Used when data contains **categories**.

Example:

```text
Gender
Region
Department
Product Type
```

Examples of categorical palettes:

- deep
- muted
- bright
- pastel
- dark
- colorblind

Example usage:

```python
sns.set_palette("deep")
```

---

## 2️⃣ Sequential Palettes

Used when data values **increase gradually**.

Example:

```text
Low → Medium → High
```

Sequential palettes show **gradual color change**.

Example use cases:

- Temperature
- Population
- Income levels

Example palettes:

- Blues
- Greens
- Oranges
- Purples

Example usage:

```python
sns.color_palette("Blues")
```

---

## 3️⃣ Diverging Palettes

Used when data has **two opposite directions**.

Example:

```text
Negative → Zero → Positive
```

Example use cases:

- Profit vs Loss
- Temperature deviations
- Correlation values

Common diverging palette:

```text
coolwarm
```

---

# 3️⃣ Why This Concept Is Important

Color palettes improve **data readability**.

They help analysts:

✔ Highlight **important patterns**
✔ Separate **categories clearly**
✔ Improve **dashboard design**
✔ Make graphs **presentation-ready**

Example:

In a **correlation heatmap**, colors quickly show:

```text
Red → strong correlation
Blue → weak correlation
```

This allows analysts to **identify patterns instantly**.

---

# 4️⃣ Syntax Explanation

### Set Default Palette

```python
sns.set_palette("deep")
```

---

### View Color Palette

```python
sns.color_palette()
```

---

### Custom Palette

```python
sns.color_palette("Blues")
```

---

### Use Palette in Plot

```python
sns.barplot(data=df, x="category", y="value", palette="Set2")
```

---

# 5️⃣ Code Example

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
tips = sns.load_dataset("tips")

# Set palette
sns.set_palette("Set2")

# Create barplot
sns.barplot(data=tips, x="day", y="total_bill")

plt.show()
```

---

# 6️⃣ Code Breakdown

### Line 1

```python
import seaborn as sns
```

Imports **Seaborn library**.

---

### Line 2

```python
import matplotlib.pyplot as plt
```

Imports **Matplotlib** for displaying plots.

---

### Line 5

```python
tips = sns.load_dataset("tips")
```

Loads the **tips dataset**.

---

### Line 8

```python
sns.set_palette("Set2")
```

Applies a **color palette** to the plot.

This changes the **color style of the graph**.

---

### Line 11

```python
sns.barplot(data=tips, x="day", y="total_bill")
```

Creates a **bar plot showing total bill by day**.

Each bar will have **different colors from the palette**.

---

### Line 13

```python
plt.show()
```

Displays the graph.

---

# 7️⃣ Output Explanation

The output graph will show:

```text
X-axis → Day
Y-axis → Average Total Bill
```

Bars will have **different colors** based on the selected palette.

Example colors:

```text
Blue
Green
Orange
Purple
```

This makes the chart **more readable and visually appealing**.

---

# 8️⃣ Real-Life Use Case

Color palettes are very important in **professional dashboards**.

### Business Dashboards

```text
Sales by Region
```

Different colors represent **different regions**.

---

### Finance

```text
Profit vs Loss
```

Green → Profit
Red → Loss

---

### Healthcare

```text
Disease severity levels
```

Light color → mild
Dark color → severe

---

### Data Science Reports

Colors help highlight **important patterns in data**.

---

# 9️⃣ Small Practice Task

### Task 1

Load tips dataset

```python
tips = sns.load_dataset("tips")
```

---

### Task 2

Apply palette

```python
sns.set_palette("pastel")
```

---

### Task 3

Create barplot

```python
sns.barplot(data=tips, x="day", y="total_bill")
```

---

### Task 4

Try different palettes:

```python
sns.set_palette("bright")
sns.set_palette("muted")
sns.set_palette("colorblind")
```

Observe how colors change.

---

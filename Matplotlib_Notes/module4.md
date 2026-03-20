# Module 4: Important Chart Types (Matplotlib)

**Goal:** Learn the most commonly used chart types for analyzing and presenting data.

---

# 1. Bar Chart

## 1️⃣ Simple Explanation

A **Bar Chart** is used to **compare values between different categories**.

It displays **rectangular bars**, where the height of the bar represents the value.

👉 Taller bar = Higher value

Bar charts are very useful when comparing **different groups**.

---

## 2️⃣ Example

Suppose we want to compare **sales of different products**.

| Product | Sales |
| ------- | ----- |
| Laptop  | 50    |
| Mobile  | 80    |
| Tablet  | 30    |

A bar chart helps easily see that **Mobile has the highest sales**.

---

## 3️⃣ Use Cases

Bar charts are used in:

- Product sales comparison
- Student marks comparison
- Survey results
- Business performance analysis

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import Matplotlib.

Step 2
Create categories (x-axis).

Step 3
Create values (y-axis).

Step 4
Use `plt.bar()` to create the chart.

Step 5
Display using `plt.show()`.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

products = ["Laptop", "Mobile", "Tablet"]
sales = [50, 80, 30]

plt.bar(products, sales)

plt.title("Product Sales")
plt.xlabel("Products")
plt.ylabel("Sales")

plt.show()
```

### Code Explanation

`plt.bar()` → Creates bar chart
`plt.xlabel()` → Label for x-axis
`plt.ylabel()` → Label for y-axis
`plt.title()` → Adds chart title

---

## 6️⃣ Key Points

- Used to **compare categories**
- Created using `plt.bar()`
- X-axis = categories
- Y-axis = values

---

# 2. Horizontal Bar Chart

## 1️⃣ Simple Explanation

A **Horizontal Bar Chart** is the same as a bar chart but the bars are **horizontal instead of vertical**.

It is useful when **category names are long**.

---

## 2️⃣ Example

Example dataset:

| Country | Population |
| ------- | ---------- |
| India   | 1400       |
| China   | 1420       |
| USA     | 330        |

A horizontal chart makes labels easier to read.

---

## 3️⃣ Use Cases

Horizontal bar charts are used in:

- Ranking charts
- Survey results
- Population comparisons
- Top-10 lists

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

countries = ["India", "China", "USA"]
population = [1400, 1420, 330]

plt.barh(countries, population)

plt.title("Country Population")

plt.show()
```

---

## 5️⃣ Key Points

- Created using `plt.barh()`
- Bars go **left → right**
- Useful when labels are long

---

# 3. Pie Chart

## 1️⃣ Simple Explanation

A **Pie Chart** shows **percentage distribution of data**.

The circle is divided into **slices**, where each slice represents a category.

👉 The bigger the slice, the bigger the percentage.

---

## 2️⃣ Example

Market share of companies:

| Company | Market Share |
| ------- | ------------ |
| Apple   | 40%          |
| Samsung | 35%          |
| Xiaomi  | 25%          |

The pie chart visually shows which company dominates the market.

---

## 3️⃣ Use Cases

Pie charts are used in:

- Market share analysis
- Budget distribution
- Survey results
- Population percentage

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

labels = ["Apple", "Samsung", "Xiaomi"]
share = [40, 35, 25]

plt.pie(share, labels=labels)

plt.title("Mobile Market Share")

plt.show()
```

---

## 5️⃣ Key Points

- Shows **percentage distribution**
- Created using `plt.pie()`
- Best when categories are **small in number**

---

# 4. Scatter Plot

## 1️⃣ Simple Explanation

A **Scatter Plot** shows the **relationship between two variables**.

Instead of lines, it displays **individual data points**.

It helps identify:

- Patterns
- Correlations
- Trends

---

## 2️⃣ Example

Suppose we analyze:

| Hours Studied | Exam Score |
| ------------- | ---------- |
| 2             | 50         |
| 4             | 60         |
| 6             | 70         |
| 8             | 90         |

Scatter plot shows **more study hours → higher scores**.

---

## 3️⃣ Use Cases

Scatter plots are widely used in:

- Machine learning
- Correlation analysis
- Scientific research
- Data science projects

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

hours = [2,4,6,8]
scores = [50,60,70,90]

plt.scatter(hours, scores)

plt.title("Study Hours vs Score")
plt.xlabel("Hours Studied")
plt.ylabel("Score")

plt.show()
```

---

## 5️⃣ Key Points

- Shows **relationship between variables**
- Created using `plt.scatter()`
- Useful for **correlation analysis**

---

# 5. Histogram

## 1️⃣ Simple Explanation

A **Histogram** shows the **distribution of numerical data**.

It groups numbers into **ranges called bins**.

Example:

Marks of students grouped into ranges like:

- 0-20
- 20-40
- 40-60
- 60-80
- 80-100

---

## 2️⃣ Example

Student marks:

```
[45, 50, 55, 60, 70, 75, 80, 85]
```

Histogram shows **how many students fall into each score range**.

---

## 3️⃣ Use Cases

Histograms are used in:

- Exam score analysis
- Age distribution
- Income distribution
- Machine learning data analysis

---

## 4️⃣ Code Example

```python
import matplotlib.pyplot as plt

marks = [45,50,55,60,70,75,80,85]

plt.hist(marks, bins=5)

plt.title("Marks Distribution")

plt.show()
```

---

## 5️⃣ Key Points

- Shows **data distribution**
- Created using `plt.hist()`
- Uses **bins to group values**

---

# Key Points to Remember

| Chart Type           | Purpose                             |
| -------------------- | ----------------------------------- |
| Bar Chart            | Compare categories                  |
| Horizontal Bar Chart | Compare categories with long labels |
| Pie Chart            | Show percentage distribution        |
| Scatter Plot         | Show relationship between variables |
| Histogram            | Show data distribution              |

---

✅ These **5 charts cover 90% of real data visualization tasks** in data analytics.

---

If you want, I can also teach the **next powerful module used in real EDA projects**:

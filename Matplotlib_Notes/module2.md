# Module 2: Basic Plotting (Matplotlib)

**Goal:** Learn how to create basic plots and customize them using Matplotlib.

---

# 1. Line Plot

## 1️⃣ Simple Explanation

A **Line Plot** is used to show **how data changes over time or sequence**.

It connects **data points using lines**, which helps us see **trends or patterns**.

For example:

- Temperature during the day
- Stock prices over time
- Monthly sales of a company

👉 Line plots are the **most commonly used charts in data analysis**.

---

## 2️⃣ Example

Suppose a company records **sales for 4 months**.

| Month | Sales |
| ----- | ----- |
| Jan   | 100   |
| Feb   | 150   |
| Mar   | 200   |
| Apr   | 180   |

A **line plot** will show whether sales are **increasing or decreasing**.

---

## 3️⃣ Use Cases

Line plots are used in:

- **Stock market analysis**
- **Weather forecasting**
- **Business sales analysis**
- **Website traffic monitoring**
- **Machine learning model training graphs**

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import Matplotlib.

Step 2
Prepare the data.

Step 3
Use `plt.plot()` to create the graph.

Step 4
Display the graph using `plt.show()`.

---

## 5️⃣ Code Example

```python
import matplotlib.pyplot as plt

# Data
months = ["Jan", "Feb", "Mar", "Apr"]
sales = [100, 150, 200, 180]

# Create line plot
plt.plot(months, sales)

# Display graph
plt.show()
```

### Code Explanation

```python
import matplotlib.pyplot as plt
```

Imports the **Matplotlib plotting module**.

```python
months = ["Jan", "Feb", "Mar", "Apr"]
sales = [100, 150, 200, 180]
```

Defines the **x-axis and y-axis data**.

```python
plt.plot(months, sales)
```

Creates the **line graph**.

```python
plt.show()
```

Displays the graph.

---

## 6️⃣ Key Points

- Line plots show **trends over time**.
- Created using `plt.plot()`.
- Requires **x values and y values**.

---

# 2. Plotting Multiple Lines

## 1️⃣ Simple Explanation

Sometimes we need to **compare multiple datasets** on the same graph.

For example:

- Sales of **Product A vs Product B**
- Temperature of **two cities**
- Performance of **two students**

Matplotlib allows us to **plot multiple lines in one graph**.

---

## 2️⃣ Example

Compare sales of **Product A and Product B**.

| Month | Product A | Product B |
| ----- | --------- | --------- |
| Jan   | 100       | 90        |
| Feb   | 150       | 130       |
| Mar   | 200       | 170       |
| Apr   | 180       | 160       |

---

## 3️⃣ Code Example

```python
import matplotlib.pyplot as plt

months = ["Jan", "Feb", "Mar", "Apr"]
product_A = [100, 150, 200, 180]
product_B = [90, 130, 170, 160]

plt.plot(months, product_A)
plt.plot(months, product_B)

plt.show()
```

Each `plot()` creates **one line**.

---

## 4️⃣ Use Cases

- Comparing **company revenues**
- Comparing **machine learning models**
- Comparing **different products**

---

# 3. Adding Markers

## 1️⃣ Simple Explanation

Markers show **exact data points on the line**.

Without markers → only a line
With markers → **points become visible**

---

## 2️⃣ Example

Markers help identify **exact positions of data values**.

---

## 3️⃣ Code Example

```python
plt.plot(months, sales, marker='o')
```

Marker types:

| Marker | Meaning  |
| ------ | -------- |
| `'o'`  | Circle   |
| `'s'`  | Square   |
| `'^'`  | Triangle |
| `'*'`  | Star     |

Example:

```python
plt.plot(months, sales, marker='o')
```

---

## 4️⃣ Use Cases

Markers are useful when:

- Showing **specific data points**
- Highlighting **important values**
- Presenting data in **reports**

---

# 4. Changing Line Style

## 1️⃣ Simple Explanation

Line styles change the **appearance of the line**.

This helps **differentiate multiple lines**.

---

## 2️⃣ Example

Different line styles:

| Style    | Code |
| -------- | ---- |
| Solid    | `-`  |
| Dashed   | `--` |
| Dotted   | `:`  |
| Dash-dot | `-.` |

---

## 3️⃣ Code Example

```python
plt.plot(months, sales, linestyle='--')
```

Example:

```python
plt.plot(months, product_A, linestyle='--')
plt.plot(months, product_B, linestyle=':')
```

---

## 4️⃣ Use Cases

Used in:

- Research papers
- Multi-line comparisons
- Business presentations

---

# 5. Adding Labels

## 1️⃣ Simple Explanation

Labels describe **what each line represents**.

This helps the viewer understand the graph.

---

## 2️⃣ Code Example

```python
plt.plot(months, product_A, label="Product A")
plt.plot(months, product_B, label="Product B")

plt.legend()
```

---

## 3️⃣ Explanation

```python
label="Product A"
```

Adds label name.

```python
plt.legend()
```

Displays labels in the graph.

---

## 4️⃣ Use Cases

Labels are essential in:

- Dashboards
- Reports
- Data presentations

---

# 6. Adding Title

## 1️⃣ Simple Explanation

A **title** describes **what the graph represents**.

It helps the viewer understand the graph quickly.

---

## 2️⃣ Code Example

```python
plt.title("Monthly Sales Comparison")
```

---

## 3️⃣ Use Cases

Titles are used in:

- Business dashboards
- Data science reports
- Academic research

---

# 7. Grid in Plot

## 1️⃣ Simple Explanation

A **grid** adds horizontal and vertical lines in the graph.

This helps **read values more easily**.

---

## 2️⃣ Code Example

```python
plt.grid(True)
```

---

## 3️⃣ Example Full Code

```python
import matplotlib.pyplot as plt

months = ["Jan", "Feb", "Mar", "Apr"]
product_A = [100, 150, 200, 180]
product_B = [90, 130, 170, 160]

plt.plot(months, product_A, marker='o', linestyle='--', label="Product A")
plt.plot(months, product_B, marker='s', linestyle='-', label="Product B")

plt.title("Monthly Sales Comparison")
plt.grid(True)
plt.legend()

plt.show()
```

---

# 8. Key Points to Remember

- **Line plot** shows trends over time.
- Use `plt.plot()` to create line charts.
- Multiple lines can be plotted by calling `plot()` multiple times.
- **Markers** highlight data points.
- **Line styles** help differentiate lines.
- **Labels** explain what each line represents.
- **Title** describes the graph.
- **Grid** improves readability.

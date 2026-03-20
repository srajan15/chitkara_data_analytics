# Module 12: Exporting and Saving Plots (Matplotlib)

**Goal:** Learn how to **save charts as image or document files** so they can be used in **reports, presentations, websites, and dashboards**.

In real data analytics work, we often need to **export graphs** to share them with others.

Matplotlib provides a function called:

```text
plt.savefig()
```

This function allows us to save plots in **different formats and resolutions**.

---

# 1. Saving Plots (Overview)

## 1️⃣ Simple Explanation

After creating a graph, we may want to **save it as a file** instead of just displaying it.

Matplotlib allows saving plots in formats like:

| Format | Purpose                  |
| ------ | ------------------------ |
| PNG    | Most common image format |
| JPG    | Compressed image         |
| PDF    | High-quality document    |
| SVG    | Vector graphics for web  |

This is done using:

```python
plt.savefig()
```

---

## 2️⃣ Example

Example workflow:

1. Create a plot
2. Save it as an image
3. Use the image in **PowerPoint, reports, or websites**

---

## 3️⃣ Use Cases

Saving plots is used in:

- Data science reports
- Business presentations
- Academic research papers
- Web dashboards
- Documentation

---

# 2. Saving Plot as PNG

## 1️⃣ Simple Explanation

**PNG** is the most commonly used format for charts.

Advantages:

- High quality
- Supports transparency
- Widely supported

---

## 2️⃣ Code Example

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,15,30]

plt.plot(x,y)

plt.title("Sales Trend")

plt.savefig("sales_plot.png")

plt.show()
```

---

## 3️⃣ Explanation

```python
plt.savefig("sales_plot.png")
```

This saves the plot as:

```
sales_plot.png
```

in the **current folder**.

---

## 4️⃣ Key Points

- Most commonly used format
- Good for **reports and presentations**

---

# 3. Saving Plot as JPG

## 1️⃣ Simple Explanation

**JPG (JPEG)** is a compressed image format.

Advantages:

- Smaller file size
- Good for web sharing

However, it may lose some quality.

---

## 2️⃣ Code Example

```python
plt.savefig("sales_plot.jpg")
```

This saves the chart as a **JPG image**.

---

## 3️⃣ Use Cases

JPG is used for:

- Websites
- Social media sharing
- Low storage environments

---

# 4. Saving Plot as PDF

## 1️⃣ Simple Explanation

**PDF format** is used when we need **high-quality graphics for documents**.

It is commonly used in:

- Research papers
- Reports
- Academic publications

---

## 2️⃣ Code Example

```python
plt.savefig("sales_report.pdf")
```

---

## 3️⃣ Use Cases

PDF charts are used in:

- Research journals
- Business reports
- Technical documentation

---

# 5. Saving Plot as SVG

## 1️⃣ Simple Explanation

**SVG (Scalable Vector Graphics)** is a **vector format**.

This means the image can be **zoomed without losing quality**.

SVG is commonly used in:

- Web applications
- Interactive dashboards
- Web design

---

## 2️⃣ Code Example

```python
plt.savefig("sales_plot.svg")
```

---

## 3️⃣ Key Points

- Vector graphics
- Perfect for **web development**

---

# 6. High Resolution Export

## 1️⃣ Simple Explanation

Sometimes we need **very clear and sharp images**, especially for:

- Presentations
- Research papers
- Printing

Matplotlib allows controlling **image resolution** using **DPI**.

DPI means:

```text
Dots Per Inch
```

Higher DPI → higher image quality.

---

## 2️⃣ Code Example

```python
plt.savefig("high_quality_plot.png", dpi=300)
```

---

## 3️⃣ Explanation

| DPI | Quality         |
| --- | --------------- |
| 72  | Low resolution  |
| 150 | Medium          |
| 300 | High resolution |

---

## 4️⃣ Example Full Code

```python
import matplotlib.pyplot as plt

x = [1,2,3,4]
y = [10,20,15,30]

plt.plot(x,y)

plt.title("Sales Trend")

plt.savefig("sales_plot.png", dpi=300)

plt.show()
```

This saves a **high-quality image suitable for reports**.

---

# Key Points to Remember

- Use **`plt.savefig()`** to export charts.
- Supported formats include:

| Format | Best Use             |
| ------ | -------------------- |
| PNG    | General use          |
| JPG    | Web sharing          |
| PDF    | Reports and research |
| SVG    | Web graphics         |

- Use **`dpi=300`** for high-quality images.
- Always call `savefig()` **before `plt.show()`** for reliable saving.

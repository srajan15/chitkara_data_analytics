# Module 10: Working with Files in Pandas

---

# 1️⃣ Introduction

In real-world data analysis, data usually comes from **external files** such as:

- CSV files
- Excel files
- JSON files
- Databases

To analyze this data using Pandas, we first need to **load the data into a DataFrame**.

Pandas provides several functions to **read and write files** easily.

Common functions used are:

### Reading Data

- `read_csv()`
- `read_excel()`
- `read_json()`

### Writing Data

- `to_csv()`
- `to_excel()`
- `to_json()`

These functions are used **daily by data analysts to import and export datasets**.

---

# 2️⃣ Why This Concept is Important

In real-world projects, data is usually stored in files like:

- Sales reports (Excel)
- Website analytics (CSV)
- API data (JSON)

Example:

A company may provide a dataset called:

```
sales_data.csv
```

A data analyst loads it using Pandas:

```python
df = pd.read_csv("sales_data.csv")
```

Now the data can be:

- cleaned
- analyzed
- visualized

This is why **file handling is an essential skill in data analysis**.

---

# 3️⃣ Reading CSV Files

CSV stands for **Comma-Separated Values**.

Example CSV file:

```
Name,Age,City
Amit,22,Delhi
Ravi,25,Mumbai
Neha,21,Jaipur
```

### Example

```python
import pandas as pd

df = pd.read_csv("data.csv")

print(df)
```

### Output

```
   Name  Age   City
0  Amit   22   Delhi
1  Ravi   25   Mumbai
2  Neha   21   Jaipur
```

### Explanation

```python
pd.read_csv("data.csv")
```

- Reads the CSV file
- Converts it into a **Pandas DataFrame**

---

# 4️⃣ Reading Excel Files

Pandas can also read **Excel spreadsheets**.

Example file:

```
data.xlsx
```

### Example

```python
import pandas as pd

df = pd.read_excel("data.xlsx")

print(df)
```

### Explanation

```python
pd.read_excel("data.xlsx")
```

Reads an Excel file and converts it into a **DataFrame**.

Note: You may need to install **openpyxl**.

```
pip install openpyxl
```

---

# 5️⃣ Reading JSON Files

JSON stands for **JavaScript Object Notation**.

Example JSON file:

```
[
 {"Name":"Amit","Age":22},
 {"Name":"Ravi","Age":25}
]
```

### Example

```python
import pandas as pd

df = pd.read_json("data.json")

print(df)
```

### Explanation

```python
pd.read_json("data.json")
```

Reads JSON data and converts it into a **DataFrame**.

---

# 6️⃣ Writing Data to CSV

After analyzing data, we often want to **save the results**.

### Example

```python
df.to_csv("output.csv")
```

### Explanation

```python
to_csv()
```

Saves the DataFrame as a **CSV file**.

---

### Save Without Index

```python
df.to_csv("output.csv", index=False)
```

Explanation:

```text
index=False
```

Removes the row numbers from the file.

---

# 7️⃣ Writing Data to Excel

We can save the dataset as an Excel file.

### Example

```python
df.to_excel("output.xlsx")
```

### Explanation

Creates an **Excel spreadsheet containing the DataFrame data**.

---

# 8️⃣ Writing Data to JSON

We can also export data in JSON format.

### Example

```python
df.to_json("output.json")
```

### Explanation

This converts the DataFrame into **JSON format**.

---

# 9️⃣ Reading Data from URL

Pandas can even read datasets directly from the internet.

### Example

```python
df = pd.read_csv("https://example.com/data.csv")
```

This loads the dataset directly from the **URL**.

---

# 🔟 Viewing the Data After Loading

After loading a dataset, analysts usually run:

```python
df.head()
df.info()
df.describe()
```

These help understand the dataset quickly.

---

# 5️⃣ Real-World Example

Suppose you are a **data analyst in a retail company**.

You receive a dataset:

```
sales_data.csv
```

You load the dataset:

```python
import pandas as pd

df = pd.read_csv("sales_data.csv")
```

Now you can:

- Clean the data
- Analyze sales
- Find top-selling products

After analysis, you save results:

```python
df.to_excel("sales_report.xlsx")
```

This report can then be **shared with management**.

---

# 6️⃣ Important Tips

✔ CSV is the **most commonly used file format** in data analysis.

✔ Always inspect data after loading:

```
df.head()
```

✔ Use:

```
index=False
```

when exporting clean reports.

✔ Pandas supports many other formats:

- SQL
- HTML
- Parquet
- Feather

---

# 7️⃣ Summary of Module

In this module we learned how to **load and save datasets using Pandas**.

Functions covered:

### Reading Data

- `read_csv()`
- `read_excel()`
- `read_json()`

### Writing Data

- `to_csv()`
- `to_excel()`
- `to_json()`

These functions are **essential for working with real-world datasets**.

---

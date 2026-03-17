## Creating a Pandas Series (All 3 Methods)

We can create a **Pandas Series** using:

1️⃣ **List**
2️⃣ **NumPy Array**
3️⃣ **Dictionary**

Let's demonstrate each one clearly.

---

# 1️⃣ Creating Series from a List

### Example

```python
import pandas as pd

data = [10, 20, 30, 40]

s = pd.Series(data)

print(s)
```

### Code Explanation

**Line 1**

```python
import pandas as pd
```

Imports the Pandas library.

**Line 2**

```python
data = [10, 20, 30, 40]
```

Creates a Python **list** containing numbers.

**Line 3**

```python
s = pd.Series(data)
```

`pd.Series()` converts the list into a **Pandas Series**.

**Line 4**

```python
print(s)
```

Displays the series.

### Output

```
0    10
1    20
2    30
3    40
dtype: int64
```

Explanation:

- **0,1,2,3 → Index**
- **10,20,30,40 → Values**

---

# 2️⃣ Creating Series from a NumPy Array

First we import **NumPy**.

### Example

```python
import pandas as pd
import numpy as np

data = np.array([5, 15, 25, 35])

s = pd.Series(data)

print(s)
```

### Code Explanation

**Line 1**

```python
import pandas as pd
```

Imports Pandas.

**Line 2**

```python
import numpy as np
```

Imports NumPy.

**Line 3**

```python
data = np.array([5, 15, 25, 35])
```

Creates a **NumPy array**.

**Line 4**

```python
s = pd.Series(data)
```

Converts the NumPy array into a **Series**.

### Output

```
0     5
1    15
2    25
3    35
dtype: int64
```

---

# 3️⃣ Creating Series from a Dictionary

When we create a Series from a dictionary:

- **Keys → Index**
- **Values → Data**

### Example

```python
import pandas as pd

data = {
    "A": 100,
    "B": 200,
    "C": 300
}

s = pd.Series(data)

print(s)
```

### Code Explanation

**Line 1**

Import Pandas.

**Line 2–6**

Create a dictionary.

```python
{
"A":100,
"B":200,
"C":300
}
```

Here:

- **A, B, C → Index**
- **100,200,300 → Values**

**Line 7**

```python
s = pd.Series(data)
```

Creates a Series from the dictionary.

### Output

```
A    100
B    200
C    300
dtype: int64
```

---

# Real-World Example

Suppose you want to store **product prices**.

### Using Dictionary

```python
import pandas as pd

products = {
    "Laptop": 60000,
    "Mobile": 20000,
    "Tablet": 15000
}

price_series = pd.Series(products)

print(price_series)
```

Output

```
Laptop    60000
Mobile    20000
Tablet    15000
```

This is useful for **quick product price analysis**.

---

# Quick Summary

| Data Type   | Index                    |
| ----------- | ------------------------ |
| List        | Default index (0,1,2...) |
| NumPy Array | Default index            |
| Dictionary  | Keys become index        |

# Creating a Pandas DataFrame (All 4 Methods)

A **DataFrame** is a **two-dimensional table** in Pandas.
It contains **rows and columns**, similar to **Excel spreadsheets or database tables**.

A DataFrame can be created using:

1️⃣ Dictionary
2️⃣ List
3️⃣ NumPy Array
4️⃣ CSV / Excel File

Let's demonstrate each method clearly.

---

# 1️⃣ Creating DataFrame from a Dictionary

This is the **most common method** used in Pandas.

### Example

```python
import pandas as pd

data = {
    "Name": ["Amit", "Ravi", "Neha"],
    "Age": [22, 25, 21],
    "City": ["Delhi", "Mumbai", "Jaipur"]
}

df = pd.DataFrame(data)

print(df)
```

### Code Explanation

**Line 1**

```python
import pandas as pd
```

Imports the Pandas library.

**Line 2–6**

Creates a **dictionary** where:

- Keys → column names
- Values → column data

```python
{
"Name": ["Amit", "Ravi", "Neha"],
"Age": [22, 25, 21],
"City": ["Delhi", "Mumbai", "Jaipur"]
}
```

**Line 7**

```python
df = pd.DataFrame(data)
```

Converts the dictionary into a **DataFrame**.

**Line 9**

```python
print(df)
```

Displays the DataFrame.

### Output

```
   Name  Age     City
0  Amit   22    Delhi
1  Ravi   25   Mumbai
2  Neha   21   Jaipur
```

---

# 2️⃣ Creating DataFrame from a List

We can create a DataFrame using a **list of lists**.

### Example

```python
import pandas as pd

data = [
    ["Amit", 22, "Delhi"],
    ["Ravi", 25, "Mumbai"],
    ["Neha", 21, "Jaipur"]
]

df = pd.DataFrame(data, columns=["Name", "Age", "City"])

print(df)
```

### Code Explanation

**Line 2–6**

Creates a **list of records**.

Each inner list represents **one row**.

```
["Amit", 22, "Delhi"]
```

**Line 8**

```python
pd.DataFrame(data, columns=["Name","Age","City"])
```

Creates a DataFrame and assigns **column names**.

### Output

```
   Name  Age     City
0  Amit   22    Delhi
1  Ravi   25   Mumbai
2  Neha   21   Jaipur
```

---

# 3️⃣ Creating DataFrame from NumPy Array

We can convert a **NumPy array into a DataFrame**.

### Example

```python
import pandas as pd
import numpy as np

data = np.array([
    [101, "Amit", 5000],
    [102, "Ravi", 7000],
    [103, "Neha", 6500]
])

df = pd.DataFrame(data, columns=["ID", "Name", "Salary"])

print(df)
```

### Code Explanation

**Line 2**

```python
import numpy as np
```

Imports NumPy.

**Line 4–8**

Creates a **NumPy array** containing rows of data.

**Line 10**

```python
pd.DataFrame(data, columns=["ID","Name","Salary"])
```

Converts the NumPy array into a DataFrame and assigns column names.

### Output

```
    ID  Name  Salary
0  101  Amit   5000
1  102  Ravi   7000
2  103  Neha   6500
```

---

# 4️⃣ Creating DataFrame from CSV File

Most real-world datasets come in **CSV files**.

CSV = **Comma Separated Values**

### Example CSV File

```
Name,Age,City
Amit,22,Delhi
Ravi,25,Mumbai
Neha,21,Jaipur
```

### Code

```python
import pandas as pd

df = pd.read_csv("data.csv")

print(df)
```

### Explanation

```python
pd.read_csv("data.csv")
```

Reads the **CSV file** and converts it into a **DataFrame**.

---

# 5️⃣ Creating DataFrame from Excel File

Pandas can also read **Excel files**.

### Code

```python
import pandas as pd

df = pd.read_excel("data.xlsx")

print(df)
```

### Explanation

```python
pd.read_excel("data.xlsx")
```

Reads an **Excel spreadsheet** and converts it into a **DataFrame**.

---

# Real-World Example

Suppose you work as a **Data Analyst in an e-commerce company**.

You receive a dataset:

```
orders.csv
```

| OrderID | Customer | Amount |
| ------- | -------- | ------ |
| 101     | Amit     | 500    |
| 102     | Ravi     | 700    |
| 103     | Neha     | 450    |

You load the dataset using Pandas:

```python
df = pd.read_csv("orders.csv")
```

Now you can analyze:

- Total sales
- Average order value
- Top customers

This is how **DataFrames are used in real data analysis projects**.

---

# Quick Summary

| Method      | Usage                               |
| ----------- | ----------------------------------- |
| Dictionary  | Most common for creating DataFrames |
| List        | Useful for manual data entry        |
| NumPy Array | Used in scientific computing        |
| CSV / Excel | Used for real-world datasets        |

---

✅ **Important Note**

Almost **90% of real-world datasets are loaded using:**

```
pd.read_csv()
pd.read_excel()
```

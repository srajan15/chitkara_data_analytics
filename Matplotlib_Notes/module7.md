# Module 7: Working with Real Data (Matplotlib + Pandas)

**Goal:** Learn how to visualize **real datasets** (like CSV files and DataFrames) using Matplotlib.

In real data analytics projects, we rarely plot **manual lists**.
Instead, we visualize **data from datasets** such as CSV files or Pandas DataFrames.

---

# 1. Plotting Data from Pandas DataFrame

## 1️⃣ Simple Explanation

A **Pandas DataFrame** is like a **table (rows and columns)**.

When working with datasets, we usually load data into a DataFrame and then **plot columns from it**.

Matplotlib can easily create charts using **DataFrame columns**.

---

## 2️⃣ Example

Example dataset:

| Month | Sales |
| ----- | ----- |
| Jan   | 100   |
| Feb   | 150   |
| Mar   | 200   |
| Apr   | 180   |

This data is stored inside a **Pandas DataFrame**.

---

## 3️⃣ Use Cases

Used in:

- Sales analysis
- Customer data analysis
- Financial data visualization
- Machine learning feature analysis

---

## 4️⃣ Step-by-Step Understanding

Step 1
Import libraries.

Step 2
Create or load a DataFrame.

Step 3
Select the columns.

Step 4
Plot the data using Matplotlib.

---

## 5️⃣ Code Example

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Month": ["Jan","Feb","Mar","Apr"],
    "Sales": [100,150,200,180]
}

df = pd.DataFrame(data)

plt.plot(df["Month"], df["Sales"])
plt.title("Monthly Sales")
plt.show()
```

### Code Explanation

`pd.DataFrame(data)` → creates a DataFrame
`df["Month"]` → x-axis
`df["Sales"]` → y-axis
`plt.plot()` → creates line chart

---

## 6️⃣ Key Points

- Data is usually stored in **DataFrames**
- Columns are used as **x and y values**
- Works with **real datasets**

---

# 2. Plotting CSV Data

## 1️⃣ Simple Explanation

Most real datasets are stored in **CSV files (Comma Separated Values)**.

Example:

```
Month,Sales
Jan,100
Feb,150
Mar,200
Apr,180
```

We first **load the CSV file using Pandas**, then visualize it using Matplotlib.

---

## 2️⃣ Example

Suppose we have a file:

```
sales.csv
```

---

## 3️⃣ Step-by-Step Understanding

Step 1
Load CSV file.

Step 2
Store it in a DataFrame.

Step 3
Select columns.

Step 4
Plot the chart.

---

## 4️⃣ Code Example

```python
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("sales.csv")

plt.plot(df["Month"], df["Sales"])

plt.title("Sales from CSV Data")
plt.show()
```

---

## 5️⃣ Use Cases

CSV visualization is used in:

- Data analytics projects
- Kaggle datasets
- Business reporting
- Machine learning datasets

---

# 3. Time-Series Visualization

## 1️⃣ Simple Explanation

A **time-series dataset** contains data that changes **over time**.

Examples:

- Stock prices by date
- Temperature by day
- Website visitors by month

Time-series charts usually use **line plots**.

---

## 2️⃣ Example

| Date  | Temperature |
| ----- | ----------- |
| 1 Jan | 22          |
| 2 Jan | 24          |
| 3 Jan | 21          |
| 4 Jan | 25          |

A line chart shows **temperature changes over time**.

---

## 3️⃣ Use Cases

Time-series visualization is used in:

- Stock market analysis
- Weather forecasting
- IoT sensor monitoring
- Website traffic analysis

---

## 4️⃣ Step-by-Step Understanding

Step 1
Load the dataset.

Step 2
Convert date column to datetime.

Step 3
Plot the data using a line chart.

---

## 5️⃣ Code Example

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Date": ["2024-01-01","2024-01-02","2024-01-03","2024-01-04"],
    "Temperature": [22,24,21,25]
}

df = pd.DataFrame(data)

plt.plot(df["Date"], df["Temperature"])

plt.title("Temperature Over Time")
plt.xlabel("Date")
plt.ylabel("Temperature")

plt.show()
```

---

## 6️⃣ Key Points

- Time-series data uses **dates or timestamps**
- Usually visualized using **line plots**
- Helps identify **trends and seasonality**

---

# 4. Visualization of Missing Values

## 1️⃣ Simple Explanation

Real datasets often contain **missing values (NaN)**.

Example:

| Name  | Age |
| ----- | --- |
| John  | 25  |
| Alice | NaN |
| Mike  | 30  |

Visualization helps us **identify missing data patterns**.

---

## 2️⃣ Example

We can plot **how many values are missing in each column**.

---

## 3️⃣ Step-by-Step Understanding

Step 1
Check missing values.

Step 2
Count missing values.

Step 3
Visualize using a bar chart.

---

## 4️⃣ Code Example

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    "Age":[25,None,30,22,None],
    "Salary":[50000,60000,None,55000,52000]
}

df = pd.DataFrame(data)

missing = df.isnull().sum()

plt.bar(missing.index, missing.values)

plt.title("Missing Values per Column")
plt.show()
```

---

## 5️⃣ Code Explanation

`df.isnull()` → detects missing values
`sum()` → counts missing values
`plt.bar()` → visualizes missing data

---

## 6️⃣ Use Cases

Missing value visualization is used in:

- **Data cleaning**
- **Exploratory Data Analysis (EDA)**
- **Machine learning preprocessing**

---

# Key Points to Remember

- Real datasets are usually stored as **CSV files or DataFrames**.
- Use **Pandas + Matplotlib together** for visualization.
- Time-series data uses **dates on the x-axis**.
- Missing values can be visualized using **bar charts**.
- Data visualization is a key step in **EDA (Exploratory Data Analysis)**.

---

# Pandas Library Complete Syllabus (Beginner → Advanced)

---

# Module 1: Introduction to Pandas

**Topics**

1. What is Pandas
2. Why Pandas is used in Data Analysis
3. Real-world applications of Pandas
4. Installing Pandas (`pip install pandas`)
5. Importing Pandas (`import pandas as pd`)
6. Pandas vs NumPy
7. Pandas Data Structures Overview

**Example**

```python
import pandas as pd

data = [10, 20, 30, 40]
s = pd.Series(data)
print(s)
```

---

# Module 2: Pandas Data Structures

### 1. Series

- Creating Series
- Accessing elements
- Indexing in Series
- Custom index

### 2. DataFrame

- Creating DataFrame
- Dictionary to DataFrame
- List to DataFrame
- NumPy array to DataFrame

**Example**

```python
data = {
    "Name": ["A", "B", "C"],
    "Age": [20, 21, 22]
}

df = pd.DataFrame(data)
print(df)
```

---

# Module 3: DataFrame Basic Operations

Topics

1. Viewing Data
2. `head()`
3. `tail()`
4. `info()`
5. `describe()`
6. `shape`
7. `columns`
8. `index`
9. Selecting columns
10. Selecting multiple columns

Example

```python
df.head()
df.tail()
df.info()
df.describe()
```

---

# Module 4: Indexing and Selection

Topics

1. Column selection
2. Row selection
3. `loc`
4. `iloc`
5. Boolean indexing
6. Conditional filtering
7. Selecting subsets

Example

```python
df.loc[0]
df.iloc[1]

df[df["Age"] > 21]
```

---

# Module 5: Data Cleaning

Topics

1. Handling Missing Values
2. `isnull()`
3. `notnull()`
4. `dropna()`
5. `fillna()`
6. Removing duplicates
7. `drop_duplicates()`
8. Replacing values
9. `replace()`

Example

```python
df.fillna(0)

df.dropna()

df.drop_duplicates()
```

---

# Module 6: Data Manipulation

Topics

1. Adding columns
2. Removing columns
3. Renaming columns
4. Sorting data
5. `sort_values()`
6. `sort_index()`

Example

```python
df["Salary"] = [20000,30000,25000]

df.sort_values("Salary")
```

---

# Module 7: Data Aggregation

Topics

1. `sum()`
2. `mean()`
3. `min()`
4. `max()`
5. `count()`
6. `std()`
7. `median()`

Example

```python
df["Salary"].mean()
```

---

# Module 8: GroupBy Operations

Topics

1. `groupby()`
2. Aggregation with groupby
3. Multiple aggregations
4. Group by multiple columns

Example

```python
df.groupby("Department")["Salary"].mean()
```

---

# Module 9: Merging and Joining

Topics

1. `merge()`
2. `concat()`
3. `join()`
4. Inner join
5. Left join
6. Right join
7. Outer join

Example

```python
pd.merge(df1, df2, on="ID")
```

---

# Module 10: Working with Files

Topics

### Reading Data

1. `read_csv()`
2. `read_excel()`
3. `read_json()`
4. `read_sql()`

### Writing Data

1. `to_csv()`
2. `to_excel()`
3. `to_json()`

Example

```python
df = pd.read_csv("data.csv")

df.to_csv("output.csv")
```

---

# Module 11: Data Transformation

Topics

1. `apply()`
2. `map()`
3. `applymap()`
4. Lambda functions
5. Value transformation

Example

```python
df["Age"] = df["Age"].apply(lambda x: x + 1)
```

---

# Module 12: Handling Dates and Time

Topics

1. DateTime in Pandas
2. `to_datetime()`
3. Extract year/month/day
4. Time indexing
5. Resampling

Example

```python
df["Date"] = pd.to_datetime(df["Date"])

df["Year"] = df["Date"].dt.year
```

---

# Module 13: Pivot Tables and Crosstab

Topics

1. `pivot()`
2. `pivot_table()`
3. `crosstab()`

Example

```python
pd.pivot_table(df, values="Sales", index="Region", columns="Product")
```

---

# Module 14: Advanced Indexing

Topics

1. MultiIndex
2. Hierarchical indexing
3. Stack and Unstack
4. Reset index
5. Set index

Example

```python
df.set_index("Name")
df.reset_index()
```

---

# Module 15: Window Functions

Topics

1. Rolling window
2. Expanding window
3. Moving average
4. `rolling()`
5. `expanding()`

Example

```python
df["Sales"].rolling(3).mean()
```

---

# Module 16: Performance Optimization

Topics

1. Vectorization
2. Avoiding loops
3. Efficient filtering
4. Memory optimization
5. Using categorical data

---

# Module 17: Data Visualization with Pandas

Topics

1. Line plots
2. Bar charts
3. Histograms
4. Box plots
5. Scatter plots

Example

```python
df["Sales"].plot()
```

---

# Module 18: Pandas for EDA (Very Important)

Topics

1. Data inspection
2. Missing data analysis
3. Outlier detection
4. Feature relationships
5. Correlation matrix

Example

```python
df.corr()
```

---

# Module 19: Pandas with NumPy

Topics

1. Converting DataFrame to NumPy
2. Using NumPy operations on Pandas
3. Vectorized calculations

Example

```python
df.values
```

---

# Module 20: Real World Data Analysis Projects

Projects

1. Sales Data Analysis
2. Customer Analysis
3. COVID Data Analysis
4. E-commerce dataset analysis
5. IPL dataset analysis

---

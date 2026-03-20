## Module 12: Seaborn Capstone Project

---

# 1️⃣ Module Title

**Seaborn Capstone Project (Complete Data Visualization Project)**

---

# 2️⃣ Concept Explanation (Very Simple Language)

A **Capstone Project** is a **final project** where you apply everything you learned in the course.

In this module, we use **Seaborn to perform full Exploratory Data Analysis (EDA)** on a real dataset.

The goal of the project is to:

✔ Understand the dataset
✔ Visualize patterns
✔ Discover insights
✔ Present results using graphs

This type of project is **very important for your resume and portfolio**.

It shows recruiters that you can:

```text
Work with real datasets
Perform data analysis
Create professional visualizations
Generate business insights
```

---

# 3️⃣ Project Ideas

Here are some **excellent datasets for Seaborn projects**.

### 1️⃣ Titanic Survival Analysis

Dataset contains passenger information.

Columns include:

- Age
- Sex
- Class
- Fare
- Survival

Possible questions:

```text
Did gender affect survival?
Did ticket class affect survival?
Did age influence survival?
```

---

### 2️⃣ Netflix Data Visualization

Analyze Netflix dataset.

Possible analysis:

```text
Content distribution by country
Movies vs TV shows
Release year trends
Popular genres
```

---

### 3️⃣ Global YouTube Statistics (Very Good for Resume)

Since you mentioned earlier you wanted **a good dataset for your resume**, this is one of the best.

Possible analysis:

```text
Top YouTube channels by subscribers
Views vs uploads relationship
Country-wise channel distribution
Category popularity
```

---

### 4️⃣ IPL Data Analysis

Very popular dataset for India-based analytics projects.

Possible questions:

```text
Which team wins the most matches?
Top run scorers
Top wicket takers
Winning trend by stadium
```

---

### 5️⃣ COVID-19 Data Visualization

Possible insights:

```text
Cases by country
Death rate analysis
Vaccination trends
Time-series case growth
```

---

# 4️⃣ Why This Concept Is Important

Capstone projects are extremely important because they:

✔ Build **portfolio projects**
✔ Demonstrate **practical skills**
✔ Improve **data storytelling ability**
✔ Prepare you for **data analyst interviews**

Many companies ask:

```text
Show me one data analysis project you worked on.
```

Your Seaborn project becomes the **answer to that question**.

---

# 5️⃣ Typical Project Workflow

A typical Seaborn data analysis project follows these steps:

```
1️⃣ Load Dataset
2️⃣ Understand Dataset
3️⃣ Data Cleaning
4️⃣ Exploratory Data Analysis (EDA)
5️⃣ Visualization
6️⃣ Insight Generation
7️⃣ Final Summary
```

Example workflow:

```
Load Dataset
      ↓
Check Missing Values
      ↓
Visualize Distributions
      ↓
Analyze Relationships
      ↓
Create Insights
```

---

# 6️⃣ Code Example (Simple Capstone Start)

Example: **Titanic Survival Analysis**

```python
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
titanic = sns.load_dataset("titanic")

# Survival count
sns.countplot(data=titanic, x="survived")

plt.title("Titanic Survival Count")

plt.show()
```

---

# 7️⃣ Code Breakdown

### Line 1

```python
import seaborn as sns
```

Imports Seaborn library.

---

### Line 2

```python
import matplotlib.pyplot as plt
```

Imports Matplotlib.

---

### Line 5

```python
titanic = sns.load_dataset("titanic")
```

Loads Titanic dataset.

---

### Line 8

```python
sns.countplot(data=titanic, x="survived")
```

Creates a **count plot showing survival numbers**.

---

### Line 10

```python
plt.title("Titanic Survival Count")
```

Adds title to chart.

---

### Line 12

```python
plt.show()
```

Displays the visualization.

---

# 8️⃣ Output Explanation

The chart shows:

```
Survived vs Not Survived
```

Example insight:

```
More passengers did not survive than survived.
```

This is the **first insight of the analysis**.

---

# 9️⃣ Real-Life Use Case

Capstone projects are used for:

### Data Analyst Portfolio

Examples:

```
Netflix Data Visualization Project
IPL Data Analysis Project
YouTube Channel Statistics Analysis
```

---

### Job Interviews

Interviewers often ask:

```
Explain one project where you analyzed a dataset.
```

Your Seaborn project helps answer this question confidently.

---

# 🔟 Small Practice Task

### Project Task

Create a **Titanic Data Analysis Project**.

Steps:

### Step 1

Load dataset

```python
titanic = sns.load_dataset("titanic")
```

---

### Step 2

Explore dataset

```
titanic.head()
titanic.info()
titanic.describe()
```

---

### Step 3

Create visualizations

1️⃣ Survival count

```python
sns.countplot(data=titanic, x="survived")
```

2️⃣ Survival by gender

```python
sns.barplot(data=titanic, x="sex", y="survived")
```

3️⃣ Age distribution

```python
sns.histplot(data=titanic, x="age", kde=True)
```

4️⃣ Fare vs Age

```python
sns.scatterplot(data=titanic, x="age", y="fare")
```

---

### Step 4

Write insights

Example:

```
Women had higher survival rate.
Passengers with higher fare had better survival chances.
```

---

✅ **Congratulations!**

After completing these **12 modules**, you will be able to:

✔ Perform **Exploratory Data Analysis (EDA)**
✔ Create **professional statistical visualizations**
✔ Use **Seaborn + Matplotlib together**
✔ Build **data analytics portfolio projects**

---

If you want, I can also show you:

**"The 20 Most Important Seaborn Plots Every Data Analyst Should Master"**

This is extremely useful for **interviews and real analytics projects**.

Great 👍 Since you completed the **12 Seaborn modules**, here are the **20 Most Important Seaborn Plots Every Data Analyst Should Master**.
These are the plots **commonly used in EDA, dashboards, and interviews**.

---

# 20 Most Important Seaborn Plots (For Data Analysts)

## 1. Scatter Plot

![Image](https://seaborn.pydata.org/_images/scatterplot_5_0.png)

![Image](https://seaborn.pydata.org/_images/scatter_bubbles.png)

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/1%2A5VvTvggr4XBljbjxDELhkQ.png)

![Image](https://www.angela1c.com/projects/tips-project-files/images_files/images_161_0.png)

**Purpose**

Shows the **relationship between two numerical variables**.

**Example**

```python
sns.scatterplot(data=tips, x="total_bill", y="tip")
```

**Use Case**

- Ad spend vs sales
- Age vs income

---

# 2. Line Plot

![Image](https://seaborn.pydata.org/_images/lineplot_23_0.png)

![Image](https://www.pythoncharts.com/python/line-chart-with-confidence-interval/images/seaborn-line-chart-with-confidence-interval.png)

![Image](https://i.sstatic.net/vAz0z.jpg)

![Image](https://wellsr.com/python/assets/images/2019-11-05-Seaborn-Line-Plot-Color.PNG)

**Purpose**

Shows **trends over time or ordered data**.

```python
sns.lineplot(data=df, x="year", y="sales")
```

**Use Case**

- Sales growth
- Stock price trends
- Temperature trends

---

# 3. Bar Plot

![Image](https://seaborn.pydata.org/archive/0.11/_images/seaborn-barplot-8.png)

![Image](https://seaborn.pydata.org/_images/categorical_51_0.png)

![Image](https://seaborn.pydata.org/_images/barplot_9_0.png)

![Image](https://seaborn.pydata.org/_images/barplot_5_0.png)

**Purpose**

Shows **average value across categories**.

```python
sns.barplot(data=tips, x="day", y="total_bill")
```

\*\*Use Case

- Sales by region
- Average salary by department

---

# 4. Count Plot

![Image](https://i.sstatic.net/1wGxF.png)

![Image](https://i.sstatic.net/2SJSb.png)

![Image](https://i.sstatic.net/vejYc.png)

![Image](https://k3-production-bucket.s3.amazonaws.com/uploads/56HBdM26fKwAapyJa_u1-2.png)

**Purpose**

Shows **number of observations in each category**.

```python
sns.countplot(data=titanic, x="sex")
```

**Use Case**

- Gender distribution
- Product category counts

---

# 5. Histogram

![Image](https://miro.medium.com/1%2AoT516y-IewTn7Jy23G5aJA.png)

![Image](https://seaborn.pydata.org/_images/histplot_15_0.png)

![Image](https://seaborn.pydata.org/_images/histplot_9_0.png)

![Image](https://i.sstatic.net/a7Wl3.png)

**Purpose**

Shows **distribution of numerical data**.

```python
sns.histplot(data=titanic, x="age", kde=True)
```

**Use Case**

- Age distribution
- Salary distribution

---

# 6. KDE Plot

![Image](https://seaborn.pydata.org/_images/kdeplot_13_0.png)

![Image](https://seaborn.pydata.org/_images/kdeplot_31_0.png)

![Image](https://seaborn.pydata.org/_images/kdeplot_19_0.png)

**Purpose**

Shows **smooth distribution curve**.

```python
sns.kdeplot(data=titanic, x="age")
```

---

# 7. Box Plot

![Image](https://miro.medium.com/v2/resize%3Afit%3A1002/1%2AvFBstvBjFVl5ayPXapq2sw.png)

![Image](https://miro.medium.com/1%2A0MPDTLn8KoLApoFvI0P2vQ.png)

![Image](https://seaborn.pydata.org/_images/boxplot_5_0.png)

![Image](https://seaborn.pydata.org/_images/boxplot_17_0.png)

**Purpose**

Shows:

- median
- quartiles
- outliers

```python
sns.boxplot(data=tips, x="day", y="total_bill")
```

---

# 8. Violin Plot

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/1%2A8iGsnar-gPbbj2rLtADs7Q.png)

![Image](https://seaborn.pydata.org/_images/violinplot_11_0.png)

![Image](https://seaborn.pydata.org/_images/violinplot_7_0.png)

![Image](https://seaborn.pydata.org/_images/violinplot_9_0.png)

**Purpose**

Shows **distribution + density together**.

```python
sns.violinplot(data=tips, x="day", y="total_bill")
```

---

# 9. Heatmap

![Image](https://miro.medium.com/1%2Abrq_vvcnVqsOWoVvsjT0pA.png)

![Image](https://seaborn.pydata.org/_images/spreadsheet_heatmap.png)

![Image](https://seaborn.pydata.org/_images/heatmap_17_0.png)

![Image](https://files.codingninjas.in/article_images/custom-upload-1702622772-383c30f0.png)

**Purpose**

Shows **correlation between variables**.

```python
sns.heatmap(df.corr(), annot=True)
```

**Use Case**

- Feature correlation
- Financial correlation

---

# 10. Pairplot

![Image](https://www.learningaboutelectronics.com/images/Pairplot-seaborn-Python.png)

![Image](https://seaborn.pydata.org/_images/scatterplot_matrix.png)

![Image](https://seaborn.pydata.org/_images/pairplot_11_0.png)

![Image](https://i.sstatic.net/pyGZ3.png)

**Purpose**

Shows **relationships between all numeric variables**.

```python
sns.pairplot(df)
```

---

# 11. Jointplot

![Image](https://seaborn.pydata.org/_images/jointplot_3_0.png)

![Image](https://www.tutorialspoint.com/seaborn/images/jointplot.jpg)

![Image](https://i.sstatic.net/KEdsn.png)

**Purpose**

Shows **scatter + distribution together**.

```python
sns.jointplot(data=tips, x="total_bill", y="tip")
```

---

# 12. Regression Plot

![Image](https://seaborn.pydata.org/_images/regplot_21_0.png)

![Image](https://seaborn.pydata.org/_images/regression_5_0.png)

![Image](https://python-charts.com/en/correlation/scatter-plot-regression-line-seaborn_files/figure-html/scatter-plot-seaborn-regression-line-group-markers.png)

![Image](https://seaborn.pydata.org/_images/regplot_7_0.png)

**Purpose**

Shows **trend between variables**.

```python
sns.regplot(data=tips, x="total_bill", y="tip")
```

---

# 13. Swarm Plot

![Image](https://seaborn.pydata.org/_images/scatterplot_categorical.png)

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/1%2AoQDt4ICnId29Tu2oi8oz4A.png)

![Image](https://seaborn.pydata.org/archive/0.11/_images/seaborn-swarmplot-9.png)

![Image](https://seaborn.pydata.org/_images/swarmplot_5_0.png)

**Purpose**

Shows **individual data points without overlapping**.

```python
sns.swarmplot(data=tips, x="day", y="total_bill")
```

---

# 14. Strip Plot

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/1%2Avtgz8Sat3egFlnCOFdlcrQ.png)

![Image](https://seaborn.pydata.org/_images/categorical_3_0.png)

![Image](https://seaborn.pydata.org/_images/stripplot_17_0.png)

![Image](https://seaborn.pydata.org/archive/0.11/_images/seaborn-stripplot-111.png)

**Purpose**

Shows **individual observations in categories**.

```python
sns.stripplot(data=tips, x="day", y="total_bill")
```

---

# 15. FacetGrid

![Image](https://seaborn.pydata.org/_images/axis_grids_48_0.png)

![Image](https://seaborn.pydata.org/_images/FacetGrid_25_0.png)

![Image](https://seaborn.pydata.org/_images/FacetGrid_17_0.png)

![Image](https://miro.medium.com/1%2AX_LRZ_2GlZZkrvzjt9TGCg.png)

**Purpose**

Creates **multiple plots based on categories**.

```python
sns.FacetGrid(tips, col="time").map(sns.scatterplot, "total_bill", "tip")
```

---

# 16. Catplot

**Purpose**

General categorical plot generator.

```python
sns.catplot(data=tips, x="day", y="total_bill", kind="box")
```

---

# 17. Relplot

**Purpose**

Figure-level relational plot.

```python
sns.relplot(data=tips, x="total_bill", y="tip", hue="sex")
```

---

# 18. Displot

**Purpose**

Distribution plot for **histograms + KDE**.

```python
sns.displot(data=tips, x="total_bill", kde=True)
```

---

# 19. Clustermap

**Purpose**

Shows **clustered heatmap**.

```python
sns.clustermap(df.corr())
```

---

# 20. Rug Plot

**Purpose**

Shows **individual data points along an axis**.

```python
sns.rugplot(data=tips, x="total_bill")
```

---

# ⭐ Interview Tip (Very Important)

For **Data Analyst interviews**, the most commonly used Seaborn plots are:

1. Scatterplot
2. Histogram
3. Boxplot
4. Barplot
5. Heatmap
6. Pairplot
7. Countplot
8. Regression Plot

Master these **8 plots first**.

---

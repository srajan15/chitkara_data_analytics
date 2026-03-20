# Seaborn Syllabus (Beginner → Advanced)

## Module 1: Introduction to Seaborn

![Image](https://i.sstatic.net/4YyEU.png)

![Image](https://seaborn.pydata.org/_images/axis_grids_34_0.png)

![Image](https://seaborn.pydata.org/_images/function_overview_5_0.png)

![Image](https://seaborn.pydata.org/_images/function_overview_3_0.png)

**Topics**

1. What is Seaborn
2. Why use Seaborn instead of Matplotlib
3. Installing Seaborn
4. Importing Seaborn
5. Seaborn vs Matplotlib
6. Built-in datasets in Seaborn
7. Loading datasets using `sns.load_dataset()`

**Practice**

- Load **tips dataset**
- Load **titanic dataset**
- Explore dataset structure

---

# Module 2: Seaborn Styling & Themes

![Image](https://viscid-hub.github.io/Viscid-docs/docs/dev/_images/seaborn-darkgrid.png)

![Image](https://seaborn.pydata.org/_images/set_theme_1_0.png)

![Image](https://viscid-hub.github.io/Viscid-docs/docs/dev/_images/seaborn-whitegrid.png)

![Image](https://i.sstatic.net/4Dmxy.png)

**Topics**

1. Seaborn themes
2. `sns.set_theme()`
3. `sns.set_style()`
4. Available styles
   - darkgrid
   - whitegrid
   - dark
   - white
   - ticks

5. Context settings
6. Figure size control

**Practice**

- Apply different styles
- Change plot context

---

# Module 3: Relational Plots

![Image](https://seaborn.pydata.org/_images/scatterplot_19_0.png)

![Image](https://seaborn.pydata.org/_images/errorband_lineplots.png)

![Image](https://seaborn.pydata.org/_images/relational_12_0.png)

![Image](https://seaborn.pydata.org/_images/relplot_20_0.png)

**Topics**

1. `scatterplot()`
2. `lineplot()`
3. `relplot()`
4. Using parameters
   - `hue`
   - `style`
   - `size`

5. Multiple variables visualization

**Practice**

- Scatter plot using tips dataset
- Line plot using time data

---

# Module 4: Distribution Plots

![Image](https://seaborn.pydata.org/_images/histplot_15_0.png)

![Image](https://seaborn.pydata.org/_images/kdeplot_13_0.png)

![Image](https://i.sstatic.net/1Erbc.png)

![Image](https://seaborn.pydata.org/_images/displot_7_0.png)

**Topics**

1. Understanding data distribution
2. `histplot()`
3. `kdeplot()`
4. `displot()`
5. Combining histogram + KDE
6. Binning concept

**Practice**

- Age distribution
- Fare distribution (Titanic dataset)

---

# Module 5: Categorical Plots

![Image](https://stackabuse.s3.amazonaws.com/media/seaborn-bar-plot-tutorial-and-examples-9.png)

![Image](https://seaborn.pydata.org/_images/countplot_3_0.png)

![Image](https://seaborn.pydata.org/_images/categorical_23_0.png)

![Image](https://seaborn.pydata.org/_images/categorical_25_0.png)

**Topics**

1. `barplot()`
2. `countplot()`
3. `boxplot()`
4. `violinplot()`
5. `stripplot()`
6. `swarmplot()`
7. `catplot()`

**Practice**

- Gender vs survival (Titanic)
- Total bill vs day (Tips dataset)

---

# Module 6: Matrix Plots

![Image](https://miro.medium.com/1%2Abrq_vvcnVqsOWoVvsjT0pA.png)

![Image](https://seaborn.pydata.org/_images/spreadsheet_heatmap.png)

![Image](https://seaborn.pydata.org/_images/many_pairwise_correlations.png)

![Image](https://miro.medium.com/1%2AbntAAPD8IQfDSgqvuk1bGA.png)

**Topics**

1. Correlation concept
2. `heatmap()`
3. Correlation matrix
4. Annotated heatmap
5. `clustermap()`

**Practice**

- Titanic correlation heatmap
- Feature relationship analysis

---

# Module 7: Regression Plots

![Image](https://seaborn.pydata.org/_images/regression_5_0.png)

![Image](https://seaborn.pydata.org/_images/lmplot_4_0.png)

![Image](https://python-charts.com/en/correlation/scatter-plot-regression-line-seaborn_files/figure-html/scatter-plot-seaborn-regression-line-group-palette.png)

![Image](https://python-charts.com/en/correlation/scatter-plot-regression-line-seaborn_files/figure-html/scatter-plot-seaborn-regression-line-ci.png)

**Topics**

1. Regression visualization
2. `regplot()`
3. `lmplot()`
4. Linear regression visualization
5. Confidence intervals

**Practice**

- Bill vs tip relationship
- Age vs fare regression

---

# Module 8: Multi-Plot Grids

![Image](https://seaborn.pydata.org/_images/axis_grids_48_0.png)

![Image](https://builtin.com/sites/www.builtin.com/files/styles/ckeditor_optimize/public/inline-images/1_seaborn-pairplot.jpg)

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/1%2AGafpGFs3r7Raf9XYIL-psQ.png)

![Image](https://etav.github.io/images/sb_pair_plot/pairs2.png)

**Topics**

1. `FacetGrid`
2. `pairplot()`
3. `jointplot()`
4. `PairGrid`
5. Multi-variable visualization

**Practice**

- Iris dataset pairplot
- Joint distribution plots

---

# Module 9: Color Palettes

![Image](https://images.openai.com/static-rsc-3/j6OU8wWriVgd7X0A_5MPlT_3TWMkkX8n8u_0u5oP09XH9xjslf2jIHJlVODMMEQZa9Q8RRllbOzbdXOzLz4ZOfJEiHUfR_xySofK_DjIsUQ?purpose=fullsize&v=1)

![Image](https://content.codecademy.com/programs/dataviz-python/unit-5/seaborn-design-2/article2_image9.png)

![Image](https://seaborn.pydata.org/_images/color_palettes_22_0.svg)

![Image](https://r02b.github.io/assets/images/color_palettes/colorblindness_2.png)

**Topics**

1. Importance of color in visualization
2. Default palettes
3. `sns.color_palette()`
4. Sequential palettes
5. Diverging palettes
6. Custom palettes

---

# Module 10: Advanced Seaborn Customization

![Image](https://fiveable.me/_next/image?q=75&url=https%3A%2F%2Fstorage.googleapis.com%2Fstatic.prod.fiveable.me%2Fsearch-images%252F%2522Seaborn_dataset-oriented_API_data_visualization_Python_library_statistical_graphics_dataframe_integration_informative_plots%2522-Tools_Seaborn_seaborn_plot_types_28_0.png&w=3840)

![Image](https://python-charts.com/en/tags/seaborn/texts_files/figure-html/seaborn-text-rotation.png)

![Image](https://alumni.media.mit.edu/~sbates/heatmaps_files/unclustered_clustermap.png)

![Image](https://d1rwhvwstyk9gu.cloudfront.net/2025/02/Different-types-of-Seaborn-plots.png)

**Topics**

1. Combining Seaborn + Matplotlib
2. Adding titles and labels
3. Custom annotations
4. Axis formatting
5. Saving plots
6. Dashboard-style visualizations

---

# Module 11: Real-World Data Analysis with Seaborn

**Topics**

1. Exploratory Data Analysis (EDA)
2. Identifying patterns in data
3. Outlier detection
4. Correlation analysis
5. Feature relationships
6. Storytelling with data

---

# Module 12: Seaborn Capstone Project

**Project Ideas**

1. Titanic Survival Analysis
2. Netflix Data Visualization
3. Global YouTube Statistics Analysis _(good for your resume)_
4. IPL Data Analysis
5. COVID-19 Data Visualization

---

✅ **Outcome after this syllabus**

You will be able to:

- Perform **EDA visually**
- Create **professional statistical plots**
- Use **Seaborn + Matplotlib together**
- Build **data analytics portfolio projects**

---

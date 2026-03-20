## 📘 Module 5: Aggregate Functions — Beginner Notes

---

## 🧠 What are Aggregate Functions?

- Functions used to perform **calculations on multiple rows**
- Return **single value (result)**

👉 Used for:

- Total
- Average
- Count
- Maximum
- Minimum

---

## 🧠 Types of Aggregate Functions

---

### 🔢 1. COUNT()

- Counts number of rows

```sql
SELECT COUNT(*) FROM employees;
```

👉 Counts all rows

---

### 👉 COUNT with Column

```sql
SELECT COUNT(salary) FROM employees;
```

👉 Counts only **non-null values**

---

### 👉 COUNT DISTINCT

```sql
SELECT COUNT(DISTINCT department) FROM employees;
```

👉 Counts unique values

---

## 💰 2. SUM()

- Adds all values

```sql
SELECT SUM(salary) FROM employees;
```

👉 Total salary

---

## 📊 3. AVG()

- Calculates average

```sql
SELECT AVG(salary) FROM employees;
```

👉 Average salary

---

## 🔝 4. MAX()

- Returns highest value

```sql
SELECT MAX(salary) FROM employees;
```

👉 Highest salary

---

## 🔻 5. MIN()

- Returns lowest value

```sql
SELECT MIN(salary) FROM employees;
```

👉 Lowest salary

---

## 🧠 Important Points

- Ignore NULL values
- Work on numeric columns (except COUNT)
- Return single value

---

## 🧠 Using WHERE with Aggregate

```sql
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';
```

👉 Average salary of IT department

---

## 🧠 Using Multiple Aggregates

```sql
SELECT
COUNT(*) AS total_employees,
AVG(salary) AS avg_salary,
MAX(salary) AS highest_salary
FROM employees;
```

---

## 🧠 Without GROUP BY

- Whole table treated as **one group**

---

## 🧠 Real-Life Example

👉 Company:

- COUNT → number of employees
- SUM → total salary expense
- AVG → average salary
- MAX → highest paid employee
- MIN → lowest paid employee

---

## 🧠 Common Mistakes

- Using aggregate with non-aggregated column ❌
- Forgetting WHERE condition
- Misunderstanding COUNT(column) vs COUNT(\*)

---

## 🧠 Key Understanding

- COUNT → number of records
- SUM → total
- AVG → average
- MAX → highest
- MIN → lowest

---

## 🧠 Final Concept

👉 Aggregate functions = data summary
👉 Used in reports, dashboards, analytics

## 📘 Module 4: Data Filtering & Sorting — Beginner Notes

---

## 🧠 Why Filtering & Sorting?

- Used to **get required data only**
- Helps in:
  - Better analysis
  - Clean output
  - Faster understanding

---

## 🧠 ORDER BY (Sorting Data)

- Used to sort data in **ascending or descending order**

### 👉 Ascending Order (Default)

```sql id="p1x2a3"
SELECT * FROM employees
ORDER BY salary ASC;
```

---

### 👉 Descending Order

```sql id="k9m4z8"
SELECT * FROM employees
ORDER BY salary DESC;
```

---

### 👉 Multiple Column Sorting

```sql id="d3f7h1"
SELECT * FROM employees
ORDER BY department ASC, salary DESC;
```

👉 First sorted by department
👉 Then salary inside each department

---

## 🧠 LIMIT (Restrict Output)

- Used to limit number of rows

```sql id="r5t8y2"
SELECT * FROM employees
LIMIT 5;
```

👉 Returns first 5 rows

---

### 👉 LIMIT with OFFSET

```sql id="n2c6v9"
SELECT * FROM employees
LIMIT 5 OFFSET 5;
```

👉 Skip first 5 rows, show next 5

---

## 🧠 DISTINCT (Unique Values)

- Removes duplicate values

```sql id="z8q3l1"
SELECT DISTINCT department FROM employees;
```

👉 Shows unique departments only

---

## 🧠 ALIAS (Rename Column)

- Used to give temporary name

```sql id="x4w7e2"
SELECT name AS employee_name, salary AS emp_salary
FROM employees;
```

👉 Output column names changed

---

## 🧠 LIKE (Pattern Matching)

- Used to search specific patterns

### 👉 Symbols:

- % → any number of characters
- \_ → single character

---

### 👉 Starts with 'A'

```sql id="c6v9b2"
SELECT * FROM employees
WHERE name LIKE 'A%';
```

---

### 👉 Ends with 'n'

```sql id="l3k8j1"
SELECT * FROM employees
WHERE name LIKE '%n';
```

---

### 👉 Contains 'ra'

```sql id="m1n4b7"
SELECT * FROM employees
WHERE name LIKE '%ra%';
```

---

## 🧠 NULL Handling

### 👉 What is NULL?

- NULL = missing or unknown value
- Not equal to 0 or empty string

---

### 👉 Check NULL Values

```sql id="q2w5e8"
SELECT * FROM employees
WHERE salary IS NULL;
```

---

### 👉 Check NOT NULL

```sql id="u7i3o9"
SELECT * FROM employees
WHERE salary IS NOT NULL;
```

---

## 🧠 Combining Conditions

```sql id="t4y6u1"
SELECT * FROM employees
WHERE salary > 50000
ORDER BY salary DESC
LIMIT 3;
```

👉 Filter → Sort → Limit

---

## 🧠 Execution Order (Important)

1. FROM
2. WHERE
3. SELECT
4. ORDER BY
5. LIMIT

---

## 🧠 Real-Life Example

👉 E-commerce:

- ORDER BY price → sort products
- LIMIT → show top 10 products
- DISTINCT → unique categories
- LIKE → search product

---

## 🧠 Common Mistakes

- Using = with NULL ❌
- Forgetting ORDER BY before LIMIT
- Wrong pattern in LIKE
- Case sensitivity issues

---

## 🧠 Key Understanding

- ORDER BY → sorting
- LIMIT → restrict rows
- DISTINCT → remove duplicates
- LIKE → search pattern
- NULL → missing value

---

## 🧠 Final Concept

👉 Filtering + Sorting = clean and useful data output
👉 Used in dashboards, reports, real applications

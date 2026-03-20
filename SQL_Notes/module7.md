## 📘 Module 7: Joins (Very Important ⭐) — Beginner Notes

---

## 🧠 What is JOIN?

- JOIN is used to **combine data from multiple tables**
- Tables are connected using **common column (key)**

👉 Without JOIN → data is incomplete
👉 With JOIN → get full information

---

## 🧠 Why JOIN is Needed?

- Real-world data is stored in **multiple tables**
- To get complete data, we combine tables

---

## 🧠 Example Tables

### 👉 employees

| id  | name | dept_id |
| --- | ---- | ------- |
| 1   | A    | 101     |
| 2   | B    | 102     |
| 3   | C    | 101     |

---

### 👉 departments

| id  | dept_name |
| --- | --------- |
| 101 | IT        |
| 102 | HR        |

---

## 🧠 Types of JOIN

---

## 🔗 1. INNER JOIN

- Returns **only matching records in both tables**

```sql id="q4w8z1"
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.id;
```

👉 Only rows where dept_id matches

---

## 🔗 2. LEFT JOIN

- Returns:
  - All records from **left table**
  - Matching records from right table
  - Non-matching → NULL

```sql id="l8m2x5"
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.id;
```

👉 All employees shown
👉 If no department → NULL

---

## 🔗 3. RIGHT JOIN

- Returns:
  - All records from **right table**
  - Matching from left table

```sql id="k3n7p9"
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.id;
```

👉 All departments shown

---

## 🔗 4. FULL JOIN (Concept)

- Returns all records from both tables
- Non-matching → NULL

👉 MySQL does not support FULL JOIN directly

---

## 🔗 5. CROSS JOIN

- Returns **all combinations (Cartesian product)**

```sql id="p2s6v8"
SELECT e.name, d.dept_name
FROM employees e
CROSS JOIN departments d;
```

👉 If 3 employees & 2 departments → 6 rows

---

## 🔗 6. SELF JOIN

- Table joined with itself

```sql id="y9f3h2"
SELECT A.name, B.name
FROM employees A, employees B
WHERE A.manager_id = B.id;
```

👉 Used for hierarchy (manager → employee)

---

## 🧠 JOIN Syntax

```sql id="t5u8w1"
SELECT columns
FROM table1
JOIN table2
ON condition;
```

---

## 🧠 Table Alias (Shortcut Names)

```sql id="c4v7b9"
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.id;
```

👉 e = employees
👉 d = departments

---

## 🧠 Key Column (Important)

- JOIN works on:
  - Primary Key
  - Foreign Key

👉 Example:

- employees.dept_id → foreign key
- departments.id → primary key

---

## 🧠 Real-Life Example

👉 E-commerce:

- customers table
- orders table

👉 JOIN:

- Show customer name + order details

---

## 🧠 Common Mistakes

- Missing ON condition ❌
- Wrong column matching ❌
- Confusing LEFT and RIGHT JOIN ❌
- Duplicate data due to wrong join

---

## 🧠 Key Understanding

- JOIN = combine tables
- INNER JOIN = matching only
- LEFT JOIN = all left + match
- RIGHT JOIN = all right + match
- CROSS JOIN = all combinations

---

## 🧠 Final Concept

👉 Real-world databases = multiple tables
👉 JOIN is must for real projects
👉 Most asked topic in interviews ⭐

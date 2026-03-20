## 📘 Module 6: GROUP BY & HAVING — Beginner Notes

---

## 🧠 Why GROUP BY?

- Used to **group rows with same values**
- Works with **aggregate functions**

👉 Without GROUP BY → whole table = 1 group
👉 With GROUP BY → multiple groups

---

## 🧠 GROUP BY Syntax

```sql
SELECT column, AGG_FUNCTION(column)
FROM table
GROUP BY column;
```

---

## 🧠 Example Table

| id  | name | department | salary |
| --- | ---- | ---------- | ------ |
| 1   | A    | IT         | 50000  |
| 2   | B    | HR         | 40000  |
| 3   | C    | IT         | 60000  |

---

## 🧠 Basic GROUP BY Example

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
```

👉 Output:

- IT → avg salary
- HR → avg salary

---

## 🧠 Multiple Columns GROUP BY

```sql
SELECT department, job_role, COUNT(*)
FROM employees
GROUP BY department, job_role;
```

👉 Groups based on combination

---

## 🧠 Rules of GROUP BY (Very Important ⭐)

- Column in SELECT must be:
  - In GROUP BY
    OR
  - Used with aggregate function

❌ Wrong:

```sql
SELECT name, AVG(salary) FROM employees GROUP BY department;
```

---

## 🧠 HAVING Clause

- Used to **filter grouped data**
- Works after GROUP BY

---

## 🧠 HAVING Syntax

```sql
SELECT column, AGG_FUNCTION(column)
FROM table
GROUP BY column
HAVING condition;
```

---

## 🧠 HAVING Example

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

👉 Only show departments with avg salary > 50000

---

## 🧠 WHERE vs HAVING (Very Important ⭐)

| WHERE                | HAVING              |
| -------------------- | ------------------- |
| Filters rows         | Filters groups      |
| Used before GROUP BY | Used after GROUP BY |
| Cannot use aggregate | Can use aggregate   |

---

### 👉 Example:

```sql
SELECT department, AVG(salary)
FROM employees
WHERE salary > 40000
GROUP BY department
HAVING AVG(salary) > 50000;
```

👉 WHERE → filters rows
👉 GROUP BY → creates groups
👉 HAVING → filters groups

---

## 🧠 Execution Order

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT

---

## 🧠 Real-Life Example

👉 Company:

- GROUP BY department → group employees
- AVG(salary) → average per department
- HAVING → filter high-paying departments

---

## 🧠 Common Mistakes

- Using WHERE instead of HAVING ❌
- Selecting column not in GROUP BY ❌
- Forgetting aggregate function

---

## 🧠 Key Understanding

- GROUP BY → create groups
- Aggregate → calculate on groups
- HAVING → filter groups

---

## 🧠 Final Concept

👉 GROUP BY = grouping data
👉 HAVING = filtering grouped result
👉 Used in reports, dashboards, analytics

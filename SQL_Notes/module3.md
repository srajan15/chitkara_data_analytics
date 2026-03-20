## 📘 Module 3: CRUD Operations (Core SQL) — Beginner Notes

---

## 🧠 What is CRUD?

- CRUD = **Create, Read, Update, Delete**
- Basic operations to manage data in table

| Operation | SQL Command |
| --------- | ----------- |
| Create    | INSERT      |
| Read      | SELECT      |
| Update    | UPDATE      |
| Delete    | DELETE      |

---

## 🧠 1. INSERT (Add Data)

- Used to insert new records into table

### 👉 Insert Single Row

```sql id="8tq2y3"
INSERT INTO employees (id, name, salary)
VALUES (1, 'Srajan', 50000);
```

---

### 👉 Insert Multiple Rows

```sql id="7fpl9k"
INSERT INTO employees (id, name, salary)
VALUES
(2, 'Amit', 60000),
(3, 'Ravi', 55000);
```

---

### 👉 Insert Without Column Names

- Must follow exact column order

```sql id="2yq3mf"
INSERT INTO employees
VALUES (4, 'Neha', 70000);
```

---

## 🧠 2. SELECT (Read Data)

- Used to fetch data from table

### 👉 Select All Columns

```sql id="i1l5y6"
SELECT * FROM employees;
```

---

### 👉 Select Specific Columns

```sql id="k9x3bz"
SELECT name, salary FROM employees;
```

---

## 🧠 WHERE Clause (Filtering Data)

- Used to filter records

```sql id="g2d8nv"
SELECT * FROM employees WHERE salary > 50000;
```

---

## 🧠 Operators in WHERE

### 👉 Comparison Operators

- = (equal)
- > (greater than)
- < (less than)
- > =, <=, !=

```sql id="y7d1cf"
SELECT * FROM employees WHERE salary >= 60000;
```

---

### 👉 Logical Operators

- AND → both conditions true
- OR → any one condition true
- NOT → reverse condition

```sql id="b7k3xm"
SELECT * FROM employees
WHERE salary > 50000 AND name = 'Amit';
```

---

### 👉 BETWEEN

- Range of values

```sql id="m6v8cz"
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;
```

---

### 👉 IN

- Multiple values

```sql id="a8n5qe"
SELECT * FROM employees
WHERE name IN ('Srajan', 'Amit');
```

---

### 👉 LIKE (Pattern Matching)

- % → any characters
- \_ → single character

```sql id="3l0hkp"
SELECT * FROM employees
WHERE name LIKE 'S%';
```

---

## 🧠 3. UPDATE (Modify Data)

- Used to change existing data

```sql id="v1p9rx"
UPDATE employees
SET salary = 80000
WHERE id = 1;
```

👉 Without WHERE = updates all rows ⚠️

---

## 🧠 4. DELETE (Remove Data)

- Used to delete records

```sql id="e5q2nb"
DELETE FROM employees
WHERE id = 2;
```

👉 Without WHERE = deletes all data ⚠️

---

## 🧠 Important Rules

- Always use WHERE in UPDATE & DELETE
- Always check data before modifying
- Use SELECT to verify

---

## 🧠 Execution Flow

👉 SQL runs in this order:

1. FROM
2. WHERE
3. SELECT

---

## 🧠 Real-Life Example

👉 Bank System:

- INSERT → new account
- SELECT → check balance
- UPDATE → deposit/withdraw
- DELETE → close account

---

## 🧠 Common Mistakes

- Missing WHERE → data loss
- Wrong column names
- Wrong data type
- Case sensitivity in strings

---

## 🧠 Key Understanding

- INSERT → add data
- SELECT → read data
- UPDATE → change data
- DELETE → remove data

---

## 🧠 Final Concept

👉 CRUD = foundation of SQL
👉 Every application uses these operations

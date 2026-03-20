## 📘 Module 2: MySQL Data Types & Table Creation (Beginner Notes)

---

### 🧠 What is Table?

- Table = collection of data in **rows and columns**
- Each table stores **specific type of data**

👉 Example: employees table

| id  | name | salary | joining_date |
| --- | ---- | ------ | ------------ |

---

### 🧠 What is Column (Field)?

- Column = represents **type of data**
- Defines what kind of values can be stored

👉 Example:

- name → text
- salary → number

---

### 🧠 What is Row (Record)?

- Row = one complete entry in table

👉 Example:

- (1, Srajan, 50000, 2024-01-01)

---

## 🧠 What are Data Types?

- Data types define **what type of data a column can store**
- Helps:
  - Maintain data accuracy
  - Save memory
  - Improve performance

---

## 🔢 Numeric Data Types

### 1. INT

- Stores whole numbers
- Example: 10, 100, -5

```sql
id INT
```

---

### 2. FLOAT

- Stores decimal values (approximate)
- Example: 10.5, 99.99

```sql
price FLOAT
```

---

### 3. DECIMAL (Important ⭐)

- Stores exact decimal values
- Used in money calculations

👉 Format:

```sql
DECIMAL(total_digits, decimal_digits)
```

👉 Example:

```sql
salary DECIMAL(10,2)
```

- Total 10 digits
- 2 digits after decimal
- Example value: 12345678.90

---

## 🔤 String Data Types

### 1. CHAR

- Fixed length string
- Faster but wastes space

```sql
code CHAR(5)
```

---

### 2. VARCHAR (Most Used ⭐)

- Variable length string
- Saves memory

```sql
name VARCHAR(50)
```

---

### 3. TEXT

- Used for long text
- Example: description, comments

```sql
description TEXT
```

---

## 📅 Date & Time Data Types

### 1. DATE

- Format: YYYY-MM-DD

```sql
joining_date DATE
```

---

### 2. DATETIME

- Stores date + time

```sql
created_at DATETIME
```

---

### 3. TIMESTAMP

- Automatically tracks time
- Used for logs

```sql
updated_at TIMESTAMP
```

---

## 🧠 Boolean in MySQL

- MySQL does not have true boolean
- Uses:
  - 1 → TRUE
  - 0 → FALSE

```sql
is_active BOOLEAN
```

---

## 🧠 What are Constraints?

- Rules applied on columns
- Ensure data correctness

---

## 🔒 Types of Constraints

### 1. NOT NULL

- Column cannot be empty

```sql
name VARCHAR(50) NOT NULL
```

---

### 2. UNIQUE

- All values must be different

```sql
email VARCHAR(100) UNIQUE
```

---

### 3. PRIMARY KEY (Very Important ⭐)

- Uniquely identifies each row
- Cannot be NULL
- No duplicates

```sql
id INT PRIMARY KEY
```

---

### 4. FOREIGN KEY

- Links two tables
- Creates relationship

```sql
FOREIGN KEY (dept_id) REFERENCES departments(id)
```

---

### 5. DEFAULT

- Sets default value if not provided

```sql
status VARCHAR(20) DEFAULT 'active'
```

---

## 🧠 Creating Table

👉 Basic Syntax:

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype
);
```

---

## 🧠 Example Table Creation

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2),
    joining_date DATE,
    is_active BOOLEAN DEFAULT 1
);
```

---

## 🧠 How Data is Stored

- Each column stores specific type
- Each row is one record
- Table is stored inside database

---

## 🧠 Rules for Table Creation

- Table name should be meaningful
- Column names should be clear
- Always use PRIMARY KEY
- Choose correct data type

---

## 🧠 Real-Life Example

👉 E-commerce Table:

- id → INT
- product_name → VARCHAR
- price → DECIMAL
- description → TEXT
- created_at → DATETIME

---

## 🧠 Key Understanding

- Data type = type of value
- Table = structure to store data
- Constraint = rule on data
- PRIMARY KEY = unique identity

---

## 🧠 Final Concept

👉 Wrong data type = wrong data storage
👉 Correct design = better performance & accuracy

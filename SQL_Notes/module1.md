## 📘 Module 1: Introduction to Databases & SQL (Beginner Notes)

---

### 🧠 What is Data?

- Data = raw facts or information
- Example:
  - Name: Srajan
  - Age: 22
  - Salary: 50000

- Data alone has no meaning until we organize it

---

### 🧠 What is Database?

- Database = **organized collection of data**
- Stored in electronic form (computer)
- Helps in:
  - Storing large amount of data
  - Easy retrieval (get data quickly)
  - Updating data
  - Managing data efficiently

👉 Example:

- Bank stores customer details
- Instagram stores user profiles, posts
- College stores student records

---

### 🧠 What is DBMS (Database Management System)?

- DBMS = Software that helps us **create, manage, and interact with databases**
- It acts as a **bridge between user and database**

👉 Without DBMS:

- We cannot easily store or manage data

👉 Examples:

- MySQL
- Oracle
- SQL Server

---

### 🧠 What is RDBMS (Relational DBMS)?

- RDBMS = Data stored in **tables**
- Tables contain:
  - Rows → Records
  - Columns → Fields

👉 Example Table:

| ID  | Name   | Age |
| --- | ------ | --- |
| 1   | Srajan | 22  |
| 2   | Amit   | 25  |

- Tables are connected using **relationships (keys)**

👉 Example:

- Student table connected to Course table

---

### 🧠 DBMS vs RDBMS

| DBMS                 | RDBMS                 |
| -------------------- | --------------------- |
| Stores data as files | Stores data in tables |
| No relation          | Tables are related    |
| Less secure          | More secure           |
| Example: File system | Example: MySQL        |

---

### 🧠 What is SQL?

- SQL = Structured Query Language
- It is a **language used to communicate with database**

👉 We use SQL to:

- Create database
- Create tables
- Insert data
- Update data
- Delete data
- Fetch data

👉 Example:

```sql id="n3v2la"
SELECT * FROM students;
```

👉 Meaning: Get all data from students table

---

### 🧠 Why SQL is Important?

- Used in almost every company
- Required for:
  - Data Analyst
  - Backend Developer
  - Data Engineer

- Works with:
  - Power BI
  - Tableau
  - Python

---

### 🧠 Types of Databases

1. **Relational Database**
   - Data in tables
   - Fixed schema
   - Example: MySQL

2. **NoSQL Database**
   - Data in JSON / flexible format
   - Used for large-scale apps
   - Example: MongoDB

3. **Cloud Database**
   - Stored on cloud servers
   - Accessible from anywhere
   - Example: AWS RDS

---

### 🧠 What is MySQL?

- MySQL = Open-source RDBMS
- Uses SQL language
- Most popular database system

👉 Features:

- Fast
- Reliable
- Free
- Used in real-world applications

---

### 🧠 MySQL Architecture (Basic Understanding)

- **Client (User)** → You write SQL query
- **MySQL Server** → Processes query
- **Database** → Stores data

👉 Flow:
User → SQL Query → MySQL → Output

---

### 🧠 MySQL Tools

- MySQL Server → Stores data
- MySQL Workbench → GUI (visual tool)
- Command Line → Write SQL manually

---

### 🧠 First Step in MySQL

👉 Create Database:

```sql id="r1q4hb"
CREATE DATABASE company;
```

👉 Use Database:

```sql id="9q9vci"
USE company;
```

---

### 🧠 SQL Categories (Very Important)

1. **DDL (Data Definition Language)**
   - Used to define structure
   - Commands:
     - CREATE
     - ALTER
     - DROP

2. **DML (Data Manipulation Language)**
   - Used to modify data
   - Commands:
     - INSERT
     - UPDATE
     - DELETE

3. **DQL (Data Query Language)**
   - Used to fetch data
   - Command:
     - SELECT

4. **DCL (Data Control Language)**
   - Used for permissions
   - Commands:
     - GRANT
     - REVOKE

5. **TCL (Transaction Control Language)**
   - Used for transactions
   - Commands:
     - COMMIT
     - ROLLBACK

---

### 🧠 Real-Life Example (Very Important)

👉 Bank System:

- Table: Customers
- Table: Accounts
- Table: Transactions

👉 SQL used to:

- Check balance
- Transfer money
- Update account

---

### 🧠 Key Understanding

- Database = Data storage
- DBMS = Software
- SQL = Language to interact
- MySQL = Tool (RDBMS)

---

### 🧠 Final Concept

👉 User does NOT directly access data
👉 User writes SQL → MySQL executes → Data returned

---

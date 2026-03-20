-- ============================================================
--   SQL CRUD OPERATIONS — MySQL Compatible
--   C → CREATE  (INSERT)
--   R → READ    (SELECT)
--   U → UPDATE  (UPDATE)
--   D → DELETE  (DELETE)
--   Dataset: Students Table
--   Engine : MySQL 5.7+ / MySQL 8.0+
-- ============================================================


-- ============================================================
-- SETUP: Create & select the database
-- ============================================================

-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS chitkara_db;

-- Switch to this database
USE chitkara_db;


-- ============================================================
-- SETUP: Create the students table
-- ============================================================
-- MySQL differences from SQLite:
--   AUTO_INCREMENT  (not AUTOINCREMENT)
--   VARCHAR(n)      for text with a max length (not just TEXT)
--   ENGINE=InnoDB   best engine for MySQL (supports transactions)
--   CHARSET=utf8mb4 supports all Unicode characters (emojis, etc.)
-- ============================================================

CREATE TABLE IF NOT EXISTS students (
    id      INT           PRIMARY KEY AUTO_INCREMENT,  -- auto unique ID
    name    VARCHAR(100)  NOT NULL,                    -- student name (max 100 chars)
    age     INT           NOT NULL,                    -- student age
    grade   INT           NOT NULL,                    -- class grade
    marks   DECIMAL(5,2)  NOT NULL,                    -- score e.g. 999.99
    city    VARCHAR(100)  DEFAULT 'Unknown'            -- city name
);


-- ============================================================
-- C — CREATE: INSERT records into the table
-- ============================================================
-- Adds new rows to the table.
-- Always list column names so the query is safe and clear.
-- ============================================================

-- Insert a single student
INSERT INTO students (name, age, grade, marks, city)
VALUES ('Aryan Sharma', 16, 10, 88.50, 'Delhi');

-- Insert multiple students at once
INSERT INTO students (name, age, grade, marks, city)
VALUES
    ('Priya Verma',   17, 11, 92.00, 'Mumbai'),
    ('Rohan Gupta',   16, 10, 75.50, 'Pune'),
    ('Sneha Patel',   18, 12, 96.00, 'Ahmedabad'),
    ('Karan Singh',   17, 11, 68.00, 'Chandigarh'),
    ('Meera Joshi',   16, 10, 82.00, 'Delhi'),
    ('Amit Yadav',    18, 12, 55.50, 'Lucknow'),
    ('Divya Nair',    17, 11, 89.00, 'Kochi'),
    ('Raj Kumar',     15,  9, 71.00, 'Chennai'),
    ('Pooja Mishra',  18, 12, 79.50, 'Bhopal'),
    ('Nikhil Desai',  16, 10, 63.00, 'Mumbai');




-- ============================================================
-- R — READ: SELECT records from the table
-- ============================================================
-- Fetches rows from the table.
-- * means all columns. You can also list specific columns.
-- ============================================================

-- Read all students (all columns)
SELECT * FROM students;

-- Read only name, grade, and marks
SELECT name, grade, marks FROM students;

-- Read students from Grade 10 only
SELECT * FROM students
WHERE grade = 10;

-- Read students who scored more than 80 marks
SELECT name, marks FROM students
WHERE marks > 80;

-- Read top 3 students by marks (highest first)
SELECT name, marks FROM students
ORDER BY marks DESC
LIMIT 3;

-- ============================================================
-- U — UPDATE: Modify existing records
-- ============================================================
-- Changes data in one or more rows.
--
-- ⚠️  ALWAYS use WHERE — without it every row gets updated!
--
-- MySQL SAFE UPDATE MODE:
--   By default MySQL blocks UPDATE/DELETE without a PRIMARY KEY
--   in the WHERE clause. To allow updates by other columns, run:
--   SET SQL_SAFE_UPDATES = 0;
-- ============================================================

-- Disable safe update mode temporarily (needed for non-PK WHERE clauses)
SET SQL_SAFE_UPDATES = 0;

-- Update marks for one specific student (by name)
UPDATE students
SET marks = 65.00
WHERE name = 'Amit Yadav';

-- Update multiple columns at the same time
UPDATE students
SET city = 'Bangalore', grade = 10
WHERE name = 'Raj Kumar';

-- Update using a calculation (add 5 bonus marks to Grade 12)
UPDATE students
SET marks = marks + 5
WHERE grade = 12;



-- -- Re-enable safe update mode after you're done
-- SET SQL_SAFE_UPDATES = 1;


-- ============================================================
-- D — DELETE: Remove records from the table
-- ============================================================
-- Permanently deletes rows from the table.
--
-- ⚠️  ALWAYS use WHERE — without it every row gets deleted!
-- ============================================================

-- Disable safe update mode temporarily (needed for non-PK WHERE clauses)
-- SET SQL_SAFE_UPDATES = 0;

-- Delete one student by their unique ID
DELETE FROM students
WHERE id = 1;

-- Delete all students who scored below 60
DELETE FROM students
WHERE marks < 60;

-- Delete students from a specific city
DELETE FROM students
WHERE city = 'Lucknow';

-- Delete with LIMIT: delete only the lowest scoring student (1 row max)
DELETE FROM students
ORDER BY marks ASC
LIMIT 1;

-- -- Re-enable safe update mode after you're done
-- SET SQL_SAFE_UPDATES = 1;

-- TRUNCATE: removes ALL rows instantly (faster than DELETE with no WHERE)
-- Resets AUTO_INCREMENT counter back to 1
-- ⚠️  Cannot be rolled back — use with extreme caution!
-- TRUNCATE TABLE students;


-- ============================================================
-- CLEANUP (optional — uncomment only when intentional)
-- ============================================================

-- Drop only the table
-- DROP TABLE IF EXISTS students;

-- Drop the entire database
-- DROP DATABASE IF EXISTS school_db;


-- ============================================================
-- END OF CRUD OPERATIONS
-- ============================================================

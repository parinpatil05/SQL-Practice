/* ==========================================================
   SQL DATA MANIPULATION LANGUAGE (DML)
-------------------------------------------------------------
DML commands are used to modify the data stored in tables.

Commands Covered
1. INSERT  – Add new records
2. UPDATE  – Modify existing records
3. DELETE  – Remove records

Author: Parin Patil
Learning Notes
Reference inspiration: Data With Baraa SQL tutorials
========================================================== */

/* ==========================================================
   INSERT STATEMENTS
-------------------------------------------------------------
Used to add new rows into a table.
========================================================== */

-- Insert multiple records into customers table
INSERT INTO customers (id, first_name, country, score)
VALUES
(6, 'Anna', 'USA', NULL),
(7, 'Sam', NULL, 100);

-- Insert a complete record
INSERT INTO customers (id, first_name, country, score)
VALUES (8, 'Max', 'USA', 368);

-- Insert without specifying column names
-- (works only if values follow table column order)
INSERT INTO customers
VALUES (9, 'Andreas', 'Germany', NULL);

-- Insert partial data (remaining columns become NULL or default)
INSERT INTO customers (id, first_name)
VALUES (10, 'Sahra');

/* ==========================================================
   INSERT USING SELECT
-------------------------------------------------------------
Used to copy data from one table into another table.
========================================================== */

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
    id,
    first_name,
    NULL,
    'Unknown'
FROM customers;

/* ==========================================================
   UPDATE STATEMENTS
-------------------------------------------------------------
Used to modify existing records in a table.
========================================================== */

-- Update score for a specific customer
UPDATE customers
SET score = 0
WHERE id = 6;

-- Update multiple columns
UPDATE customers
SET score = 0,
    country = 'UK'
WHERE id = 10;

-- Replace NULL scores with 0
UPDATE customers
SET score = 0
WHERE score IS NULL;

-- Verify updated records
SELECT *
FROM customers
WHERE score IS NULL;

/* ==========================================================
   DELETE STATEMENTS
-------------------------------------------------------------
Used to remove records from a table.
========================================================== */

-- Check records before deleting
SELECT *
FROM customers
WHERE id > 5;

-- Delete selected rows
DELETE FROM customers
WHERE id > 5;

-- Remove all records from table
DELETE FROM persons;

-- Faster method to remove all rows (cannot be rolled back easily)
TRUNCATE TABLE persons;

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


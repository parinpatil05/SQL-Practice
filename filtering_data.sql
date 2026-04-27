/* ==========================================================
   SQL DATA FILTERING
-------------------------------------------------------------
This file demonstrates how to filter records in SQL using
different operators with the WHERE clause.

Topics Covered
1. Comparison Operators
2. Logical Operators
3. Range Filtering (BETWEEN)
4. Set Filtering (IN)
5. Pattern Matching (LIKE)

Author: Parin Patil
Learning Notes
Reference inspiration: Data With Baraa SQL tutorials
========================================================== */


/* ==========================================================
   COMPARISON OPERATORS
-------------------------------------------------------------
Used to compare values in conditions.
========================================================== */

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- Retrieve customers not from Germany
SELECT *
FROM customers
WHERE country <> 'Germany';

-- Customers with score greater than 500
SELECT *
FROM customers
WHERE score > 500;

-- Customers with score greater than or equal to 500
SELECT *
FROM customers
WHERE score >= 500;

-- Customers with score less than 500
SELECT *
FROM customers
WHERE score < 500;

-- Customers with score less than or equal to 500
SELECT *
FROM customers
WHERE score <= 500;


/* ==========================================================
   LOGICAL OPERATORS
-------------------------------------------------------------
Used to combine multiple conditions.
========================================================== */

-- Customers from USA with score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

-- Customers from USA OR score greater than 500
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

-- Customers whose score is not less than 500
SELECT *
FROM customers
WHERE NOT score < 500;


/* ==========================================================
   RANGE FILTERING (BETWEEN)
-------------------------------------------------------------
Used to filter values within a specific range.
========================================================== */

-- Customers with score between 100 and 500
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

-- Equivalent condition using comparison operators
SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;


/* ==========================================================
   SET FILTERING (IN)
-------------------------------------------------------------
Used to match multiple possible values.
========================================================== */

-- Customers from Germany or USA
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');


/* ==========================================================
   PATTERN MATCHING (LIKE)
-------------------------------------------------------------
Used to search text patterns.
========================================================== */

-- Names starting with 'M'
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Names ending with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Names containing 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- 'r' in the third position
SELECT *
FROM customers
WHERE first_name LIKE '__r%';

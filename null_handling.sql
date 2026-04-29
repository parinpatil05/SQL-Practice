/* ==========================================================
   SQL NULL HANDLING
-------------------------------------------------------------
NULL represents missing or unknown data in SQL.

This file demonstrates how to work with NULL values using
different SQL techniques.

Author: Parin Patil
========================================================== */


/* ==========================================================
   CHECKING NULL VALUES
========================================================== */

-- Find customers where score is NULL
SELECT *
FROM customers
WHERE score IS NULL;

-- Find customers where score is NOT NULL
SELECT *
FROM customers
WHERE score IS NOT NULL;


/* ==========================================================
   REPLACING NULL VALUES
========================================================== */

-- Replace NULL score values with 0
SELECT 
    id,
    first_name,
    ISNULL(score, 0) AS score
FROM customers;


/* ==========================================================
   USING COALESCE
========================================================== */

-- Return first non-null value
SELECT 
    id,
    first_name,
    COALESCE(score, 0) AS score
FROM customers;


/* ==========================================================
   NULL IN AGGREGATION
========================================================== */

-- Calculate average score (NULL values are ignored)
SELECT AVG(score) AS average_score
FROM customers;

-- Count rows where score exists
SELECT COUNT(score) AS total_scores
FROM customers;

-- Count all rows including NULL values
SELECT COUNT(*) AS total_rows
FROM customers;

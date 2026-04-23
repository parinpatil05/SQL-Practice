/* =============================================================================
   SQL SELECT QUERIES - PRACTICE GUIDE
   -----------------------------------------------------------------------------
   This file contains examples of commonly used SQL SELECT queries used for 
   retrieving, filtering, sorting, and aggregating data.

   Author: Parin Patil
   Purpose: Personal SQL learning and practice
   Reference Inspiration: Data With Baraa SQL Tutorials
============================================================================= */


/* =============================================================================
   BASIC SELECT STATEMENTS
============================================================================= */

-- Retrieve all columns from the customers table
SELECT *
FROM customers;

-- Retrieve all columns from the orders table
SELECT *
FROM orders;


/* =============================================================================
   SELECT SPECIFIC COLUMNS
============================================================================= */

-- Retrieve selected columns instead of the entire table
SELECT 
    first_name,
    country,
    score
FROM customers;


/* =============================================================================
   FILTERING DATA (WHERE CLAUSE)
============================================================================= */

-- Retrieve customers whose score is not zero
SELECT *
FROM customers
WHERE score != 0;

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';

-- Retrieve specific columns for German customers
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany';


/* =============================================================================
   SORTING RESULTS (ORDER BY)
============================================================================= */

-- Sort customers by highest score
SELECT *
FROM customers
ORDER BY score DESC;

-- Sort customers by lowest score
SELECT *
FROM customers
ORDER BY score ASC;

-- Sort customers alphabetically by country
SELECT *
FROM customers
ORDER BY country ASC;

-- Sort by country first, then by highest score
SELECT *
FROM customers
ORDER BY country ASC, score DESC;

-- Filter and then sort results
SELECT
    first_name,
    country,
    score
FROM customers
WHERE score != 0
ORDER BY score DESC;


/* =============================================================================
   GROUPING DATA (GROUP BY)
============================================================================= */

-- Calculate total score for each country
SELECT 
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Calculate total score and number of customers per country
SELECT 
    country,
    SUM(score) AS total_score,
    COUNT(id) AS total_customers
FROM customers
GROUP BY country;


/* =============================================================================
   FILTERING GROUPED DATA (HAVING)
============================================================================= */

-- Find countries where average score is greater than 430
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
GROUP BY country
HAVING AVG(score) > 430;

-- Apply row filtering before grouping
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;


/* =============================================================================
   DISTINCT VALUES
============================================================================= */

-- Retrieve unique country names
SELECT DISTINCT country
FROM customers;


/* =============================================================================
   LIMITING RESULTS
============================================================================= */

-- Retrieve first 3 customers
SELECT TOP 3 *
FROM customers;

-- Retrieve top 3 customers with highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Retrieve lowest 2 scores
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Retrieve latest two orders
SELECT TOP 2 *
FROM orders
ORDER BY order_date DESC;


/* =============================================================================
   COMBINING MULTIPLE OPERATIONS
============================================================================= */

-- Average score per country with filters and sorting
SELECT
    country,
    AVG(score) AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY avg_score DESC;


/* =============================================================================
   EXTRA SQL EXAMPLES
============================================================================= */

-- Run multiple queries in sequence
SELECT * FROM customers;
SELECT * FROM orders;

-- Selecting constant values
SELECT 123 AS example_number;
SELECT 'Hello SQL' AS example_text;

-- Assign constant value to column
SELECT
    id,
    first_name,
    'New Customer' AS customer_type
FROM customers;

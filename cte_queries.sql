/* ==========================================================
   SQL COMMON TABLE EXPRESSIONS (CTE)
-------------------------------------------------------------
CTEs are temporary result sets used to simplify
complex SQL queries and improve readability.

Author: Parin Patil
========================================================== */


/* ==========================================================
   BASIC CTE
========================================================== */

-- Find employees with salary greater than 60000

WITH high_salary_employees AS (
    SELECT 
        id,
        name,
        department,
        salary
    FROM employees
    WHERE salary > 60000
)

SELECT *
FROM high_salary_employees;


/* ==========================================================
   CTE WITH AGGREGATION
========================================================== */

-- Calculate average salary per department

WITH department_salary AS (
    SELECT 
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)

SELECT *
FROM department_salary;


/* ==========================================================
   CTE WITH JOIN
========================================================== */

-- Find employees earning more than department average

WITH department_average AS (
    SELECT 
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)

SELECT 
    e.name,
    e.department,
    e.salary,
    d.avg_salary
FROM employees e
JOIN department_average d
ON e.department = d.department
WHERE e.salary > d.avg_salary;


/* ==========================================================
   MULTIPLE CTEs
========================================================== */

WITH total_orders AS (
    SELECT 
        customer_id,
        COUNT(*) AS total_orders
    FROM orders
    GROUP BY customer_id
),

high_order_customers AS (
    SELECT *
    FROM total_orders
    WHERE total_orders >= 3
)

SELECT *
FROM high_order_customers;


/* ==========================================================
   CTE WITH WINDOW FUNCTION
========================================================== */

-- Rank employees based on salary

WITH ranked_employees AS (
    SELECT 
        name,
        department,
        salary,
        RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)

SELECT *
FROM ranked_employees
WHERE salary_rank = 1;


/* ==========================================================
   RECURSIVE CTE
========================================================== */

-- Generate numbers from 1 to 5

WITH numbers AS (
    SELECT 1 AS num

    UNION ALL

    SELECT num + 1
    FROM numbers
    WHERE num < 5
)

SELECT *
FROM numbers;

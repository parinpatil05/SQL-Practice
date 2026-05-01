-- INNER JOIN example
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.id;

-- LEFT JOIN example
SELECT customers.name, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

-- RIGHT JOIN example
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.id;

/* ==========================================================
   REAL-WORLD JOIN PROBLEMS
-------------------------------------------------------------
These queries simulate practical use cases.
========================================================== */

-- Find customers who have NOT placed any orders
SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

-- Find total orders per customer
SELECT 
    c.first_name,
    COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.first_name;

-- Find customers with more than 2 orders
SELECT 
    c.first_name,
    COUNT(o.id) AS total_orders
FROM customers c
JOIN orders o
ON c.id = o.customer_id
GROUP BY c.first_name
HAVING COUNT(o.id) > 2;

-- Find the latest order for each customer
SELECT *
FROM (
    SELECT 
        o.*,
        ROW_NUMBER() OVER (
            PARTITION BY o.customer_id 
            ORDER BY o.order_date DESC
        ) AS rn
    FROM orders o
) t
WHERE rn = 1;

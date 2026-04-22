-- Subquery Example 1
-- Find employees who earn more than the average salary

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Subquery Example 2
-- Find students who scored higher than the average marks

SELECT name, marks
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);


-- Subquery Example 3
-- Find employees working in the same department as 'John'

SELECT name, department
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    WHERE name = 'John'
);


-- Subquery Example 4
-- Find customers who placed at least one order

SELECT name
FROM customers
WHERE id IN (
    SELECT customer_id
    FROM orders
);


-- Subquery Example 5
-- Find products with price higher than the average product price

SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- COUNT Example
-- Count total number of students

SELECT COUNT(*) AS total_students
FROM students;


-- SUM Example
-- Find total sales amount

SELECT SUM(amount) AS total_sales
FROM orders;


-- AVG Example
-- Find average salary of employees

SELECT AVG(salary) AS average_salary
FROM employees;


-- MAX Example
-- Find highest salary

SELECT MAX(salary) AS highest_salary
FROM employees;


-- MIN Example
-- Find lowest product price

SELECT MIN(price) AS lowest_price
FROM products;


-- Aggregation with GROUP BY
-- Total salary per department

SELECT department, SUM(salary)
FROM employees
GROUP BY department;


-- Aggregation with HAVING
-- Departments with average salary greater than 50000

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

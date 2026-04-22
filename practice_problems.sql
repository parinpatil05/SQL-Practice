-- Problem 1
-- Find the second highest salary

SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);


-- Problem 2
-- Find employees whose salary is above the company average

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- Problem 3
-- Count number of orders placed by each customer

SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;


-- Problem 4
-- Find the highest marks scored in each subject

SELECT subject, MAX(marks)
FROM exams
GROUP BY subject;


-- Problem 5
-- List customers who have placed more than 3 orders

SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 3;


-- Problem 6
-- Find products that cost more than the average product price

SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

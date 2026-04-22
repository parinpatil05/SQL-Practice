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

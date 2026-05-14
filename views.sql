-- Creating employees table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(100),
    salary INT
);

-- Creating view
CREATE VIEW high_salary_employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE salary > 50000;

-- Using view
SELECT *
FROM high_salary_employees;

-- Updating view
CREATE OR REPLACE VIEW high_salary_employees AS
SELECT emp_name, salary
FROM employees
WHERE salary > 60000;

-- Dropping view
DROP VIEW high_salary_employees;

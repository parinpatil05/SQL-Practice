-- Creating table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary INT
);

-- Creating index on department column
CREATE INDEX idx_department
ON employees(department);

-- Query using indexed column
SELECT *
FROM employees
WHERE department = 'IT';

-- Viewing indexes
SHOW INDEXES FROM employees;

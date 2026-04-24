/* ==========================================================
   SQL WINDOW FUNCTIONS
   ----------------------------------------------------------
   Window functions perform calculations across rows related
   to the current row without grouping them.
========================================================== */

-- Example Table
-- employees(id, name, department, salary)

-- 1. RANK employees by salary

SELECT 
    name,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;


-- 2. Rank employees within each department

SELECT 
    name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;


-- 3. ROW_NUMBER example

SELECT 
    name,
    department,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;


-- 4. Running total of salaries

SELECT 
    name,
    salary,
    SUM(salary) OVER (ORDER BY salary) AS running_total
FROM employees;


-- 5. Average salary by department

SELECT 
    name,
    department,
    salary,
    AVG(salary) OVER (PARTITION BY department) AS avg_department_salary
FROM employees;

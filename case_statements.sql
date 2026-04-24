/* ==========================================================
   SQL CASE STATEMENTS
   ----------------------------------------------------------
   CASE allows conditional logic inside SQL queries.
   It works similar to IF-ELSE statements in programming.
========================================================== */

-- Example Table
-- employees(id, name, department, salary)

-- 1. Categorize employees based on salary

SELECT 
    name,
    salary,
    CASE
        WHEN salary >= 90000 THEN 'High Salary'
        WHEN salary >= 60000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category
FROM employees;


-- 2. Department based classification

SELECT 
    name,
    department,
    CASE
        WHEN department = 'IT' THEN 'Technical'
        WHEN department = 'HR' THEN 'Management'
        ELSE 'Other'
    END AS department_type
FROM employees;


-- 3. Performance rating example

SELECT 
    name,
    score,
    CASE
        WHEN score >= 90 THEN 'Excellent'
        WHEN score >= 75 THEN 'Good'
        WHEN score >= 50 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance
FROM students;


-- 4. Using CASE with ORDER BY

SELECT 
    name,
    salary
FROM employees
ORDER BY 
    CASE
        WHEN department = 'IT' THEN 1
        WHEN department = 'HR' THEN 2
        ELSE 3
    END;

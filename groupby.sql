-- Count students in each department
SELECT department, COUNT(*)
FROM students
GROUP BY department;

-- Average salary per department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;

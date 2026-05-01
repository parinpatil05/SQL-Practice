-- Find nth highest salary (3rd highest)
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
OFFSET 2 ROWS FETCH NEXT 1 ROW ONLY;

-- Find employees with same salary
SELECT e1.name, e2.name, e1.salary
FROM employees e1
JOIN employees e2
ON e1.salary = e2.salary
AND e1.id <> e2.id;

-- Creating employees table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(100),
    salary INT
);

DELIMITER //

CREATE PROCEDURE GetEmployeeBySalary(IN min_salary INT)
BEGIN

    SELECT *
    FROM employees
    WHERE salary >= min_salary;

END //

DELIMITER ;

-- Calling procedure
CALL GetEmployeeBySalary(40000);

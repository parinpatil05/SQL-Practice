-- Creating employees table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(100),
    salary INT
);

-- Creating audit table
CREATE TABLE employee_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255)
);

DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT
ON employees
FOR EACH ROW

BEGIN

    INSERT INTO employee_audit(message)
    VALUES (
        CONCAT('New employee added: ', NEW.emp_name)
    );

END //

DELIMITER ;

-- Inserting data
INSERT INTO employees
VALUES (1, 'Rahul', 50000);

-- Checking audit logs
SELECT *
FROM employee_audit;

SELECT * FROM my_database.customers;

CREATE PROCEDURE GetEmployeesByDept(
    IN dept_name VARCHAR(100)
)
BEGIN
    SELECT first_name, last_name, salary
    FROM employees
    WHERE department = dept_name;
END //

CALL GetEmployeesByDept('Sales');

DELIMITER //

CREATE FUNCTION CalculateBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE bonus DECIMAL(10,2);
    IF salary > 50000 THEN
        SET bonus = salary * 0.10;
    ELSE
        SET bonus = salary * 0.05;
    END IF;
    RETURN bonus;
END //

DELIMITER ;

SELECT first_name, last_name, CalculateBonus(salary) AS bonus
FROM employees;





use BankDB;
DELIMITER $$

CREATE PROCEDURE UpdateEmployeeBonus(
    IN dept_name VARCHAR(50),
    IN bonus_percent DECIMAL(5,2)
)
BEGIN

    UPDATE Employees
    SET Salary = Salary + (Salary * bonus_percent / 100)
    WHERE Department = dept_name;

    SELECT CONCAT(
        'Bonus applied to department: ',
        dept_name
    ) AS Message;

END $$

DELIMITER ;
CALL UpdateEmployeeBonus('IT',10);
SELECT * FROM Employees;
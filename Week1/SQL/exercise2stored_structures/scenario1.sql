USE BankDB;
DELIMITER $$

CREATE PROCEDURE ProcessMonthlyInterest()
BEGIN

    UPDATE Accounts
    SET Balance = Balance * 1.01,
        LastModified = CURDATE()
    WHERE AccountType = 'Savings';

    SELECT 'Interest applied to all savings accounts.' AS Message;

END $$

DELIMITER ;
CALL ProcessMonthlyInterest();
SELECT * FROM Accounts;
use BankDB;
DELIMITER $$

CREATE PROCEDURE LoanReminder()
BEGIN

    SELECT
        L.LoanID,
        C.Name,
        L.EndDate,
        CONCAT(
            'Reminder: Loan ',
            L.LoanID,
            ' for ',
            C.Name,
            ' is due on ',
            L.EndDate
        ) AS Reminder_Message
    FROM Loans L
    JOIN Customers C
        ON C.CustomerID = L.CustomerID
    WHERE L.EndDate BETWEEN CURDATE()
                        AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

END $$

DELIMITER ;
CALL LoanReminder();
show tables;
select * from Loans;

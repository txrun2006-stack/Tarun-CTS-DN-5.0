use BankDB;
DELIMITER $$

CREATE PROCEDURE MarkVIPCustomers()
BEGIN

    UPDATE Customers
    SET IsVIP = 'Y'
    WHERE Balance > 10000;

    SELECT CustomerID, Name
    FROM Customers
    WHERE IsVIP='Y';

END $$

DELIMITER ;
CALL MarkVIPCustomers();
use BankDB;
DELIMITER $$

CREATE PROCEDURE TransferFunds(
    IN from_account_id INT,
    IN to_account_id INT,
    IN transfer_amount DECIMAL(10,2)
)
BEGIN

    DECLARE src_balance DECIMAL(10,2);

    SELECT Balance
    INTO src_balance
    FROM Accounts
    WHERE AccountID = from_account_id;

    IF src_balance IS NULL THEN

        SELECT 'Source account not found' AS Message;

    ELSEIF src_balance < transfer_amount THEN

        SELECT 'Transfer failed: Insufficient funds' AS Message;

    ELSE

        UPDATE Accounts
        SET Balance = Balance - transfer_amount,
            LastModified = CURDATE()
        WHERE AccountID = from_account_id;

        UPDATE Accounts
        SET Balance = Balance + transfer_amount,
            LastModified = CURDATE()
        WHERE AccountID = to_account_id;

        SELECT CONCAT(
            'Transfer of ',
            transfer_amount,
            ' completed successfully'
        ) AS Message;

    END IF;

END $$

DELIMITER ;
CALL TransferFunds(1,2,100);
SELECT * FROM Accounts;
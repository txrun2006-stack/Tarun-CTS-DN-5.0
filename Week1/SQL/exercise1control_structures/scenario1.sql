use BankDB;
DELIMITER $$

CREATE PROCEDURE ApplySeniorCitizenDiscount()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_customerid INT;
    DECLARE v_name VARCHAR(100);
    DECLARE v_dob DATE;
    DECLARE v_age INT;

    DECLARE cur CURSOR FOR
        SELECT CustomerID, Name, DOB
        FROM Customers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET done = TRUE;

    OPEN cur;

    read_loop: LOOP

        FETCH cur INTO v_customerid, v_name, v_dob;

        IF done THEN
            LEAVE read_loop;
        END IF;

        SET v_age = TIMESTAMPDIFF(YEAR, v_dob, CURDATE());

        IF v_age > 60 THEN

            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = v_customerid;

            SELECT CONCAT(
                'Customer ', v_name,
                ' received 1% interest discount'
            ) AS Message;

        END IF;

    END LOOP;

    CLOSE cur;

END $$

DELIMITER ;
CALL ApplySeniorCitizenDiscount();
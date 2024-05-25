use bank;

DELIMITER //
CREATE FUNCTION is_eligible(
balance INT
) 
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE customer_status VARCHAR(20);
IF balance > 100 THEN
SET customer_status = 'YES';
ELSEIF (balance >= 50 AND 
balance <= 100) THEN
SET customer_status = 'MAYBE';
ELSEIF balance < 50 THEN
SET customer_status = 'NO';
END IF;
RETURN (customer_status);
END//balance
DELIMITER ;

select * from bank.accounts;

SELECT 
account_holder_name,
account_holder_surname,
balance,
is_eligible(balance)
FROM
accounts;
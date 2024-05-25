use practice;

-- Change Delimiter
DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE Greetings( GreetingWorld VARCHAR(100), FirstName VARCHAR(100))
BEGIN
DECLARE FullGreeting VARCHAR(200);
SET FullGreeting = CONCAT(GreetingWorld,' ',FirstName);
SELECT FullGreeting;
END//
-- Change Delimiter again
DELIMITER ;

-- Call Stored Procedure
CALL Greetings('Bonjour,', 'Dave');
CALL Greetings('Hola,', 'Dora');
CALL Greetings('Terve,', 'Elena');

-- ---------------------
use bakery;
SELECT *
FROM sweet;

-- Change Delimiter
DELIMITER //
-- Create Stored Procedure
CREATE PROCEDURE InsertValue(
IN id INT, 
IN sweetItem VARCHAR(100),
IN price FLOAT)
BEGIN

INSERT INTO sweet(id,item_name, price)
VALUES (id,sweetItem, price);

END//
-- Change Delimiter again
DELIMITER ;

CALL InsertValue (11, 'cherry_cake', 5);


SELECT *
FROM sweet;

DROP PROCEDURE InsertValue;

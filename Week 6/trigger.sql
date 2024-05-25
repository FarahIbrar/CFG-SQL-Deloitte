SELECT *
FROM bakery.sweet;

-- BEFORE Trigger - this one ensures font consistency for inserted items
-- Change Delimiter
DELIMITER //

CREATE TRIGGER sweetItem_Before_Insert
BEFORE INSERT on sweet
FOR EACH ROW
BEGIN
SET NEW.item_name = CONCAT(UPPER(SUBSTRING(NEW.item_name,1,1)),
LOWER(SUBSTRING(NEW.item_name FROM 2)));
END//

-- Change Delimiter
DELIMITER ;

-- Insert Data
INSERT INTO sweet (id, item_name, price)
VALUES (123, 'apple_pie', 1.2);

INSERT INTO sweet (id, item_name, price)
VALUES (456, 'caramel slice', 0.9);

INSERT INTO sweet (id, item_name, price)
VALUES (789, 'YUM YUM', 0.65);


SELECT *
FROM bakery.sweet;



-- "UNIQUE CONTRAINT" --
USE parts;
ALTER TABLE part
ADD CONSTRAINT unique_pid UNIQUE (P_ID);

SELECT * FROM part;

-- The main difference here to notice is that:
-- Attempts to insert or update rows with duplicate values in the 'P_ID' column will be rejected
-- And one will receive an error message indicating that the constraint has been violated. 
-- This ensures that each 'P_ID' value in the part table must be unique.

-- For example, if I try to insert a new row with a 'P_ID' value that already exists in the table:
INSERT INTO part (P_ID, PNAME, COLOUR, WEIGHT, CITY)
VALUES ('P1', 'BOLT', 'GREEN', 17, 'PARIS');

-- I received an error message similar to:
-- Error Code: 1062. Duplicate entry 'P1' for key 'unique_pid'

-- This error indicates that the insertion failed because the UNIQUE constraint 'unique_pid' was violated due to the duplicate 'P_ID' value.
-- To verify that the constraint has been successfully added to the table,
-- I used SQL queries to inspect the table's structure and constraints. For example:

SHOW CREATE TABLE part;

-- This query will display the table structure, including any constraints defined on the table. 
-- One should be able to see the 'unique_pid' constraint listed among the table's constraints. 
-- Additionally, you can query the information schema to retrieve information about the constraints applied to the table:

SELECT constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_name = 'part';

-- This query will list all constraints defined on the part table, including the 'unique_pid' constraint and its type (e.g., UNIQUE). 
-- This confirms that the UNIQUE constraint has been successfully added to the 'P_ID' column in the part table.
-- Results shown, *added succesfully.*





-- "CHECK CONSTRAINT" --
-- The CHECK constraint in SQL to enforce specific conditions on column values.
-- I wanted to ensure that the WEIGHT of a part is always greater than 0. 

ALTER TABLE part
ADD CONSTRAINT check_weight CHECK (WEIGHT > 0);

-- This CHECK constraint ensures that the WEIGHT column in the part table always contains values greater than 0.

-- To check if it actually worked, I tried this:
INSERT INTO part (P_ID, PNAME, COLOUR, WEIGHT, CITY)
VALUES ('P7', 'GEAR', 'BLACK', 25, 'BERLIN');
-- If the weight constraint is working correctly,
-- this insertion should succeed because the weight (25) is greater than 0.

SELECT * FROM part;
-- It worked.

-- Attempt to insert a row with a negative weight, if it allows as it shouldn't
INSERT INTO part (P_ID, PNAME, COLOUR, WEIGHT, CITY)
VALUES ('P8', 'WASHER', 'WHITE', -5, 'MADRID');
-- Rejected, didn't work. *Constraint added successfully.* 





-- PRIMARY KEY CONSTRAINT -- 
--  I can set the 'P_ID' column as the primary key in the part table, as it uniquely identifies each part.
ALTER TABLE part
ADD CONSTRAINT pk_part_id PRIMARY KEY (P_ID);
-- Successfully added





-- FOREIGN KEY CONSTRAINT -- 
-- I created a foreign key constraint on the 'S_ID' column in the supply table that references the 'S_ID' column in the supplier table. 
-- This constraint ensures that only valid supplier IDs can be inserted into the supply table.
ALTER TABLE supply
ADD CONSTRAINT fk_supplier_id FOREIGN KEY (S_ID) REFERENCES supplier(S_ID);
-- #Error Code: 1822. Failed to add the foreign key constraint. Missing index for constraint 'fk_supplier_id' in the referenced table 'supplier'
-- The error message indicates that there is no index on the referenced column '(S_ID)' in the referenced table '(supplier)'. In MySQL, when you create a FOREIGN KEY constraint, an index on the referenced column is required for performance reasons.

CREATE INDEX idx_supplier_id ON supplier(S_ID);

ALTER TABLE supply
ADD CONSTRAINT fk_supplier_id FOREIGN KEY (S_ID) REFERENCES supplier(S_ID);
-- Successfully added


-- Testing PRIMARY and FOREIGN KEY CONSTRAINTS
-- Both are adding duplicated and both should fail which means both CONSTRAINTS have been added successfully

-- PRIMARY KEY test
INSERT INTO part (P_ID, PNAME, COLOUR, WEIGHT, CITY)
VALUES ('P1', 'NUT', 'RED', 12, 'LONDON');
-- Failed 

-- FOREIGN KEY test
INSERT INTO supply (S_ID, P_ID, J_ID, QUANTITY)
VALUES ('S6', 'P1', 'J1', 200);
-- Failed

-- *BOTH CONSTRAINTS WORKS* 





-- DEFAULT CONSTRAINTS --
CREATE TABLE extra (
    X_ID VARCHAR(50),
    X_NAME VARCHAR(50),
    EMAIL VARCHAR(100) DEFAULT 'example@example.com',
    PHONE VARCHAR(20) DEFAULT '000-000-0000'
);

-- Created a new table to work with DEFAULT CONSTRAINT.
-- Now, if I insert a new row into the customer table without specifying values for the EMAIL and PHONE columns, 
-- they will automatically default to the values specified in the DEFAULT constraints.

-- For example;
INSERT INTO extra (X_ID, X_NAME) VALUES ('X1', 'John Doe');
SELECT * FROM extra;

-- This has inserted a new row into the 'extra' table with the 'EMAIL column' set to 'example@example.com' and the PHONE column set to '000-000-0000' by default.
-- *It successfully worked.*




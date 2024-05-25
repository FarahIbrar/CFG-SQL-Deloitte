CREATE DATABASE JOINS_PRACTICE;

USE JOINS_PRACTICE;

-- Create table 1
CREATE TABLE Table1_fruit_basket
(ID INT, Fruit VARCHAR(50));
INSERT INTO Table1_fruit_basket 
(ID, Fruit)
VALUES
(1, 'pear'),
(2, 'apple'),
(3, 'kiwi'),
(4, 'orange'),
(5, 'banana');


-- Create table 2
CREATE TABLE Table2_fruit_basket
(ID INT, Fruit VARCHAR(50));
INSERT INTO Table2_fruit_basket 
(ID, Fruit)
VALUES
(1, 'pear'),
(2, 'apple'),
(3, 'kiwi'),
(6, 'melon'),
(7, 'peach'),
(8, 'plum');


SELECT *
FROM Table1_fruit_basket;
SELECT *
FROM Table2_fruit_basket;

/* INNER JOIN */
SELECT t1.*, t2.*
FROM Table1_fruit_basket t1
INNER JOIN Table2_fruit_basket t2 
ON t1.ID = t2.ID;


/* INNER JOIN */
SELECT t1.ID AS T1ID, t1.Fruit AS T1Fruit, t2.ID AS T2ID, t2.Fruit AS T2Fruit
FROM Table1_fruit_basket t1
INNER JOIN Table2_fruit_basket t2 
ON t1.ID = t2.ID;


/* LEFT JOIN */
SELECT t1.*, t2.*
FROM Table1_fruit_basket t1
LEFT JOIN Table2_fruit_basket t2 
ON t1.ID = t2.ID;


/* RIGHT JOIN */
SELECT t1.*, t2.*
FROM Table1_fruit_basket t1
RIGHT JOIN Table2_fruit_basket t2 
ON t1.ID = t2.ID;


/* OUTER JOIN */
SELECT t1.*,t2.*
FROM Table1_fruit_basket t1
FULL OUTER JOIN Table2_fruit_basket t2 
ON t1.ID = t2.ID;
-- Throws an error !!!!!!!!

-- You can emulate FULL OUTER JOIN using UNION:
with two tables t1, t2:

SELECT * FROM Table1_fruit_basket t1
LEFT JOIN Table2_fruit_basket t2 ON t1.ID = t2.ID
UNION
SELECT * FROM Table1_fruit_basket t1
RIGHT JOIN Table2_fruit_basket t2 ON t1.id = t2.id

-- Throws an error again. 1064: You have an error in your SQL syntax; 
-- check the manual that corresponds to your MySQL server version for the right syntax 
-- to use near 'tables t1, t2: SELECT * FROM Table1_fruit_basket t1 LEFT JOIN Table2_fruit_baske' at line 1.alter

-- To fix this, one should remove the phrase "with two tables t1, t2:" from the query. 
SELECT * FROM Table1_fruit_basket t1
LEFT JOIN Table2_fruit_basket t2 ON t1.ID = t2.ID
UNION
SELECT * FROM Table1_fruit_basket t1
RIGHT JOIN Table2_fruit_basket t2 ON t1.id = t2.id;
-- This should work!


/* LEFT JOIN - WHERE NULL */
SELECT t1.*, t2.*
FROM Table1_fruit_basket t1
LEFT JOIN Table2_fruit_basket t2 ON t1.ID = t2.ID
WHERE t2.ID IS NULL;


/* CROSS JOIN */
SELECT t1.*,t2.*
FROM Table1_fruit_basket t1
CROSS JOIN Table2_fruit_basket t2;


-- Clean up (optional)
DROP TABLE Table1;
DROP TABLE Table2;
-- No clean up was carried out at this point, both tables still exist.

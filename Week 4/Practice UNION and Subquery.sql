-- Subquery practice with customers_db
USE customers;

SELECT first_name, last_name
FROM customers.customer c
WHERE c.customer_id IN (SELECT ph.phone_number_customer_id
FROM customers.phone_number ph 
WHERE ph.phone_number = '555-3344');

-- The result of the query should be a list of first names and last names of customers 
-- whose phone number matches '555-3344'.
-- Results achieved. 

-- Practicing more by writing queries with UNION operators (based on the fruit tables).
USE JOINS_PRACTICE;

/* UNION ALL */
SELECT t1.ID T1ID, t1.Fruit AS T1Fruit
FROM Table1_fruit_basket t1
UNION ALL
SELECT  t2.ID AS T2ID, t2.Fruit AS T2Fruit
FROM Table2_fruit_basket t2;
-- UNION ALL combines the result sets of two or more SELECT statements into a single result set including duplicates.


/* UNION */
SELECT t1.ID T1ID, t1.Fruit AS T1Fruit
FROM Table1_fruit_basket t1
UNION
SELECT  t2.ID AS T2ID, t2.Fruit AS T2Fruit
FROM Table2_fruit_basket t2;
-- UNION combines the result sets of two or more SELECT statements into a single result set while removing duplicates. 


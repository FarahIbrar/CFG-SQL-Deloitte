-- View practice
-- Let's use our DB shop, table Sales1 that we created a while ago 
-- Alternatively any default DB such as world or sakila can be used for examples. 

USE shop;
SELECT * FROM shop.sales1;

-- create view
CREATE VIEW vw_salesmen
AS 
SELECT SalesPerson, SalesAmount
FROM sales1;

SELECT *
FROM vw_salesmen;

-- you can query the view in exactly the same way as a table
SELECT DISTINCT SalesPerson, Max(SalesAmount)
FROM vw_salesmen
WHERE SalesAmount > 70 
GROUP BY SalesPerson;



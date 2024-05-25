-- Create DB using Workbench DB design tools, not SLQ code statements.
-- Create it and bring it to use.

USE mock_project_db;

-- When the table is created, programmatically use the relevant DB and then click add a new table icon.
-- Use workbench tools to add column names, types, put constraints (PK, FK etc), similar to what is present in orders.csv file. 

-- When all columns are added, you should have a table
-- Run a query to return everything from a newly created table – it would return an empty table.
SELECT * FROM orders;
-- Empty table 

-- Now load CSV data into the table
-- Click the button to upload data from an external file next to Export/Import
-- Try the query again to see if the data has been added
SELECT * FROM orders;
-- Data successfully added

-- Create another table called customers and follow the same steps
-- After creating the table, check if it returns empty
SELECT * FROM customers;
-- Returns empty 

-- Now upload the csv file data into it and check again
SELECT * FROM customers;
-- Action successful

-- Select the sum of money spent per customer
SELECT
c.cust_id,
c.country,
SUM(o.total_price) AS total_spent
FROM Orders o
JOIN Customers c ON o.cust_id = c.cust_id
GROUP BY c.cust_id, c.country
ORDER BY total_spent DESC;

-- Save the results of each file to upload it to tableau 

-- Revenue customer-country
SELECT
c.country,
SUM(o.total_price) AS total_revenue
FROM Orders o
JOIN Customers c ON o.cust_id = c.cust_id
GROUP BY c.country
ORDER BY total_revenue DESC;



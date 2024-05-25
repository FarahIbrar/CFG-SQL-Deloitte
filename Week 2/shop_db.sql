CREATE DATABASE SHOP;

USE SHOP;

CREATE TABLE SALES1 (
Store VARCHAR(50),
Week INT,
Day VARCHAR(10),
SalesPerson VARCHAR(55),
SalesAmount DECIMAL(8,2),
Month CHAR(3)
);


INSERT INTO SALES1
(Store, Week, Day, SalesPerson, SalesAmount, Month)
VALUES
('London', 2, 'Monday', 'Frank', 56.25, 'May'),
('London', 5, 'Tuesday', 'Frank', 74.32, 'Sep'),
('London', 5, 'Monday', 'Bill', 98.42, 'Sep'),
('London', 5, 'Saturday', 'Bill', 73.90, 'Dec'),
('London', 1, 'Tuesday', 'Josie', 44.27, 'Sep'),
('Dusseldorf', 4, 'Monday', 'Manfred', 77.00, 'Jul'),
('Dusseldorf', 3, 'Tuesday', 'Igna', 9.99, 'Jun'),
('Dusseldorf', 4, 'Wednesday', 'Manfred', 86.81, 'Jul'),
('London', 6, 'Friday', 'Josie', 74.02, 'Oct'),
('Dusseldorf', 1, 'Saturday', 'Manfred', 43.11, 'Apr');
SELECT * FROM SALES1;

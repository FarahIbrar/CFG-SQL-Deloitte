-- TASK NO 1 ---
-- Design and create a relational normalised database called customers.
-- Set reasonable primary keys to the tables. 
-- Set NOT NULL constraints on the columns that you think must have values.

CREATE DATABASE Customers;

USE Customers;

CREATE TABLE Customer (
customer_id INT NOT NULL, 
first_name VARCHAR (50) NOT NULL, 
last_name VARCHAR (50) NULL,
CONSTRAINT PK_customer PRIMARY KEY 
(customer_id));

CREATE TABLE Address (
address_id INTEGER NOT NULL,
building_number VARCHAR(30) NOT NULL,
street VARCHAR(55) NOT NULL,
city VARCHAR(55),
post_code VARCHAR(30) NOT NULL,
country VARCHAR(65),
CONSTRAINT PK_Address PRIMARY KEY 
(address_id));

CREATE TABLE Email_Address (
email_address_id INTEGER NOT NULL,
email_address_customer_id INTEGER,
email_address VARCHAR(65) NOT NULL,
CONSTRAINT PK_Email_Address PRIMARY KEY 
(email_address_id));

CREATE TABLE Phone_Number (
phone_number_id INTEGER NOT NULL,
phone_number_customer_id INTEGER NOT NULL,
phone_number VARCHAR(30) NOT NULL,
CONSTRAINT PK_Phone_Number PRIMARY KEY 
(phone_number_id));

CREATE TABLE Orders (
order_id INTEGER NOT NULL,
orders_customer_id INTEGER NOT NULL,
order_date DATE NOT NULL,
CONSTRAINT PK_Orders PRIMARY KEY 
(order_id));

-- I wanted to change the 'NULL' constraint from last name to 'NOT NULL'
-- MySQL does not support directly altering the nullability of a column.
-- Hence why need to follow these steps.

-- Step 1: Add a new column with the desired nullability
ALTER TABLE Customer
ADD COLUMN new_last_name VARCHAR(50) NOT NULL;

-- Step 2: Copy data from the old column to the new column
UPDATE Customer
SET new_last_name = last_name;

-- Step 3: Drop the old column
ALTER TABLE Customer
DROP COLUMN last_name;

-- Step 4: Rename the new column to the old column's name
ALTER TABLE Customer
CHANGE COLUMN new_last_name last_name VARCHAR(50) NOT NULL;
-- *Action successfull*




-- TASK NO 2 --
-- Add some data to the tables in the customers database. 
INSERT INTO Customer 
(customer_id, first_name, last_name) 
VALUES 
(1, 'Jon', 'Flanders'),
(2, 'Sam', 'Smith');

INSERT INTO Address 
(address_id, building_number, street, city, post_code, country) 
VALUES 
(1, '20', 'Birch Alley', 'London', 'SE24 0AB', 'UK'),
(2, '17', 'Oak Street', 'London', 'SE25 0XY', NULL);

INSERT INTO Email_Address 
(email_address_id, email_address_customer_id, email_address)
VALUES 
(1, 2, 'ssmith@mail.com'),
(2, 1, 'jon@mail.com');

INSERT INTO Phone_Number 
(phone_number_id, phone_number_customer_id, phone_number) 
VALUES 
(1, 1, '555-1212'),
(2, 2, '555-3344');

INSERT INTO Orders 
(order_id, orders_customer_id, order_date) 
VALUES 
(1, 1, '2019-08-20'),
(2, 2, '2019-03-15');




-- TASK NO 3 --
-- Alter tables 'Email_Address' and 'Phone_Number' in the customers database by adding Foreign keys
-- that reference Primary keys from relevant tables. 
ALTER TABLE Email_Address  
ADD  CONSTRAINT 
FK_Email_Address_Customer FOREIGN KEY(email_address_customer_id)
REFERENCES Customer (customer_id);

ALTER TABLE Phone_Number  
ADD  CONSTRAINT 
FK_Phone_Number_Customer FOREIGN KEY(phone_number_customer_id)
REFERENCES Customer (customer_id);

-- Check if the foreign key constraints have been added successfully.
SELECT
CONSTRAINT_NAME,
TABLE_NAME,
COLUMN_NAME,
REFERENCED_TABLE_NAME,
REFERENCED_COLUMN_NAME
FROM
INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
TABLE_SCHEMA = 'Customers'
AND CONSTRAINT_NAME LIKE 'FK_%';
-- *Successfully added*


 

-- TASK NO 4 ---
-- Remove the table orders from the database.
DROP TABLE Orders;
-- *Successfully dropped* 

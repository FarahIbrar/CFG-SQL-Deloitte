-- Employee self join practice 
USE JOINS_PRACTICE;

-- Create a Table
CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY,
Name NVARCHAR(55),
ManagerID INT
);
-- This query showed up with a warning which indicates 
-- that a column or data type is using a character set that might become deprecated in future releases.

DROP table Employee;

CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY,
Name NVARCHAR(55),
ManagerID INT
) CHARACTER SET utf8mb4;
-- This again comes up with the same warning. 3720. 
-- It may still interprets the NVARCHAR declaration as potentially using the UTF8MB3 character set. 
DROP TABLE Employee;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(55) CHARACTER SET utf8mb4,
    ManagerID INT
);

-- This worked.

SELECT * FROM Employee;

-- Insert Sample Data
INSERT INTO Employee
(EmployeeID, Name, ManagerID)
VALUES
(1, 'Mike', 3),
(2, 'David', 3),
(3, 'Roger', NULL),
(4, 'Marry',2),
(5, 'Joseph',2),
(7, 'Ben',2);

-- Check the data
SELECT * FROM Employee;

-- Inner Join
SELECT e1.Name EmployeeName, e2.name AS ManagerName
FROM Employee e1
INNER JOIN Employee e2 ON e1.ManagerID = e2.EmployeeID;

-- Outer Join
SELECT e1.Name EmployeeName,
IFNULL(e2.name, 'Top Manager') AS ManagerName
FROM Employee e1 LEFT JOIN Employee e2 
ON e1.ManagerID = e2.EmployeeID;

-- Clean up (optional)
DROP TABLE Employee;
-- No clean up carried out at this point, Table still exists. 
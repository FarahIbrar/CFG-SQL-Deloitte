use practice; -- or create any other temporary DB

-- PART 1

CREATE TABLE practice.staff (
`employeeID` INT NOT NULL,
`firstname` VARCHAR(45) NOT NULL,
`lastname` VARCHAR(45) NOT NULL,
`jobtitle` VARCHAR(45) NOT NULL,
`managerID` INT NOT NULL,
`department` VARCHAR(45) NULL,
`salary` INT NOT NULL,
`dateofbirth` DATE NOT NULL,
PRIMARY KEY (`employeeID`));

INSERT INTO staff(
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department,
salary,
dateofbirth
) 
VALUES(
1245,
'Julie',
'Smith',
'DBA',
'3333',
'Database Administrators',
50000,
'1985-10-20'
),
(
4578,
'Jame',
'Blogs',
'DBA',
'3333',
'Database Administrators',
52000,
'1970-10-22'
);

ALTER TABLE practice.staff 
CHANGE COLUMN `salary` `salary` INT(11) NULL DEFAULT 0 ,
CHANGE COLUMN `dateofbirth` `dateofbirth` DATE NULL DEFAULT '1900-01-01' ;

SELECT * FROM practice.staff;

-- create a new view
CREATE OR REPLACE VIEW vw_staff_common AS
SELECT 
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department
        -- we don't want anyone except from HR to see people's salaries or dob, so the view would hid ethe info
FROM
staff
WHERE
jobtitle LIKE '%DB%';
   
-- vw_staff_common is a simple view, so it is possible to update it

-- Let's insert a row into the staff table through the vw_staff_common view.
INSERT INTO vw_staff_common (
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department
) 
VALUES(
8888,
'Mike',
'Davies',
'Developer',
2323,
'Database Administrators'
);

-- NBthat the newly created employee is not visible through the vw_staff_common view 
-- because employee's job title is Developer, which is not like the %DB% pattern. Y

select * from vw_staff_common; -- cannot see the new person

select * from staff;  --  can see the new person


-- PART 2

-- Let's modify the view to add WITH CHECK OPTION and see how it behaves. 

CREATE OR REPLACE VIEW vw_staff_common2 AS
SELECT 
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department
FROM
staff
WHERE
jobtitle LIKE '%DB%' 
WITH CHECK OPTION;
    
-- Again let's try to insert a row into the staff table through vw_staff_common2
INSERT INTO vw_staff_common2 (
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department
) 
VALUES(
5555,
'Thomas',
'Fisher',
'Developer',
8989,
'Database Administrators'
);
-- our attempt FAILS!!

-- now try to insert a record that complies with the '%DB%' condition
INSERT INTO vw_staff_common2 (
employeeID,
firstName,
lastName,
jobtitle,
managerID,
department
) 
VALUES(
2222,
'Thomas',
'Fisher',
'DB Developer', -- satisfies the condition
8989,
'Database Administrators'
);

select * from vw_staff_common;
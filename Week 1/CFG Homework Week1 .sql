CREATE DATABASE Parts;
USE parts;

CREATE TABLE part (
P_ID VARCHAR (50),
PNAME VARCHAR(50),
COLOUR VARCHAR(50),
WEIGHT INT,
CITY VARCHAR(50)
);

CREATE TABLE project (
J_ID VARCHAR (50),
JNAME VARCHAR(50),
CITY VARCHAR(50)
);

CREATE TABLE supplier (
S_ID VARCHAR (50), 
SNAME VARCHAR(50),
STATUS INT,
CITY VARCHAR(50)
);
SELECT * FROM supplier;

CREATE TABLE supply (
S_ID VARCHAR (50),
P_ID VARCHAR (50),
J_ID VARCHAR (50),
QUANTITY INT
);

INSERT INTO part
(P_ID, PNAME, COLOUR, WEIGHT, CITY)
VALUES
('P1', 'NUT', 'RED', 12, 'LONDON'),
('P2', 'BOLT', 'GREEN', 17, 'PARIS'),
('P3', 'SCREW', 'BLUE', 17, 'ROME'),
('P4', 'SCREW', 'RED', 14, 'LONDON'),
('P5', 'CAM', 'BLUE', 12, 'PARIS'),
('P6', 'COG', 'RED', 19, 'LONDON');

INSERT INTO project 
(J_ID, JNAME, CITY)
VALUES
('J1', 'SORTER', 'PARIS'),
('J2', 'DISPLAY', 'ROME'),
('J3', 'OCR', 'ATHENS'),
('J4', 'CONSOLE', 'ATHENS'),
('J5', 'RAID', 'LONDON'),
('J6', 'EDS', 'OSLO'),
('J7', 'TAPE', 'LONDON');

INSERT INTO supplier 
(S_ID, SNAME, STATUS, CITY)
VALUES
('S1', 'SMITH', 20, 'LONDON'),
('S2', 'JONES', 10, 'PARIS'),
('S3', 'BLAKE', 30, 'PARIS'),
('S4', 'CLARK', 20, 'LONDON'),
('S5', 'ADAMS', 30, 'ATHENS');

INSERT INTO supply
(S_ID, P_ID, J_ID, QUANTITY)
VALUES
('S1', 'P1', 'J1', 200),
('S1', 'P1', 'J4', 700),
('S2', 'P3', 'J1', 400),
('S2', 'P3', 'J2', 200),
('S2', 'P3', 'J3', 200),
('S2', 'P3', 'J4', 500),
('S2', 'P3', 'J5', 600),
('S2', 'P3', 'J6', 400),
('S2', 'P3', 'J7', 800), 
('S2', 'P5', 'J2', 100), 
('S3', 'P3', 'J1', 200),
('S3', 'P4', 'J2', 500),
('S4', 'P6', 'J3', 300),
('S4', 'P6', 'J7', 300),
('S5', 'P2', 'J2', 200),
('S5', 'P2', 'J4', 100),
('S5', 'P5', 'J5', 500),
('S5', 'P5', 'J7', 100),
('S5', 'P6', 'J2', 200),
('S5', 'P1', 'J4', 100),
('S5', 'P3', 'J4', 200),
('S5', 'P4', 'J4', 800),
('S5', 'P5', 'J4', 400),
('S5', 'P6', 'J4', 500);

SELECT * FROM supply;
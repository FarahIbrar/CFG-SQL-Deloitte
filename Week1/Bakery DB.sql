CREATE DATABASE Bakery;

USE Bakery;

CREATE TABLE Sweet (
id INT NOT NULL,
item_name VARCHAR (50) NOT NULL,
price FLOAT (2)
);

CREATE TABLE Savoury (
id INT NOT NULL,
item_name VARCHAR (50) NOT NULL,
price FLOAT (2),
main_ingredient VARCHAR(50)
);

INSERT INTO Sweet
(id, item_name, price)
VALUES
(1, 'doughnut', 0.50), 
(2, 'croissant', 0.75),
(3, 'painauchocolat', 0.55),
(4, 'cinnamon twirl' , 0.45),
(5, 'cannoli', 0.88),
(6, 'apple tart', 1.12);

INSERT INTO Savoury
(id, item_name, price, main_ingredient)
VALUES
(1, 'meat pie', 1.25, 'pork'),
(2, 'sausage roll', 1.00, null),
(3, 'pasty', 2.45, 'beef');

SELECT * FROM Sweet;

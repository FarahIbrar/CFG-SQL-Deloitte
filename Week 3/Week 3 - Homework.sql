USE Bakery;

-- Find all savoury items that have either pork or beef filling.
SELECT * FROM Savoury 
WHERE main_ingredient = 'pork' OR main_ingredient = 'beef';

-- Find all sweet items that cost 50 cents or cheaper.
SELECT * FROM Sweet
WHERE price <= 0.50;

-- Find all sweet items and their price, except for cannoli.  
SELECT item_name, price FROM Sweet
WHERE item_name <> 'cannoli';

-- Find all sweet items that start with the letter ‘c’.
SELECT * FROM Sweet
WHERE item_name LIKE 'c%';
-- Explanation: Name LIKE ‘m%’ = Any word/value that starts with ‘m’.

-- Find all savoury items that cost more than £1, but less than £3.
SELECT * FROM Savoury
WHERE price > 1.0 AND price < 3.0;



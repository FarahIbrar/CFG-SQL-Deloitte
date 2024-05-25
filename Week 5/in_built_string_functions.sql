-- LENGTH() - Return the length of a string in bytes
SELECT LENGTH('CodeFirstGirls'), LENGTH('CodeFirstGirls_12345');

-- CONCAT() - Return concatenated string
SELECT CONCAT('Code', 'First', 'Girls') AS 'Concatenated Result'; 
SELECT CONCAT("Let's", ' ', 'learn', ' SQL') AS 'Concatenated Result';
SELECT CONCAT('Learn', NULL, 'coding') AS 'Concatenated Result';

-- LCASE() -Return the argument in lowercase - Synonym for LOWER()
SELECT LCASE('CodeFirstGirls'), LOWER('LOWER CASE WORD');

-- UCASE() -Return the argument in uppercase - Synonym for UPPER()
SELECT UCASE('CodeFirstGirls'), UPPER('upper case word');

-- LEFT() - Return the leftmost number of characters as specified
SELECT LEFT('CodeFirstGirls', 4), LEFT('Database', 3);

-- RIGHT()- Return the specified rightmost number of characters
SELECT RIGHT('CodeFirstGirls', 5), RIGHT('Database', 4);

-- RTRIM() - Remove trailing spaces
SELECT RTRIM('   CodeFirstGirls   '), LENGTH(RTRIM('   CodeFirstGirls   ')), LENGTH(RTRIM('   CodeFirstGirls'));

-- LTRIM() - Remove leading spaces
SELECT LTRIM('   CodeFirstGirls   '), LENGTH(LTRIM('CodeFirstGirls   '));

-- TRIM() - Remove leading and trailing spaces
SELECT TRIM('   CodeFirstGirls   '), LENGTH(TRIM('CodeFirstGirls'));

-- STRCMP() returns 0 if the strings are the same
-- -1 if the first argument is smaller than the second according to the current sort order
-- 1 if the first argument is larger than the second according to the current sort order
SELECT 	STRCMP('MyCodeFirstGirls', 'CodeFirstGirls'), 
STRCMP('CodeFirstGirls', 'MyCodeFirstGirls'), 
STRCMP('CodeFirstGirls', 'CodeFirstGirls');

-- REVERSE() - Reverse the characters in a string
SELECT REVERSE('CodeFirstGirls');

-- Table Column
SELECT 	CONCAT(first_name, ' ', last_name) AS Concatenated_Full_Name,
REVERSE(CONCAT(first_name, ' ', last_name)) AS Reversed_Full_Name
FROM customers.customer; -- alternativly use any other DB populated with names (default db sakila.actor comes with names)

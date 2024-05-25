-- In built flow control fucntions
-- CASE Operator

SET @Var = 5; -- try changing the number to different values

SELECT 
CASE @Var
WHEN 1 THEN 'one'
WHEN 2 THEN 'two'
ELSE 'higher than 2'
END AS TheNumberIs;


SET @Var = 2; -- try changing the number to different 
SELECT 
CASE
WHEN @Var = 1 THEN 'one'
WHEN @Var = 2 THEN 'two'
ELSE '2+'
END AS TheNumberIs;


SET @Var1 = 11;
SET @Var2 = 12;
SELECT 
CASE
WHEN (@Var1 = 11 AND @Var2 = 13) THEN 'one'
WHEN @Var2 = 12 THEN 'two'
ELSE '2+'
END AS TheNumberIs;


-- IF functions
SELECT IF(1 > 2, 2, 3); -- statement, result if True, result if False

SELECT IF(1 < 2, 'yes', 'no'); -- statement, result if True, result if False

SELECT IF(YEAR(NOW()) = 2020, 'yes', 'no') AS 'RESULT';


-- IFNULL Function
SELECT IFNULL(1, 0);
SELECT IFNULL(NULL, 0);
SELECT 1 / 0;
SELECT IFNULL(1 / 0, 'Yes');

-- NULLIF Function
-- compare two expressions and returns NULL if they are equal. Otherwise return first expression
SELECT NULLIF(1, 1);
SELECT NULLIF(5, 2);



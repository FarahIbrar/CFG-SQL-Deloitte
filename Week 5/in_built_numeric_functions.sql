
-- RAND() - Return a random floating-point value
SELECT RAND() AS RandomValue;
SELECT LEFT(CEILING(RAND()*888),1) AS RandomValue;

-- ABS() - Return the absolute value
SELECT ABS(5), ABS(-5);

-- CEILING() - Return the smallest integer value not less than the argument
SELECT CEILING(12.34), CEILING(-12.34);

-- DEGREES() - Convert radians to degrees
SELECT DEGREES(PI()), DEGREES(PI() / 2);

-- FLOOR() - Return the largest integer value not greater than the argument
SELECT FLOOR(12.34), FLOOR(-12.34);

-- PI() - Return the value of pi
SELECT PI();
-- SELECT PI()+ 0.000000000000000000; use this example to show how to show numbers with lots of decimals 

-- POW() - Return the argument raised to the specified power -  synonym for POWER(X,Y) 
SELECT POW(3,2);
SELECT POWER(8,-1);

-- SQRT() - Return the square root of the argument
SELECT SQRT(4);
SELECT SQRT(16);
SELECT SQRT(256);

-- Table Column
SELECT 	price, 
ROUND(price) AS Price,
price-0.10, 
cast(price-0.10 AS DECIMAL(3,2)), 
ROUND(price-0.10, 2) R_Price 
FROM bakery.sweet;
# Data manipulation - Week 5

## Overview
This folder includes the following SQL files:

### 1. **in_built_convert_functions.sql**
   - **Description:** Demonstrates the use of the CONVERT() function.
   - **Contents:**
     - Conversion of strings to DATE, TIME, DATETIME, and DECIMAL formats.

### 2. **in_built_date_and_time.sql**
   - **Description:** Explores various date and time functions.
   - **Contents:**
     - ADDDATE() and DATE_ADD() for adding intervals.
     - SUBDATE() and DATE_SUB() for subtracting intervals.
     - CURDATE(), CURRENT_DATE(), CURRENT_TIME(), NOW() for current date and time.
     - DATE_FORMAT() for formatting dates and times.

### 3. **in_built_flow_control_functions.sql**
   - **Description:** Uses flow control functions like CASE and IF.
   - **Contents:**
     - CASE statements for conditional logic.
     - IF and IFNULL functions for handling conditions and null values.
     - NULLIF function to compare expressions and return NULL if they are equal.

### 4. **in_built_numeric_functions.sql**
   - **Description:** Showcases various numeric functions.
   - **Contents:**
     - RAND() for generating random values.
     - ABS(), CEILING(), FLOOR(), and other functions for mathematical operations.
     - PI(), POW(), and SQRT() for specific mathematical constants and calculations.

### 5. **in_built_string_functions.sql**
   - **Description:** Demonstrates string manipulation functions.
   - **Contents:**
     - LENGTH(), CONCAT(), LCASE(), UCASE(), LEFT(), RIGHT() for string operations.
     - TRIM(), RTRIM(), LTRIM() for removing spaces.
     - STRCMP() for string comparison.
     - REVERSE() for reversing strings.

### 6. **table_locking.sql**
   - **Description:** Explains table locking mechanisms.
   - **Contents:**
     - Example of obtaining READ locks.
     - Demonstrates behavior of INSERT operations with active locks.
     - Use of UNLOCK TABLES to release locks.

## Techniques Used
- **Data Type Conversion:** Using CONVERT() to change data types.
- **Date and Time Functions:** Manipulating and formatting date and time values.
- **Flow Control:** Implementing conditional logic with CASE, IF, IFNULL, and NULLIF.
- **Numeric Functions:** Performing mathematical operations and random value generation.
- **String Functions:** Handling and transforming string data.
- **Table Locking:** Understanding and applying table locks for concurrent data operations.

## Purpose
- These scripts provide an advanced demonstration of SQL functions and techniques, covering data type conversions, date and time operations, flow control, numeric and string functions, and table locking mechanisms.
- They highlight the ability to manipulate and analyze data effectively, ensuring robust database management and operations.

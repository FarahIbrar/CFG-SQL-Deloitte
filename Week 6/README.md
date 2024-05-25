# Data Management Using SQL Coding Techniques - Week 6

## Overview
This folder includes the following SQL files:

### 1. **events.sql**
   - **Description:** Demonstrates the use of SQL events to automate tasks.
   - **Contents:**
     - **One-time Event:** Schedules an event to insert a timestamp into the `monitoring_events` table one minute after its creation. This is useful for tasks that need to be performed once at a scheduled time.
     - **Recurring Event:** Schedules a recurring event to insert timestamps into the `monitoring_events_version2` table every two seconds, illustrating how to automate repetitive tasks.

### 2. **stored_function.sql**
   - **Description:** Showcases the creation and use of stored functions to encapsulate reusable logic.
   - **Contents:**
     - **is_eligible Function:** Determines customer eligibility based on account balance. Returns 'YES' for balances above 100, 'MAYBE' for balances between 50 and 100, and 'NO' for balances below 50. This function demonstrates conditional logic and the use of the `IF` statement in SQL functions.

### 3. **stored_procedure.sql**
   - **Description:** Explains how to create and use stored procedures to group and execute SQL statements.
   - **Contents:**
     - **Greetings Procedure:** Accepts a greeting and a name as parameters, concatenates them, and returns the full greeting. This procedure shows how to use variables and the `CONCAT` function.
     - **InsertValue Procedure:** Inserts a new record into the `sweet` table with specified `id`, `item_name`, and `price`. This procedure demonstrates how to perform `INSERT` operations within a procedure.

### 4. **trigger.sql**
   - **Description:** Demonstrates the creation and use of triggers to automatically enforce data integrity rules.
   - **Contents:**
     - **BEFORE INSERT Trigger:** Ensures that item names in the `sweet` table are properly formatted with an initial capital letter followed by lowercase letters. This trigger uses string functions like `UPPER` and `LOWER` to enforce consistency before inserting data.

### 5. **view_staff_table.sql**
   - **Description:** Covers the creation and use of views to simplify data access and enhance security.
   - **Contents:**
     - **vw_staff_common View:** Displays non-sensitive columns (`employeeID`, `firstName`, `lastName`, `jobtitle`, `managerID`, `department`) from the `staff` table, filtering rows with job titles containing 'DB'. This view hides sensitive information such as salary and date of birth.
     - **vw_staff_common2 View with CHECK OPTION:** Similar to `vw_staff_common` but with the `WITH CHECK OPTION` clause, ensuring that only rows matching the '%DB%' condition can be inserted or updated through the view. This enforces data integrity and consistency.

### 6. **views_simple_practice.sql**
   - **Description:** Provides practice with creating and querying views.
   - **Contents:**
     - **vw_salesmen View:** Displays the `SalesPerson` and `SalesAmount` columns from the `sales1` table. Includes example queries that filter, group, and aggregate data, demonstrating how views can simplify complex queries and enhance data presentation.

## Techniques Used
- **Event Scheduling:** Automate tasks with one-time and recurring events using the `CREATE EVENT` statement.
- **Stored Functions:** Encapsulate reusable logic and perform conditional evaluations with the `CREATE FUNCTION` statement.
- **Stored Procedures:** Group SQL statements for insertion and other operations using the `CREATE PROCEDURE` statement and parameters.
- **Triggers:** Automatically enforce data integrity and formatting rules with the `CREATE TRIGGER` statement.
- **Views:** Simplify data access, enhance security, and enforce data consistency with the `CREATE VIEW` statement and the `WITH CHECK OPTION` clause.

## Purpose
These scripts provide an in-depth look at advanced SQL coding techniques for efficient data management and automation. They demonstrate how to:
- Automate routine database tasks with events, reducing manual intervention.
- Encapsulate business logic within stored functions and procedures for reuse and clarity.
- Ensure data integrity and consistency automatically using triggers.
- Simplify data access, improve security, and enforce data integrity with views.
- This knowledge is essential for creating robust, maintainable, and efficient database applications, showcasing your ability to manage complex data systems effectively.


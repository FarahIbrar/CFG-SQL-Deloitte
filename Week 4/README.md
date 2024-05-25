# Data analysis for complex structures - Week 4

## Overview
This folder includes the following SQL files:

### 1. **Practice_UNION_and_Subquery.sql**
   - **Description:** Contains subquery and UNION operator practice queries.
   - **Contents:**
     - Subquery: Retrieves customer names based on phone number.
     - UNION and UNION ALL: Combines results from two fruit basket tables with and without duplicates.

### 2. **Practice_Employee_Self_Join.sql**
   - **Description:** Demonstrates self joins using an employee hierarchy.
   - **Contents:**
     - Table Creation: Creates an `Employee` table with sample data.
     - Inner Join: Retrieves employee names and their managers.
     - Outer Join: Retrieves employee names and their managers, showing 'Top Manager' if no manager exists.

### 3. **JOINS_and_NESTED_Subqueries_parts_db.sql**
   - **Description:** Uses joins and nested subqueries on the `Parts` database.
   - **Contents:**
     - Subqueries: Finds suppliers for a specific project and projects supplied by London-based suppliers.
     - Nested Subqueries: Finds projects not supplied by London-based suppliers.
     - Joins: Retrieves supplier, part, and project details where cities match.

## Techniques Used
- **Subqueries and Nested Subqueries:** Retrieving data using subqueries to filter results.
- **UNION and UNION ALL:** Combining results from multiple queries.
- **Joins and Self Joins:** Combining rows from the same table and different tables based on related columns.
- **Conditional Queries:** Using WHERE clauses to filter query results.

## Purpose
- These scripts showcase advanced SQL skills, including subqueries, UNION operations, self joins, and nested subqueries.
- They highlight the ability to perform complex data retrieval and manipulation, essential for managing and analyzing relational databases efficiently.


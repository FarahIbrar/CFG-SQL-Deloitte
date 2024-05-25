# SQL coding and Database management technique - Week 2
## Fundamentals of SQL - Week 2

### Overview
This folder includes the following SQL files:

1. **constraints_and_indexes.sql**
   - **Description:** Demonstrates the use of various SQL constraints and indexes.
   - **Contents:**
     - UNIQUE Constraint: Ensures unique values in the `part` table's 'P_ID' column.
     - CHECK Constraint: Enforces that the 'WEIGHT' column in the `part` table has values greater than 0.
     - PRIMARY KEY Constraint: Sets 'P_ID' as the primary key in the `part` table.
     - FOREIGN KEY Constraint: Creates a foreign key in the `supply` table referencing the `supplier` table.
     - DEFAULT Constraint: Sets default values for the 'EMAIL' and 'PHONE' columns in the `extra` table.

2. **customers_db.sql**
   - **Description:** Designs and manages a normalized customer database.
   - **Contents:**
     - Database Creation: `CREATE DATABASE Customers;`
     - Table Creation: Creates `Customer`, `Address`, `Email_Address`, `Phone_Number`, and `Orders` tables.
     - Column Alteration: Changes the 'last_name' column in the `Customer` table to NOT NULL.
     - Data Insertion: Populates the `Customers` database with sample data.
     - Foreign Key Constraints: Adds foreign keys to `Email_Address` and `Phone_Number` tables.
     - Table Removal: Drops the `Orders` table from the `Customers` database.

3. **shop_db.sql**
   - **Description:** Sets up and populates a sales database.
   - **Contents:**
     - Database Creation: `CREATE DATABASE SHOP;`
     - Table Creation: Creates the `SALES1` table.
     - Data Insertion: Inserts sample sales data into the `SALES1` table.
     - Basic Query: Selects all records from the `SALES1` table.

### Techniques Used
- **Database and Table Creation:** Establishing and structuring databases.
- **Constraints and Indexes:** Implementing UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY, and DEFAULT constraints, as well as creating indexes.
- **Data Insertion:** Populating tables with sample data to demonstrate constraints and database integrity.
- **Basic Queries:** Retrieving data to verify the database structure and contents.
- **Table Alteration:** Modifying existing table structures to enforce constraints.

### Purpose
These scripts serve as a comprehensive demonstration of SQL skills, focusing on creating and managing relational databases with various constraints and indexes. They highlight the ability to design robust database schemas, ensure data integrity, and perform essential data manipulation and retrieval operations. These skills are crucial for maintaining efficient and reliable database systems in any organization.

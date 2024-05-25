# Data analysis - Week 3

## Overview
This folder includes the following SQL files:

### 1. **shop_db_queries.sql**
   - **Description:** Contains queries for analyzing sales data in the `SHOP` database.
   - **Contents:**
     - Sales Records: Finds sales records for specific conditions.
     - Weekly Sales Count: Counts sales per week and orders them.
     - Sales by Week and Day: Counts sales by week and day.
     - Salesperson Update: Corrects salesperson names and queries their sales count.
     - Sales Amount Analysis: Calculates total, average, lowest, and highest sales amounts by salesperson.
     - Store Sales: Finds total sales amount by store.
     - Sales Count Conditions: Finds salespersons with less than 3 sales and months with sales totals less than £100.

### 2. **bakery_db_queries.sql**
   - **Description:** Contains queries for retrieving and analyzing data in the `Bakery` database.
   - **Contents:**
     - Ingredient Search: Finds savoury items with pork or beef filling.
     - Price Search: Finds sweet items costing 50 cents or less.
     - Item Exclusion: Finds sweet items excluding 'cannoli'.
     - Name Pattern Search: Finds sweet items starting with 'c'.
     - Price Range Search: Finds savoury items priced between £1 and £3.

## Techniques Used
- **Conditional Queries:** Retrieving specific records based on conditions.
- **Aggregation Functions:** Using COUNT, SUM, MIN, MAX, and AVG to analyze data.
- **Grouping and Ordering:** Grouping data by columns and ordering results.
- **String Pattern Matching:** Using LIKE for pattern-based searches.
- **Data Modification:** Updating records in a table.

## Purpose
- These scripts demonstrate advanced SQL querying techniques for data analysis and manipulation.
- The queries highlight the ability to perform complex data retrievals, aggregations, and updates, essential for efficient data management and analysis in real-world database systems.


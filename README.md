# SQL Project Overview

## Week 1: Fundamentals of SQL
- Foundational SQL skills: database creation, table creation, data insertion, basic queries.
- Scripts:
  - bakery_db.sql: Creates and populates a bakery database.
  - parts_db.sql: Sets up and populates a parts supply database.

### What did I learn?
- How to create databases and tables in SQL.
- How to insert data into tables.
- How to perform basic queries to retrieve data.

---

## Week 2: SQL coding and Database management techniques
- Advanced SQL skills: constraints, indexes, normalized database design.
- Scripts:
  - constraints_task.sql: Demonstrates various SQL constraints and indexes.
  - customers_db.sql: Designs and manages a normalized customer database.
  - shop_db.sql: Sets up and populates a sales database.

### What did I learn?
- How to implement SQL constraints like UNIQUE, CHECK, PRIMARY KEY, FOREIGN KEY, and DEFAULT.
- How to design normalized database schemas.
- How to use indexes to improve query performance.

---

## Week 3: Data analysis
- Advanced SQL querying techniques for data analysis and manipulation.
- Scripts:
  - shop_db_queries.sql: Queries for analyzing sales data in the SHOP database.
  - bakery_db_queries.sql: Queries for retrieving and analyzing data in the Bakery database.

### What did I learn? 
- How to write complex SQL queries to analyze and manipulate data.
- How to use aggregation functions like COUNT, SUM, AVG, MIN, MAX.
- How to group and filter data using GROUP BY and HAVING clauses.

---

## Week 4: Data analysis for complex structures
- Advanced SQL skills: subqueries, UNION operations, self joins, nested subqueries.
- Scripts:
  - Practice_UNION_and_Subquery.sql: Practice queries with subqueries and UNION operators.
  - Practice_Employee_Self_Join.sql: Demonstrates self joins using an employee hierarchy.
  - JOINS_and_NESTED_Subqueries_parts_db.sql: Uses joins and nested subqueries on the Parts database.

### What did I learn?
- How to use subqueries and nested subqueries to solve complex data retrieval problems.
- How to combine results from multiple queries using UNION and UNION ALL.
- How to perform self joins to query hierarchical data structures.

---

## Week 5: Data manipulation
- Advanced SQL functions and techniques: data type conversions, date and time operations, flow control, numeric and string functions, table locking.
- Scripts:
  - in_built_convert_functions.sql: Demonstrates data type conversion functions.
  - in_built_date_and_time.sql: Explores various date and time functions.
  - in_built_flow_control_functions.sql: Uses flow control functions like CASE and IF.
  - in_built_numeric_functions.sql: Showcases various numeric functions.
  - in_built_string_functions.sql: Demonstrates string manipulation functions.
  - table_locking.sql: Explains table locking mechanisms.

### What did I learn?
- How to manipulate data types using SQL functions like CONVERT().
- How to work with date and time data using functions like DATE_ADD(), DATE_SUB(), and DATE_FORMAT().
- How to use flow control functions like CASE, IF, and NULLIF.
- How to perform mathematical operations and string manipulations.

---

## Week 6: Data Management
- SQL events, stored functions, stored procedures, triggers, views for data management.
- Scripts:
  - events.sql: Demonstrates the use of SQL events to automate tasks.
  - stored_function.sql: Showcases the creation and use of stored functions.
  - stored_procedure.sql: Explains how to create and use stored procedures.
  - trigger.sql: Demonstrates the creation and use of triggers.
  - view_staff_table.sql: Covers the creation and use of views.
  - views_simple_practice.sql: Provides practice with creating and querying views.

### What did I learn?
- How to automate tasks using SQL events.
- How to encapsulate business logic using stored functions and procedures.
- How to enforce data integrity and consistency using triggers.
- How to simplify data access and improve security using views.

---

## Week 7: Projects Overview

### CCDXI (Code Cricket XI) Database Project
- **Overview**: Designed to manage and analyze cricket-related data efficiently.
- **Aim**: Provide a comprehensive solution for managing cricket leagues, teams, players, and user interactions.
- **Tables**: Users, Leagues, Teams, Matches, Players, Team_Players, Batting_Records, Bowling_Records, User_Predictions.
- **Techniques**: Normalization, foreign keys, indexes, subqueries, GROUP BY, HAVING, joins, COUNT.

### What did I learn?
- How to design and implement a complex database system.
- How to manage relationships between entities in a database.
- How to optimize queries and ensure data integrity.

### Mock Project Financial Analysis
- **Overview**: Analyzes customer and order data to derive insights on financial performance.
- **Aim**: Identify key insights and trends using SQL for data extraction and Tableau for data visualization.
- **Techniques**: Data cleaning, integration, SQL scripting, data visualization in Tableau.

### Visualization
[View the Tableau Visualization](https://public.tableau.com/shared/8RSYN7CGB?:display_count=n&:origin=viz_share_link)

### What did I learn?
- How to analyze financial data and derive meaningful insights.
- How to use SQL and Tableau for data extraction, cleaning, and visualization.
- How to create visualizations to support data-driven decision-making.

---

## Week 8: Advanced SQL Techniques and Database Management and CCDXI (Code Cricket XI) Database Project

### Main Topics Covered
- Advanced SQL queries
- Stored functions and procedures
- Triggers
- Views

### Queries

1. Find Playing XI for a Team
2. Find all teams that do not have exactly "11" players
3. Retrieve the captain for each team
4. Find the most popular team based on user favorites
5. Retrieve the top 5 players with the highest strike rates
6. To find out the captain, their nationality, home ground, and the team they belong to
7. Most Popular league based on the user's favourites
8. Most engaged users by analyzing their activity data such as the number of predictions they made or the number of logins
9. Batting records for a specific player in a particular league
10. Bowling records for a specific player in a particular league
11. Top 5 bowlers with the best bowling averages in the tournament

### What did I learn?
- **Advanced SQL queries**: I learned to write more complex queries involving joins, subqueries, and aggregate functions to retrieve specific information from the database.
- **Stored functions and procedures**: I learned how to create and use stored functions and procedures to encapsulate and reuse SQL logic, improving efficiency and maintainability.
- **Triggers**: I gained knowledge of how to use triggers to enforce data integrity rules, such as ensuring that each team has only one captain.
- **Views**: I learned how to create views to simplify complex queries and provide a logical abstraction layer over the database tables.
- **Advanced data analysis techniques**: Through the queries, I gained insights into how to analyze cricket data, including player performance metrics, team dynamics, and user engagement.
- **Practical database management skills**: This week's exercises enhanced my ability to manage databases effectively, handle complex data relationships, and prepare data for reporting and analysis.

---

### What I Enjoyed the Most
The part I enjoyed the most was working on the CCDXI (Code Cricket XI) Database Project. It was fascinating to manage and analyze cricket-related data, creating complex queries, and ensuring data integrity with triggers and stored procedures. This practical application of advanced SQL techniques was both challenging and rewarding.

---

### Conclusion
This project was a highly enjoyable and educational experience. I learned a vast array of SQL techniques and best practices while also developing my own comprehensive database project. Each week built on the previous one, leading to a deep understanding of database management and advanced SQL functionalities. This experience did not only help me learn a lot of new things but also enabled me to develop my own project. For more details, you can explore each folder.

---

### Usage
This project can be used as a reference or a learning resource for those interested in SQL and database management. It provides a step-by-step guide to mastering SQL from basics to advanced topics, along with practical examples and scripts.

---

### Contributing
Contributions are welcome! If you have any suggestions or improvements, please submit a pull request or open an issue to discuss your ideas.

---

### License
This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the code, provided that appropriate credit is given to the original author.

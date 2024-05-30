# Week 7 Projects Overview

## Folders
- **`final_project_db`**
- **`mock_project`**

### CCXI (Code Cricket XI) Database Project

#### Overview
The CCXI (Code Cricket XI) Database Project is designed to manage and analyze cricket-related data efficiently. This project combines the creator's passion for cricket with technical skills to create a robust and comprehensive database.

#### Aim of the Project
The aim of the CCXI project is to provide a comprehensive solution for managing cricket leagues, teams, players, and user interactions. This project demonstrates the ability to design and implement a complex database system, showcasing skills in database normalization, relationship management, query optimization, and data integrity.

#### Leagues in CCXI
- Pakistan Super League (PSL)
- Indian Premier League (IPL)
- Big Bash League (BBL)

#### Tables and Their Relationships
1. Users
2. Leagues
3. Teams
4. Matches
5. Players
6. Team_Players
7. Batting_Records
8. Bowling_Records
9. User_Predictions

#### Relationships
- Users can make predictions on matches via the User_Predictions table.
- Leagues contain multiple Teams.
- Teams consist of multiple Players through the Team_Players table.
- Leagues host multiple Matches.
- Matches record batting and bowling statistics for Players through the Batting_Records and Bowling_Records tables.
- User_Predictions link Users to Matches and store their predictions.

#### Queries and Techniques
The project involved various SQL queries for data extraction and analysis, such as finding the playing XI for a team and verifying if all teams have exactly 11 players.

#### Other Techniques Used
- Normalization: Ensuring data is organized to minimize redundancy and improve data integrity.
- Foreign Keys: Establishing relationships between tables to maintain data consistency.
- Indexes: Improving query performance by creating indexes on frequently searched columns.
- Subqueries: Utilizing subqueries to fetch intermediate results used in the main query.
- GROUP BY and HAVING: Aggregating data and applying conditions on aggregated data to filter results.
- Joins: Using various types of joins (INNER JOIN, LEFT JOIN) to combine rows from two or more tables based on related columns.
- COUNT: Employing the COUNT function to count the number of items in a group, particularly useful in determining the number of players in a team.

#### Purpose
The CCXI database is designed to manage and analyze cricket-related data efficiently. It aims to provide a comprehensive solution for cricket leagues, teams, players, and user interactions. This structured and detailed overview of the CCXI database highlights the creator's passion for cricket and showcases technical skills in database design, making it an attractive and impressive piece for recruiters.

### Mock Project Financial Analysis

#### Overview
The mock Project Financial Analysis involves analyzing customer and order data to derive insights on financial performance. The analysis was performed using SQL for data extraction and Tableau for data visualization.

#### Files in the Project
- customers.csv
- mock_project.sql
- mock_project_guidelines.pdf
- orders.csv
- revenue-customer-country.csv
- total-money-spent-per-customer.csv

#### Aim of the Mock Project
The aim of the mock project is to analyze financial data from customer and order transactions to identify key insights and trends. This includes calculating metrics such as total revenue per country and total money spent per customer, as well as creating visualizations to support data-driven decision-making.

#### Queries and Techniques
The project involved SQL queries to create tables, load data, and extract insights. Key queries included calculating the total money spent per customer and total revenue per country.

#### Techniques Used
- Data Cleaning and Preparation: Data was cleaned and prepared using SQL and Excel formulas.
- Data Integration: Combined data from multiple CSV files into a structured database.
- SQL Scripting: SQL queries were used to create tables, load data, and extract insights.
- Data Visualization: Tableau was used to create visualizations of the extracted data.

#### Purpose
The purpose of this project is to analyze financial data from customer and order transactions to identify key insights and trends. This includes calculating metrics such as total revenue per country and total money spent per customer, as well as creating visualizations to support data-driven decision-making.

#### Data Analysis and Visualization
The data analysis and visualization involved performing manual calculations, such as:
- Average Order Value
- Average Price per Product
- Average Profit per Product
- Number of Customers per Country

These metrics were used to create various charts and visualizations. The data visualization covered several key topics:
- What factors contribute to a country achieving the highest revenue?
- How do price and sales volume affect revenue breakdown?
- Which country achieves the highest profit?
- How do profit margins and average spent/product compare across countries?

#### Features of Visualization
The Tableau dashboard provides an interactive experience, allowing users to hover over graphs for more information and select countries for individual analysis. Although identifying trends was challenging with the sample data, efforts were made to extract meaningful insights and create a coherent storyline. The visualizations aimed to highlight financial performance and trends across different countries.

The Tableau dashboard with the visualizations can be found at the following link:
[Financial Analysis Dashboard](https://public.tableau.com/views/FinancialAnalysis_17170222645540/WhichCountryDominatesinFinancialPerformance?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)

![Which Country Dominates in Financial Performance](https://github.com/FarahIbrar/CFG-SQL-Deloitte/assets/168878908/b00e1068-b5b4-4be7-9add-e0c51d25f49e)

#### Purpose
This project demonstrates the ability to analyze and visualize financial data, providing valuable insights for data-driven decision-making. It showcases skills in SQL scripting, data integration, and data visualization.

## Conclusion
The Week 7 final project consists of two main components: the CCXI (Code Cricket XI) Database Project and the mock Project Financial Analysis. Both projects highlight the ability to manage and analyze data efficiently, demonstrating skills in database design, SQL scripting, and data visualization.

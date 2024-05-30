# Financial Analysis Project

## Overview
This project involves analyzing customer and order data to derive insights on financial performance. The analysis was performed using SQL for data extraction and Tableau for data visualization. The data covers customer details, order transactions, and financial metrics such as total revenue and money spent per customer.

## Files in the Project

### customers.csv
Contains customer information with the following fields:
- `cust_id`
- `country`

### mock_project.sql
This SQL script contains commands and guidelines for setting up the database, creating tables, and loading data from CSV files. Key steps include:
- Creating and using the `mock_project_db` database.
- Creating the `orders` and `customers` tables using MySQL Workbench.
- Loading data from `orders.csv` and `customers.csv` into the respective tables.
- Performing SQL queries to analyze data, such as calculating the total money spent per customer and total revenue per country.

### mock_project_guidelines.pdf
Guidelines for the project, providing instructions on setting up the database and conducting analysis.

### orders.csv
Contains order transaction details with the following fields:
- `order_id`
- `total_price`
- `cust_id`

### revenue-customer-country.csv
Contains summarized data of total revenue per country with the following fields:
- `country`
- `total_revenue`

### total-money-spent-per-customer.csv
Contains summarized data of total money spent per customer with the following fields:
- `cust_id`
- `country`
- `total_spent`

## Queries and Techniques
1. **Total Money Spent Per Customer**:
    ```sql
    SELECT
    c.cust_id,
    c.country,
    SUM(o.total_price) AS total_spent
    FROM Orders o
    JOIN Customers c ON o.cust_id = c.cust_id
    GROUP BY c.cust_id, c.country
    ORDER BY total_spent DESC;
    -- This query calculates the total amount of money spent by each customer, grouped by customer ID and country, and orders the results by total spent in descending order.
   ```

3. **Total Revenue Per Country**:
    ```sql
    SELECT
    c.country,
    SUM(o.total_price) AS total_revenue
    FROM Orders o
    JOIN Customers c ON o.cust_id = c.cust_id
    GROUP BY c.country
    ORDER BY total_revenue DESC;
    -- This query calculates the total revenue generated from each country, grouped by country, and orders the results by total revenue in descending order.
   ```

## Techniques Used
- **Data Cleaning and Preparation**: Data was cleaned and prepared using SQL and Excel formulas.
- **Data Integration**: Combined data from multiple CSV files into a structured database.
- **SQL Scripting**: SQL queries were used to create tables, load data, and extract insights.
- **Data Visualization**: Tableau was used to create visualizations of the extracted data.

## Purpose
The purpose of this project is to analyze financial data from customer and order transactions to identify key insights and trends. This includes calculating metrics such as total revenue per country and total money spent per customer, as well as creating visualizations to support data-driven decision-making.

## Additional Notes
- The `.xlsx` files contain extensive data which may require downloading to preview fully.
- For a detailed exploration of the code and database structure, open the `mock_project.sql` file.
- More information on the project, including the final project code, can be found in the README file located in the main Week 7 folder.

## Data Analysis and Visualization
First, the SQL code was written and the data was uploaded to the SQL database. After extracting the necessary data, it was uploaded to Tableau for visualization. Some calculations were performed manually, including:
- Average Order Value
- Average Price per Product
- Average Profit per Product
- Number of Customers per Country

These metrics were used to create various charts and visualizations. 

These metrics were used to create various charts and visualizations. The data visualization covered several key topics:
- What factors contribute to a country achieving the highest revenue?
- How do price and sales volume affect revenue breakdown?
- Which country achieves the highest profit?
- How do profit margins and average spent/product compare across countries?

## Features of Visualization
The Tableau dashboard provides an interactive experience, allowing users to hover over graphs for more information and select countries for individual analysis. Although identifying trends was challenging with the sample data, efforts were made to extract meaningful insights and create a coherent storyline. The visualizations aimed to highlight financial performance and trends across different countries.

The Tableau dashboard with the visualizations can be found at the following link:
[Financial Analysis Dashboard](https://public.tableau.com/views/FinancialAnalysis_17170222645540/WhichCountryDominatesinFinancialPerformance?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)



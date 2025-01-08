# Pizza Sales Analysis using SQL and PowerBI

## Project Overview
This project involves analyzing a pizza sales dataset using SQL for data extraction and PowerBI for data visualization. The goal is to derive insights into sales performance, product trends, and customer behavior through various KPIs and visualizations.

## Dataset
The dataset contains transactional data for a pizza chain, including:
- `order_id`
- `order_date`
- `pizza_name`
- `pizza_category`
- `pizza_size`
- `quantity`
- `total_price`

## Key Performance Indicators (KPIs)
The following KPIs were calculated using SQL queries:
- **Total Revenue:** Sum of total sales revenue.
- **Average Order Value:** Revenue divided by the number of unique orders.
- **Total Pizzas Sold:** Sum of quantities sold.
- **Total Orders:** Count of unique orders.
- **Average Pizzas Per Order:** Total pizzas sold divided by total orders.
- **Sales by Pizza Category and Size:** Percentage contribution of each pizza category and size.
- **Top and Bottom Performing Pizzas:** Based on revenue, quantity sold, and total orders.

## Tools Used
- **SQL Server:** For data extraction and KPI calculations.
- **PowerBI:** For interactive dashboard design and data visualization.

## SQL Queries
The SQL queries used for the analysis are included in the `/sql_queries` directory. Each query focuses on a specific KPI or analysis task such as:
- `total_revenue.sql`
- `average_order_value.sql`
- `total_pizzas_sold.sql`
- `sales_by_category.sql`

## PowerBI Dashboard
The PowerBI dashboard is available in the `/PowerBI_Report` directory and includes:
- **Revenue Overview:** Total revenue and average order value.
- **Sales Trends:** Daily and monthly sales trends.
- **Product Performance:** Top and bottom-performing pizzas by revenue and quantity sold.

## How to Run
1. **Data Setup:** Import the provided `pizza_sales.csv` file.
2. **SQL Execution:** Run the queries from the `sql_queries` folder in your SQL Server.
3. **PowerBI:** Open the PowerBI report file and refresh the data source.

## Insights & Findings
- **Revenue Trends:** The highest sales were observed in January with XYZ revenue.
- **Best Performing Pizzas:** The *Pepperoni Pizza* generated the highest revenue.
- **Pizza Size Preference:** Large pizzas contributed to the majority of sales.

## Project Structure
```
/Pizza_Sales_Analysis
├── data/ (CSV file)
├── sql_queries/ (SQL query files)
├── PowerBI_Report/ (PowerBI report file)
├── README.md (This file)
├── LICENSE
```

## License
This project is licensed under the MIT License.

## Contact
For any questions or collaboration opportunities, feel free to reach out via GitHub or LinkedIn.

---
**[👉 View the PowerBI Dashboard](https://github.com/Afraj2004/Pizza-Sales-Report/blob/main/Power%20BI%20Report%20PDF.pdf)**


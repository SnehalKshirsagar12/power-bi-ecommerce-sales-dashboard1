# E-Commerce Sales Performance Dashboard | Power BI

## Business Problem
Sales are growing, but profit is falling. Which products, regions, and customers are driving profit — and which are causing losses due to heavy discounting?

## Dataset
- File: Superstore_Sales.csv
- Rows: 1,000 orders
- Period: 2022-2023
- Columns: OrderID, OrderDate, Segment, Region, State, Category, Product, Quantity, UnitPrice, Discount, Sales, Profit

## Tools Used
SQL Server | Power BI Desktop | DAX | Power Query | Data Modeling

## Data Model (Star Schema)
- Fact: Superstore-Sales
- Dimension: Calendar (Date Table)
- Relationship: Calendar[Date] -> Superstore-Sales[OrderDate]

## DAX Measures
- Total Sales = SUM(Sales)
- Total Profit = SUM(Profit)
- Total Orders = COUNTROWS
- Profit Margin % = DIVIDE(Profit, Sales)
- Avg Order Value = DIVIDE(Sales, Orders)
- YoY Sales Growth % = SAMEPERIODLASTYEAR

## Key Insights
1. Total Sales: 739.54K | Total Profit: 89.56K | Profit Margin: 12.11%
2. Technology has highest margin: 12.59%, Furniture: 11.50%, Office Supplies: 10.49%
3. Central region has highest margin: 13.11%, East lowest: 10.26%
4. Corporate segment has highest Avg Order Value
5. High discount orders cause most profit loss

## Recommendations
1. Cap discount on Furniture in West to 10% - Furniture margin only 11.5%
2. Push Technology in East - Technology margin 12.59%, highest
3. Focus on Corporate customers - highest order value, give loyalty offers not discounts

## Dashboard Pages
1. Executive Overview
2. Product & Customer Insights
3. Regional Performance
4. Recommendations

## How to Run
1. Open Power BI Desktop
2. Open Ecommerce_Sales_Dashboard.pbix
3. Or open Ecommerce_Sales_Dashboard.pdf to view without Power BI

Author: Snehal Kshirsagar | Aspiring Data Analyst
GitHub: github.com/SnehalKshirsagar12

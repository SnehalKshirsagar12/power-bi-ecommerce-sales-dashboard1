-- Data Cleaning in SQL Server
-- Run this after importing Superstore_Sales.csv into SQL

-- 1. Check duplicates
SELECT OrderID, COUNT(*) FROM Orders GROUP BY OrderID HAVING COUNT(*) > 1;

-- 2. Check NULLs
SELECT COUNT(*) AS NullProfit FROM Orders WHERE Profit IS NULL;

-- 3. Cleaned view for Power BI
SELECT
  OrderID,
  CAST(OrderDate AS DATE) AS OrderDate,
  Segment,
  Region,
  State,
  Category,
  Product,
  Quantity,
  UnitPrice,
  Discount,
  Sales,
  ISNULL(Profit, 0) AS Profit,
  CASE WHEN Discount > 0.2 THEN 'High Discount' ELSE 'Normal' END AS DiscountFlag
FROM Orders
WHERE Sales > 0;

-- 4. Analysis: Profit by Category
SELECT Category, SUM(Sales) AS Sales, SUM(Profit) AS Profit,
  CAST(SUM(Profit)*100.0/SUM(Sales) AS DECIMAL(5,2)) AS MarginPct
FROM Orders GROUP BY Category ORDER BY Profit DESC;

-- 5. Analysis: Loss due to discount
SELECT DiscountFlag, COUNT(*) AS Orders, SUM(Sales) AS Sales, SUM(Profit) AS Profit
FROM Orders GROUP BY DiscountFlag;

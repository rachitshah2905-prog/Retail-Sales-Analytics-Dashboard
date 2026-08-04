DROP DATABASE retail_sales;
CREATE DATABASE retail_sales;
USE retail_sales;
SELECT COUNT(*) FROM `superstore ds`;
SELECT MAX(`Row ID`) FROM `superstore ds`;
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT `Row ID`) AS unique_row_ids,
    MAX(`Row ID`) AS max_row_id
FROM `superstore ds`;
SELECT `Row ID`, COUNT(*)
FROM `superstore ds`
GROUP BY `Row ID`
HAVING COUNT(*) > 1;


SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`;

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`;

SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM `superstore ds`;

SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM `superstore ds`;

SELECT ROUND(
SUM(Sales)/COUNT(DISTINCT `Order ID`),2
) AS Average_Order_Value
FROM `superstore ds`;

SELECT ROUND(
(SUM(Profit)/SUM(Sales))*100,2
) AS Profit_Margin_Percentage
FROM `superstore ds`;

SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Region,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Product Name`,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT `Product Name`,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;

SELECT Category,
       ROUND(AVG(Discount),2) AS Avg_Discount
FROM `superstore ds`
GROUP BY Category;

SELECT `Ship Mode`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;

SELECT ROUND(
SUM(Profit)/COUNT(DISTINCT `Order ID`),2
) AS Avg_Profit_Per_Order
FROM `superstore ds`;

SELECT ROUND(
SUM(Sales)/COUNT(DISTINCT `Customer ID`),2
) AS Avg_Sales_Per_Customer
FROM `superstore ds`;

SELECT Category,
       SUM(Quantity) AS Total_Quantity_Sold
FROM `superstore ds`
GROUP BY Category
ORDER BY Total_Quantity_Sold DESC;

SELECT YEAR(`Order Date`) AS Year,
       MONTH(`Order Date`) AS Month,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;

SELECT City,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT State,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore ds`
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    Discount,
    ROUND(AVG(Profit),2) AS Avg_Profit,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore ds`
GROUP BY Discount
ORDER BY Discount;
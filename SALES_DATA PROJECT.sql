 SELECT * FROM SALES_DATA;

--1 Retrieve total sales revenue, costs, and profits for each product category, grouping by date, month, or year.

SELECT Product_Category,
SUM(Order_Quantity) AS 'TOTAL_SALES', 
SUM(Revenue) AS 'TOTAL_REVENUE',
SUM(Cost) AS 'TOTAL_COST',
SUM(Profit) AS 'TOTAL_PROFIT' 
FROM Sales_data
GROUP BY Product_category;


--2 Identify total sales and order quantities by year, month, or day to examine how sales performance evolves.

SELECT Product_Category,  
SUM(Order_Quantity) AS 'TOTAL_SALES', 
COUNT(Order_Quantity) AS 'ORDER_QUANTITY',
YEAR(Date) AS 'YEAR',
MONTH(Date) AS 'MONTH', 
DAY(Date) AS 'DATE'
FROM SALES_DATA
GROUP BY Product_Category, YEAR, MONTH, DATE;

-- 3 Select the products with the highest profit margins and calculate profitability across different time periods.

SELECT Product_Category, 
MAX(Profit) AS 'HIGHEST PROFIT', 
FROM SALES_DATA;


--4 Query the sales performance by gender and age group, and analyze which demographics contribute most to sales.

SELECT Customer_Gender,
Age_Group, 
SUM(Revenue) AS 'TOTAL_SALES', 
SUM(PROFIT) AS 'TOTAL_PROFIT'
FROM SALES_DATA 
GROUP BY Customer_gender, Age_Group
ORDER BY SUM(PROFIT) DESC;

-- 5  Retrieve sales data grouped by country and state to discover which regions generate the most revenue and profit.

SELECT Order_Quantity,
Country, State,
MAX(Profit) AS 'TOTAL PROFIT'
MAX(Revenue) AS 'TOTAL REVENUE'
FROM SALES_DATA
GROUP BY Country, 
State DESC
LIMIT 5;

--6  Analyze how the number of units ordered impacts the overall profit, and identify optimal order sizes.

SELECT Unit_Cost, Profit, Order_Quantity
FROM SALES_DATA
ORDER BY Order_Quantity, Profit DESC;

--7 Explore how different customer age groups contribute to overall sales, and identify the best-performing age groups.

SELECT
Age_Group, 
Order_Quantity
FROM SALES_DATA
ORDER BY Age_Group DESC;


--8 Track how specific product categories perform over different periods, identifying trends and shifts in demand.

SELECT Product_Category,
Profit, 
Order_Quantity, Date AS 'PEROIDS'
FROM SALES_DATA;



-- 9 Compare unit cost and unit price for each product, and calculate how these factors influence profit margins.

SELECT Unit_Cost, 
Unit_Price

-- 10 Identify the regions with the highest order quantities, revenue, and profitability.


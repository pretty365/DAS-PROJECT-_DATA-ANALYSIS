CREATE DATABASE KMS_PROJECT


SELECT TOP 1
[Product_Category],sum(Sales) as
Total_Sales 
FROM [KMS Sql Case Study]
GROUP BY Product_Category
ORDER BY Total_Sales  desc

SELECT TOP 3 Region,SUM(Sales)
AS Total_Sales
FROM [KMS Sql Case Study]
GROUP BY Region
ORDER BY Total_sales ASC


SELECT Region,
Product_sub_Category, SUM(Sales)
AS Totalsales
FROM [KMS Sql Case Study]
WHERE Region = 'Ontario'
AND Product_sub_Category=
'Appliance'
GROUP BY Region,
Product_sub_Category
ORDER BY TotalSales desc



SELECT TOP 10 Customer_Name,
SUM(Sales) AS Total_Sales
FROM [KMS Sql Case Study]
GROUP BY Customer_Name
ORDER BY Total_Sales ASC;


SELECT TOP 1 [Ship_Mode],
SUM([Shipping_Cost]) AS
Total_Shipping_Cost
FROM [KMS Sql Case Study]
GROUP BY [Ship_Mode]
ORDER BY Total_Shipping_Cost
DESC;


SELECT [Customer_Name],
[Product_Name],
SUM(Sales) AS Total_sales
FROM [KMS Sql Case Study]
GROUP BY [Customer_Name],
[Product_Name]
ORDER BY Total_Sales DESC;


SELECT TOP 1 Customer_Name,
SUM(Sales) AS Total_Sales
FROM [KMS Sql Case Study]
WHERE Customer_Segment= 'Small
Business'
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC


SELECT TOP 1 Customer_Name,
Count(DISTINCT Order_ID) AS
Number_of_Oders
FROM [KMS Sql Case Study]
WHERE Customer_Segment =
'Corporate'
AND Order_Date BETWEEN
'2009-01-01'AND '2012-12-31'
GROUP BY Customer_Name
ORDER BY Number_OF_Oders DESC;


SELECT TOP 1 [Customer_Name],
SUM(Profit) AS Total_Profit
FROM [KMS Sql Case Study]
WHERE [Customer_Segment]=
'Consumer'
GROUP BY[Customer_Name]
ORDER BY Total_Profit DESC;


SELECT DISTINCT TOP 10 o. 
[Order_ID],o.[Customer_Name],o.
[Customer_Segment]
FROM [KMS Sql Case Study] o
JOIN [Order_Status] r
ON o.[Order_ID]= r. [Order_ID]
WHERE r.Status = 'Returned';



SELECT 
[ORder_Priority],[Ship_Mode],
COUNT([Order_ID]) AS OrderCount,
ROUND(SUM(Sales-Profit),2) AS
EstimatedShppingCost,
AVG(DATEDIFF(day,[Order_Date],
[Ship_Date])) AS AvgShipDays
FROM [KMS Sql Case Study]
GROUP BY [Order_Priority],
[Ship_Mode]
ORDER BY [Order_Priority],
[Ship_Mode] DESC







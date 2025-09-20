CREATE DATABASE [PROFIT DB]

USE [PROFIT DB]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);

select * from ProfitData 

-- add a new column to show the profits for the next month

SELECT *, LEAD(Profit) OVER(PARTITION BY PRODUCT ORDER BY MONTHNUMBER) AS [ NEXT MONTH PROFIT]
FROM ProfitData


SELECT MonthName, MonthNumber , SUM(PROFIT)  AS [PROFIT], 
LEAD(SUM(Profit)) OVER(ORDER BY MONTHNUMBER DESC) AS[LEAD]
FROM ProfitData
GROUP BY MonthName, MonthNumber


/*LAG*/
--USED TO FIND THE PROFIT OF THE PREVIOUS MONTH 

SELECT * FROM ProfitData

SELECT *, LAG(PROFIT) OVER(PARTITION BY PRODUCT ORDER BY MONTHNUMBER) AS [PREVIOUS MONTH PROFIT]
FROM ProfitData


SELECT MonthNumber , MonthName, SUM(Profit) AS [PROFIT],
LAG(SUM(PROFIT)) OVER(ORDER BY MonthNumber ASC) AS [PREVIOUS MONTH]
FROM ProfitData
GROUP BY MonthNumber , MonthName



select * from sales

SELECT MIN(Quantity) as [min quantity] from sales

SELECT MIN(SaleDate) as [Sales Date] from sales

SELECT MIN(PaymentMethod) as [Payment] from sales 
-- will not consider the null, and will retur from a-z

select ProductID,min(TotalAmount) AS [MIN AMOUNT]FROM SALES
GROUP BY ProductID
SELECT * FROM SALES

select sum(quantity) as [sum], sum(TotalAmount) as [Total]	from SALES

SELECT AVG(Quantity) as [Quantity], AVG(TotalAmount) as [TotalAmount] FROM Sales

SELECT PRODUCTID,SUM(Quantity) AS [Quantity], SUM(TotalAmount) AS [TotalAmount], AVG(TotalAmount) as [AVGAMT] FROM SALES
GROUP BY PRODUCTID

SELECT PRODUCTID, STOREID ,SUM(Quantity) AS [Quantity], SUM(TotalAmount) AS [TotalAmount], AVG(TotalAmount) as [AVGAMT] FROM SALES
GROUP BY PRODUCTID, STOREID


SELECT COUNT(*) AS NOOFROWS FROM SALES

SELECT COUNT(PaymentMethod) FROM SALES


SELECT COUNT(DISTINCT(PaymentMethod)) AS [LM] FROM SALES

SELECT PaymentMethod, COUNT(DISTINCT(PRODUCTID)) AS [PD] FROM SALES
GROUP BY PaymentMethod

SELECT PaymentMethod, COUNT(PRODUCTID) AS [PD] FROM SALES
GROUP BY PaymentMethod

SELECT PaymentMethod, COUNT(*) AS [PD] FROM SALES
GROUP BY PaymentMethod
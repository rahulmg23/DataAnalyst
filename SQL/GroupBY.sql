select * from sale

SELECT PaymentMethod, SUM(TotalAmount) AS [SUM OF SALES]FROM SALES
GROUP BY PaymentMethod

SELECT PaymentMethod, ProductID, SUM(TotalAmount) AS [SUM OF TOTALAMOUNT] FROM SALES
GROUP  BY PaymentMethod, ProductID
ORDER BY ProductID 

SELECT ProductID, AVG(TotalAmount) as [total amount], sum(Quantity) as [sumquantity], AVG(Quantity) as [AVG Quantity] FROM SALES
GROUP BY ProductID
HAVING  SUM(TotalAmount) < 700 AND sum(Quantity) = 21

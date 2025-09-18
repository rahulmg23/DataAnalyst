select * from [SALES]
WHERE TotalAmount >=161

SELECT ProductID, SUM(TotalAmount) as [TOTALSALES]FROM SALES
GROUP BY ProductID
HAVING  SUM(TotalAmount) >= 100

SELECT ProductID, Sum(TotalAmount) AS[TOTALAMT] FROM SALES
WHERE TotalAmount >=161
GROUP BY ProductID
HAVING Sum(TotalAmount)  > 200
ORDER BY ProductID desc
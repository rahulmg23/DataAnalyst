**1757. Recyclable and Low Fat Products**



SELECT product\_id FROM Products

WHERE low\_fats  = 'Y' AND recyclable  = 'Y'







**584. Find Customer Referee**



SELECT name FROM Customer

IFNULL(refree\_id, 0) <> 2



OR



SELECT name FROM Customer

WHERE referee\_id IS NULL OR referee\_id!=2



-> by default sql will not return the null values hence we have to specify to show the null values 	







**595. Big Countries**



SELECT name, population, area FROM world

WHERE area  >= 3000000  OR population >=25000000





**1148. Article Views I**



SELECT DISTINCT (author\_id) AS ID FROM Views

WHERE author\_id  = viewer\_id

ORDER BY ID ASC



**1683. Invalid Tweets**



SELECT tweet\_id  FROM Tweets

WHERE CHAR\_LENGTH(content)  > 15



-> CHAR\_LENGTH will return the whitespace and the chars in the column

**Replace Employee ID With The Unique Identifier**

SELECT eu.unique_id, e.name 
FROM  Employees  e
LEFT JOIN EmployeeUNI eu 
ON eu.id = e.id

**Product Sales Analysis**
SELECT p.product_name, sales, year
FROM Sales s
JOIN Product p ON 
s.product_id = p.product_id


<!-- 1581. Customer Who Visited but Did Not Make Any Transactions -->
SELECT v.customer_id , COUNT(v.visit_id) AS count_no_trans 
FROM Visits v
LEFT JOIN Transactions t ON
t.visit_id = v.visit_id  
WHERE t.transaction_id  IS NULL
GROUP BY v.customer_id
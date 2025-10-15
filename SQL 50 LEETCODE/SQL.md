**1757. Recyclable and Low Fat Products **



SELECT product\_id FROM Products

WHERE low\_fats  = 'Y' AND recyclable  = 'Y'





**584. Find Customer Referee**



SELECT name FROM Customer

SELECT name  
FROM Customer 
WHERE IFNULL(referee_id , 0) <> 2


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

<!-- 197. Rising Temperature -->
SELECT w1.id
FROM Weather w1
JOIN Weather w2 
WHERE DATEDIFF(w1.recordDate , w2.recordDate) = 1
AND w1.temperature > w2.temperature 



<--620. Not Boring Movies -->
SELECT * FROM Cinema 
WHERE id %2 != 0  AND description  != 'boring'
order by id DESC

<--1251. Average Selling Price-->
SELECT p.product_id , IFNULL(ROUND(SUM(p.price*us.units)/SUM(us.units),2),0) AS average_price 
FROM prices p
LEFT JOIN UnitsSold us
ON p.product_id  = us.product_id 
AND us.purchase_date >= p.start_date 
AND us.purchase_date <= p.end_date   
GROUP BY p.product_id

<-- 1075. Project Employees I -->
SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_year s
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id;


<-- 1633. Percentage of Users Attended a Contest -->
SELECT contest_id  ,  ROUND(COUNT(DISTINCT user_id) * 100 /( SELECT (COUNT(user_id)) FROM  Users),2) AS percentage 
FROM Register 
GROUP by contest_id
ORDER by percentage desc, contest_id

<-- 1211. Queries Quality and Percentage -->
SELECT query_name ,  ROUND(AVG(rating/position),2)  AS quality , ROUND(AVG(IF(rating < 3, 1, 0)*100),2) AS poor_query_percentage 
FROM Queries 
GROUP BY query_name
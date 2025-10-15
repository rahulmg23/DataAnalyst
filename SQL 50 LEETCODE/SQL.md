**1757. Recyclable and Low Fat Products **



SELECT product\_id FROM Products

WHERE low\_fats  = 'Y' AND recyclable  = 'Y'


<!-- In SQL, particularly in MySQL and PostgreSQL, ENUM is a string data type that allows you to define a column with a predefined, fixed list of allowed values. It stands for "enumeration." 
Here's a breakdown of what ENUM is:
Predefined Values: When you declare a column as ENUM, you explicitly list all the possible values that column can hold. This list is defined at the time of table creation.
Data Integrity: ENUM helps enforce data integrity by ensuring that only values from the predefined list can be inserted into the column. Any attempt to insert a value not in the list will result in an error or, depending on the SQL mode, an empty string being inserted.
Storage Efficiency: While you interact with ENUM values as strings, they are often stored internally as integers, representing the index of the value in the predefined list. This can make ENUM columns more storage-efficient than VARCHAR or TEXT for columns with a limited set of options.
Readability: ENUM values are still readable strings when retrieved, making the data more understandable compared to using numerical codes that would require a separate lookup table.
Syntax: The basic syntax for defining an ENUM column is:
Code

    column_name ENUM('value1', 'value2', ..., 'valueN')
Example:
Code

    CREATE TABLE Products (
        ProductID INT PRIMARY KEY,
        ProductName VARCHAR(255),
        Status ENUM('In Stock', 'Out of Stock', 'Discontinued')
    );
In this example, the Status column can only contain the values 'In Stock', 'Out of Stock', or 'Discontinued'.
Key Considerations:
Limited Extensibility: ENUM is best suited for columns with a truly fixed set of values. If the list of possible values changes frequently, using a separate lookup table might be a more flexible approach.
Sorting: ENUM values are sorted based on their internal index, not their alphabetical order. If you need a specific sorting order, you might need to handle it in your queries.
 -->



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
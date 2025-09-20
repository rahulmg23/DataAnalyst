-- ISNULL, COALEASE FUNCTIONS

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

SELECT * FROM Customers

--is null
--will return the first value 
select ISNULL(null,'first value')
select ISNULL('ACX', null)
select ISNULL(null,null)

--coalesce
--will search for the non null value and return it
SELECT COALESCE(NULL,NULL,'C')

SELECT CustomerID, Email, PhoneNumber from Customers

SELECT CustomerID,ISNULL(email, 'no email found'), ISNULL(CustomerID, 'No ph no found'), ISNULL(PhoneNumber, 'Phone no not found')   FROM Customers

SELECT CustomerID, COALESCE(email, PhoneNumber , 'CONTACT NA') FROM customers

/*first value*/
CREATE DATABASE WINDOW 

USE WINDOW

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');

SELECT * FROM EmployeeSalaries

select *, 
FIRST_VALUE(Salary) OVER(ORDER BY SALARY ASC) [MIN SALARY]
FROM EmployeeSalaries

SELECT *,
FIRST_VALUE(EmployeeName) OVER(ORDER BY SALARY ASC) [EMP NAME],
FIRST_VALUE(Salary) OVER(ORDER BY SALARY ASC) [EMP NAME]
FROM EmployeeSalaries

SELECT *,
FIRST_VALUE(EmployeeID) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY  ASC) AS [FIRST VALUE]
FROM EmployeeSalaries

select *,
FIRST_VALUE(EmployeeID) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY desc) AS[FIRST VALUE],
FIRST_VALUE(EmployeeName) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS [EMP NAME]
from EmployeeSalaries


-- LAST VALUE FUNCTION

SELECT *,
LAST_VALUE(EmployeeName) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS[EMP WITH LOW SALARY],
LAST_VALUE(SALARY) OVER(PARTITION BY DEPARTMENT ORDER BY SALARY DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS[EMP WITH LOW SALARY]
FROM EmployeeSalaries
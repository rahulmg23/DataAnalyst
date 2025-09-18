select * from Employees
where NOT FirstName = 'John' AND NOT Salary = 60000.00


select * from Employees
where NOT LastName = 'Miller' OR NOT Department = 'HR'


SELECT * FROM Employees
WHERE Salary BETWEEN 75000 AND 80000

SELECT * FROM Employee
WHERE Salary >=75000 AND Salary<=80000


SELECT * FROM [dbo].[EmployeeRecords]
WHERE NOT Salary BETWEEN 75000 AND 80000

SELECT * FROM [dbo].[EmployeeRecords]
WHERE Department = 'HR' AND Department = 'IT'

SELECT * FROM [dbo].[EmployeeRecords]
WHERE Department IN('HR','IT')

SELECT * FROM [dbo].[EmployeeRecords]
WHERE NOT Department IN('HR','IT')
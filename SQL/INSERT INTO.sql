select * from Employees

INSERT INTO Employees(FirstName, EmployeeID, LastName, Department, Salary, HireDate) 
VALUES
('RAHUL', 6, 'g', 'AI', '10000', '2024-01-23')

INSERT INTO Employees(FirstName, LastName, Salary)
VALUES
('SURAJ', 'ASD', 12)


INSERT INTO Employees
VALUES
( 7, 'RAHULMM1', 'g', 'AI', '10000', '2024-01-23')


SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees'
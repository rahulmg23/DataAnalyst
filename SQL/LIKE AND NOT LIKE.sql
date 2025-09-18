CREATE DATABASE [Employees_US]

USE [Employees_US]


-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');


SELECT * FROM Employees_us

-- Wildcards
-- _ It exactly 

select * from Employees_US 
where LastName LIKE 'S%'

select * from Employees_US 
where FirstName LIKE '%a'

select * from Employees_US 
where LastName LIKE '_____'

select * from Employees_US 
where FirstName LIKE 'C%' OR FirstName like '%D'


select * from Employees_US 
where Department LIKE '%eng%'


select * from Employees_US 
where LastName LIKE '%son%'


select * from Employees_US 
where FirstName LIKE '%_i%'

select * from Employees_US 
where LastName LIKE '[a-l]%'


select * from Employees_US 
where LastName  NOT LIKE '%o%'



select * from Employees_US 
where LastName  LIKE '_____a'



select * from Employees_US 
where Department  LIKE 'MAR%' AND Department LIKE '%ING'



select * from Employees_US 
where FirstName  LIKE '[aeiou]%'



select * from Employees_US 
where FirstName  LIKE '[^aeiou]%'









CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email)
VALUES 
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Charlie Brown', 'charlie@example.com');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES 
(101, 1, '2024-07-15', 250.00),
(102, 1, '2024-08-05', 300.00),
(103, 2, '2024-08-10', 150.00),
(104, 3, '2024-06-25', 100.00);

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

SELECT * FROM Customers 
WHERE customer_id in (
SELECT DISTINCT Customer_id FROM ORDERS WHERE order_date between '2024-08-01' and '2024-08-31'
)

SELECT * FROM Customers 
WHERE customer_id IN (
SELECT DISTINCT Customer_id FROM ORDERS WHERE order_date not between '2024-08-01' and '2024-08-31'
)

use employee_details

select * from EmployeeRecords

select * from EmployeeRecords 
WHERE Salary 
> 
(SELECT AVG(Salary) FROM EmployeeRecords)

SELECT * FROM EmployeeRecords 
WHERE Salary > (
SELECT AVG(SALARY) FROM EmployeeRecords
)
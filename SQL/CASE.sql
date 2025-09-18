

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

select * from Products

/* creating new table */

SELECT 
*,
CASE 
    WHEN Price < 500 THEN 'HIGH'
    WHEN Price >= 500 THEN 'Medium'
    ELSE 'LOW'
END [HIGH/MEDIUM/LOW]
FROM Products


select * from Products
ORDER BY 
CASE
    WHEN Category in ('Electronics') then 1
    WHEN Category in ('Furniture') then 2
    ELSE 3
END

/*NESTED CASE*/

select *,
CASE
    WHEN Category in ('Electronics') then 
        CASE 
            WHEN Price >= 300 THEN 'Premium'
            else 'affordable'
            end
    WHEN Category in ('Furniture') THEN
        CASE
            WHEN Price >= 300 THEN 'Premium'
            else 'affordable'
            end
ELSE
        CASE      
            WHEN Price >= 300 THEN 'Premium'
            else 'affordable'
            end
END AS [GROUPS]
FROM Products


/*DATA TYPES*/

--String Data
--char, varchar, nchar, nvarchar


--char M OR F (1)
--varchar(256)
--nchar(1), it is unicode
--nvchar(256), it is unicode

 --Number type
 --int, bigint, tinyint, decimal(p,s), smallint

 --data type , time data type, datetime data  type
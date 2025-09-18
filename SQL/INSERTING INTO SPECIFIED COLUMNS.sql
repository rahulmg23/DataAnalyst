/*copying db*/

-- case1 dt simply doesn't exists
-- caew new structure/table exists

select * from  [dbo].[table2]

SELECT * INTO new_table1 FROM table2

SELECT * FROM new_tab

DROP TABLE new_tab

SELECT C1 INTO new_tab FROM table2

---case 2 new table/structre exists

SELECT TOP 0 * INTO new_tab2 FROM table2

SELECT * FROM new_tab2

INSERT INTO new_tab2 select * from table2

-- copying certian

SELECT * INTO new FROM [dbo].[Products] WHERE 1 = 0

SELECT * FROM new

INSERT INTO new (ProductID, Price) 
SELECT  ProductID, Price  FROM [dbo].[Products]
/*JOINS*/

CREATE DATABASE [SALES3 DATABSE]

USE [SALES3 DATABSE]

--Creating Table1 & insertinting records in Table1

create table table1 (C1 int, C2 nvarchar(max))
insert into table1 values (1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

--Creating Table2 & insertinting records in Table2
create table table2 (C1 int, C3 nvarchar(max))
insert into table2 values (1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')

SELECT * FROM [dbo].[table2]

SELECT * FROM [dbo].[table1]


SELECT * FROM [dbo].[table1]
INNER JOIN [dbo].[table2] ON 
[table1].C1 = table2.C1

SELECT [table1].C1, [table2].C1, [table2].C3 FROM [dbo].[table1]
INNER JOIN [dbo].[table2] ON
[table1].C1 = [table2].C1

select A.C1, B.C1, B.C3 from table1 a 
INNER JOIN table2 b on 
a.C1 = b.C1

SELECT * FROM table1 a
JOIN table2 b ON 
a.C1 = b.C1


/*left join*/


SELECT * FROM [dbo].[table2]

SELECT * FROM [dbo].[table1]

SELECT * FROM table1 a
LEFT JOIN table2 b ON
a.C1 = b.C1

SELECT * FROM table2 a
LEFT JOIN table1 b ON
a.C1 = b.C1

/*right join*/


SELECT * FROM [dbo].[table1]

SELECT * FROM [dbo].[table2]

SELECT * FROM table1 a
RIGHT JOIN table2 b ON
a.C1 = b.C1

SELECT * FROM table1 a
RIGHT OUTER JOIN table2 b ON
a.C1 = b.C1

SELECT * FROM table2 a
RIGHT JOIN table1 b ON
a.C1 = b.C1


/*LEFT AND RIGTH ANTI JOIN*/


SELECT * FROM [dbo].[table1]

SELECT * FROM [dbo].[table2]

SELECT * FROM table1 a
LEFT JOIN table2 b 
ON a.c1 = b.C1
WHERE b.C1 IS NULL

/*AND RIGTH ANTI JOIN*/

SELECT * FROM [dbo].[table1]

SELECT * FROM [dbo].[table2]

SELECT * FROM table1 a
RIGHT JOIN table2 b 
ON a.C1 = b.C1
WHERE a.C1 IS NULL


/*FULL OUTER JOIN*/

SELECT * FROM [dbo].[table1]

SELECT * FROM [dbo].[table2]


SELECT * FROM [dbo].[table1]
INNER JOIN [dbo].[table2] ON 
[table1].C1 = table2.C1


SELECT * FROM table1 a
FULL OUTER JOIN table2 b
ON a.C1 = b.C1


/* SELF JOIN */

SELECT * FROM [dbo].[table1]

SELECT  * FROM table1 a 
INNER JOIN table1 b
ON a.c1 = b.c1



create table append1 (C1 int,C2 nvarchar(255),C3 int)

insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)

insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)

SELECT * FROM append1

SELECT * FROM append2

SELECT * FROM append1
UNION ALL
SELECT * FROM append2

SELECT * FROM append1
UNION 
SELECT * FROM append2

-- no of columns need to be the same 
-- dp of the columns needs to be the same
-- order in which columns are written to be the same 

-- union will return the distinct tables
-- union all will return the tables with duplicate

--alias names given to the first select statement will be given to all the statments

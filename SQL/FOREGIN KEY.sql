-- Foreign key constraint


-- case 1: when the tables 

create table testp(
ID int primary key,
name varchar(256)
)

INSERT INTO testp
VALUES(1,'ASDF'), (2,'TOW'), (3,'THREE')

SELECT * FROM testp

SELECT * FROM testf


create table testf(
ID int foreign key references testp(ID),
COURSE varchar(256)
)


INSERT INTO testf
VALUES(1,'ASDF')

INSERT INTO testf
VALUES(null,'ASDF')


INSERT INTO testf
VALUES(3,'three')

INSERT INTO testf VALUES(4,'three') 
-- cannot insert values in foreign key table which are not present in primary key

-- case 2 table already exists 

SELECT * FROM TESTF_2

CREATE TABLE TESTF_2
(ID int, 
course varchar(256))

ALTER TABLE TESTF_2
ADD FOREIGN KEY (ID) references testp(id)


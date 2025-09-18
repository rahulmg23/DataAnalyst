/* NOT NULL CONSTRAINTS */

CREATE DATABASE CONSTRAINTS

USE CONSTRAINTS


-- CONSTRAINST
-- APPLYING CONDITIONS ON COLUMNS WHICH NEEDS TO BE CONSIDERED WHILE TO BE FOLLOWED WHILE INSERTING RECODRS INTO THE TABLES


-- CASE 1 WE WILL HAEV TO CREATE A NEW TABLE
-- TABLE ALREADY EXISTS

CREATE TABLE test_not_null(
employee_id int NOT NULL,
AGE tinyint,
first_name varchar(256) 
)

select * from test_not_null

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME like 'test_not_null'

insert into test_not_null 
values(1,23,'rahik')

insert into test_not_null 
values(1,null,'rahik')


ALTER TABLE test_not_null
ALTER COLUMN first_name varchar(256) NOT NULL

INSERT INTO test_not_null
values(12,34,null)

alter table test_not_null
alter column age tinyint not null

-- cannot change the tables type to not null when already there are null values present into the tables 

/* UNIQUE CONSTRAINTS */
-- It ensures the tables consist of unique values

--case 1 when the table already exits
--case 2 when we need to create the table

CREATE TABLE test_unique(
sid int unique,
age tinyint not null,
first_name varchar(256) not null unique,
last_name varchar(256)
)

select * from test_unique

select * from INFORMATION_SCHEMA.COLUMNS

INSERT INTO test_unique
VALUES(1,23,'ASD','ASD')

INSERT INTO test_unique
VALUES(1,213,'AaSD','AaSD')


INSERT INTO test_unique
VALUES(null,213,'AaSD','AaSD')


INSERT INTO test_unique
VALUES(null,2,'aAaSD','aAaSD')

TRUNCATE TABLE test_unique

ALTER TABLE test_unique
ADD UNIQUE (last_name)


/*check constraint */

-- case 1 table does not exists

create table check_constraint(
eid int ,
first_name varchar(256),
age tinyint CHECK (AGE>=10)	
)

INSERT INTO check_constraint
VALUES 
(1,'FR',15)

SELECT * FROM check_constraint

SELECT * FROM INFORMATION_SCHEMA.COLUMNS

INSERT INTO check_constraint
VALUES 
(1,'FR',1)


--CASE 2 TABLE EXISTS

TRUNCATE TABLE check_constraint

ALTER TABLE check_constraint
ADD CHECK (AGE>10)


-- DEFAULT CONSTRAINTS 

-- USED TO PROVIDE DEFAULT VALUES TO THE COLUMNS

--CASE1 TABLE DOES NOT EXIST

CREATE TABLE test_default(
eid int  default 9,
first_name varchar(256) default 'rahul',
last_name varchar(256),
age tinyint
)

select * from INFORMATION_SCHEMA.COLUMNS

select * from test_default

insert into test_default
values(1,'rahul','asd',1)


insert into test_default(last_name,age)
values('g',1)


--CASE2
TRUNCATE TABLE test_default


ALTER TABLE test_default
ADD DEFAULT 25 FOR AGE



INSERT INTO test_default(eid, first_name, last_name) 
values(1,'asd','asd')
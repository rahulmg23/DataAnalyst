/* PRIMARY KEY */

--Primary key
--cannot contain null values 
--no duplicates

--Forign Key
--Subest of primary key
--can contail null values and duplicate

SELECT * FROM test_1

CREATE TABLE test_1(
emid int PRIMARY KEY,
gender char(1),
age tinyint,
firstname varchar(256)
)

INSERT INTO test_1
VALUES (1, 'M', 23, 'FASDF')

INSERT INTO test_1
VALUES (1, 'F', 26, 'FSDF')


INSERT INTO test_1
VALUES (NULL, 'F', 26, 'FSDF')

TRUNCATE TABLE test_1

--case 2 table exists 
ALTER TABLE test_1
ADD PRIMARY KEY (age)

CREATE TABLE TEST_2(
id int NOT NULL,
name varchar(256),
age int NOT NULL
)

ALTER TABLE TEST_2
ADD PRIMARY KEY (id, age)

SELECT * FROM TEST_2
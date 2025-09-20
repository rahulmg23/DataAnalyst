

CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);


SELECT * FROM Students

-- In case of a tie row row no are assigned randomly 
SELECT  * ,  ROW_NUMBER() OVER(ORDER BY MARKS DESC) AS [ROW NUMBER]
FROM Students

-- If there is a tie next rank , ranks will be skipped
SELECT * , RANK() OVER(ORDER BY MARKS DESC) AS[RANK]
FROM Students

-- no skipping in rank nos if there are same
SELECT *, DENSE_RANK() OVER (ORDER BY MARKS DESC) AS[DENSE RANK]
FROM Students

----------------------

SELECT * FROM Students

SELECT *, ROW_NUMBER() OVER(PARTITION BY SUBJECT ORDER BY MARKS DESC) AS[ROW_NUMBER]
FROM Students

SELECT *, RANK() OVER(PARTITION BY SUBJECT ORDER BY MARKS DESC) AS[RANK]
FROM Students

SELECT *, DENSE_RANK() OVER(PARTITION BY SUBJECT ORDER BY MARKS DESC) AS [MARKS]
FROM Students

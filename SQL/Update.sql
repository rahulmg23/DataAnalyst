select * from Employees

SELECT * INTO #1 FROM Employees

select * from #1

UPDATE #1
SET LastName = ''
WHERE Department is null

select * from #1

UPDATE #1
SET LastName = 'updated', Department = 'asdf'
WHERE EmployeeID = 8

select * from #1


UPDATE #1
SET FirstName = 'Rahu', LastName = 'Suraj'
WHERE EmployeeID = 1

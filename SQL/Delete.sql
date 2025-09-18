select * from dbo.Employees

SELECT * INTO #2 FROM dbo.Employees 

SELECT * FROM #2

UPDATE #2
SET FirstName = 'BoB'
Where EmployeeID = 1 

DELETE #2
WHERE Department = 'AI' AND Salary = 10000.00

SELECT * INTO #3 FROM dbo.Employees 

truncate table #3

select * from #3

drop table #3
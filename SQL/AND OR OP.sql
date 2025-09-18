	SELECT * FROM EmployeeRecords
	WHERE LastName = 'Miller' AND EmployeeID = '3'

	SELECT * FROM EmployeeRecords
	WHERE Department = 'HR' OR Department = 'Finance' 


	SELECT * FROM EmployeeRecords
	WHERE Department = 'HR' OR Department = 'Finance'
	AND Salary = 60000
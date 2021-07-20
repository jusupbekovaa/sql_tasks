USE MyJoinsDB           
GO  
 
SELECT * FROM sys.indexes
WHERE object_id = (SELECT object_id FROM sys.tables
				   WHERE name = 'Employees')
GO	

SELECT * FROM sys.indexes
WHERE object_id = (SELECT object_id FROM sys.tables
				   WHERE name = 'Salary')
GO	


SELECT * FROM sys.indexes
WHERE object_id = (SELECT object_id FROM sys.tables
				   WHERE name = 'InfoEmployees')
GO	
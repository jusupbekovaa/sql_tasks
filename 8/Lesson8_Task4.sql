1) 

CREATE PROC spEmployee1 
AS
SELECT  Name, Phone, Locations FROM 
Employees  
INNER JOIN  -- Оператор объединения.
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID  
GO 

EXEC spEmployee1; 
GO

CREATE FUNCTION fnEmployee1()
RETURNS table 
AS
RETURN 
(SELECT  Phone, Locations FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID);  
GO

SELECT * FROM dbo.fnEmployee1(); 
GO

2)

CREATE PROC spEmployee2 
AS
SELECT  Name, BirthDate, Phone FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE MaritalStatus = 'Не женат';
GO 

EXEC spEmployee2; 
GO

CREATE FUNCTION fnEmployee2()
RETURNS table 
AS
RETURN (SELECT Name, BirthDate, Phone FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE MaritalStatus = 'Не женат');
GO

SELECT * FROM dbo.fnEmployee2(); 
GO

3)

CREATE PROC spEmployee3 
AS
SELECT  Name, BirthDate, Phone FROM 
(Employees  
INNER JOIN  
Salary	
ON Employees.EmployeesID = Salary.EmployeesID) 
INNER JOIN 
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE Post = 'Менеджер';
GO 

EXEC spEmployee3; 
GO

CREATE FUNCTION fnEmployee3()
RETURNS table 
AS
RETURN (SELECT  Name, BirthDate, Phone FROM 
(Employees  
INNER JOIN  -
Salary	
ON Employees.EmployeesID = Salary.EmployeesID)  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE Post = 'Менеджер');
GO

SELECT * FROM dbo.fnEmployee3(); 
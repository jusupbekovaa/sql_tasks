USE MyJoinsDB           
GO   

1)
CREATE VIEW InfoEmployees1  
AS 
SELECT  Name, Phone, Locations FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID 
GO



2)

CREATE VIEW InfoEmployees2   
AS 
SELECT  Name, BirthDate, Phone FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE MaritalStatus = 'Не женат';
GO

3)
CREATE VIEW InfoEmployees3   
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

1)
SELECT Name, Phone, Locations FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID  
GO

2) 

SELECT Name, BirthDate, Phone FROM 
Employees  
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE MaritalStatus = 'Не женат';
GO

3)

SELECT Name, BirthDate, Phone FROM 
(Employees  
INNER JOIN  
Salary	
ON Employees.EmployeesID = Salary.EmployeesID) 
INNER JOIN  
InfoEmployees 
ON Employees.EmployeesID = InfoEmployees.EmployeesID
WHERE Post = 'Менеджер';
GO
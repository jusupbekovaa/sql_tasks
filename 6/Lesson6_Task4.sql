1)
SELECT Name, Phone, Locations FROM Employees AS emp, InfoEmployees AS info
WHERE emp.EmployeesID IN 
                     (SELECT EmployeesID FROM InfoEmployees   
					  WHERE emp.EmployeesID = info.InfoEmployeesID); 

2)
SELECT  Name, BirthDate, Phone FROM Employees AS emp, InfoEmployees AS info
WHERE emp.EmployeesID IN 
                     (SELECT EmployeesID FROM InfoEmployees    
					  WHERE emp.EmployeesID = info.InfoEmployeesID)
					  AND  MaritalStatus = 'Не женат';

3)
SELECT Name, BirthDate, Phone 
FROM Employees AS emp, InfoEmployees 
WHERE emp.EmployeesID = 
                     (SELECT sal.EmployeesID FROM Salary AS sal 
                     WHERE sal.SalaryID =(SELECT info.EmployeesID
					 FROM InfoEmployees AS info    WHERE sal.SalaryID = info.EmployeesID)
                     AND emp.EmployeesID = sal.EmployeesID
					 AND emp.EmployeesID = InfoEmployeesID
					 AND Post = 'Менеджер');
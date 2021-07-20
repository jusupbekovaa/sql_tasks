1)Триггер на  добавление записей


CREATE TRIGGER TR_InfoEmployees ON InfoEmployees
FOR INSERT
AS
 IF EXISTS (SELECT *
            FROM inserted
            WHERE MaritalStatus != 'Женат' AND MaritalStatus !='Не женат')
  BEGIN 
   RAISERROR('ОШИБКА!!!', 1, 16);
   ROLLBACK TRANSACTION
  END

INSERT INTO InfoEmployees																			   
(MaritalStatus, Locations, BirthDate, EmployeesID)
VALUES
('Неженат','Бишкек', '08/15/1995', 5);

SELECT * FROM InfoEmployees

2)Триггер на обновление

CREATE TRIGGER TR_Employees ON Employees
FOR UPDATE
AS
 IF UPDATE (Name) 
  BEGIN
   RAISERROR('Нельзя изменять фамилию и инициалы!!!', 1, 16);
   ROLLBACK TRANSACTION
  END

UPDATE Employees
SET Name = 'Мищенко А. В.' 
WHERE Name = 'Бойко M. К.'

SELECT * FROM Employees
3)Триггер на удаление

CREATE TRIGGER TR_Salary ON Salary
FOR DELETE
AS
 IF EXISTS (SELECT *
            FROM deleted)
  BEGIN 
   RAISERROR('Нельзя удалять данные!!!', 1, 16);
   ROLLBACK TRANSACTION
  END

DELETE FROM Salary
WHERE Post = 'Менеджер';

SELECT * FROM Salary
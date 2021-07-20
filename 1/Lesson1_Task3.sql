USE MyDB                
GO   

CREATE TABLE Worker
(
	WorkerId smallint IDENTITY NOT NULL,
	Name Varchar(20) NOT NULL,
	PhoneNumber char(10) NOT NULL
)
GO 

CREATE TABLE Salary
(
	SalaryId smallint IDENTITY NOT NULL,
	Salary Money NOT NULL,
	Post Varchar(20) NOT NULL
)
GO 

CREATE TABLE WorkerInfo
(
	InfoId smallint IDENTITY NOT NULL,
	MaritalStatus Varchar (20) NOT NULL,
	BirthDate Date NULL,
	[Address] Varchar (30) NOT NULL
)
GO 
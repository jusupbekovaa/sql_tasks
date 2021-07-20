USE MyDB            
GO

CREATE TABLE ArmoryCustomer
(
	ArmoryCustomerID int IDENTITY NOT NULL
	PRIMARY KEY,
	Name varchar(20) NOT NULL,
	[Off] varchar(10) NULL,
	Platoon int NOT NULL
)
GO

CREATE TABLE ArmoryProvider
(
	ArmoryProviderID int IDENTITY NOT NULL 
	PRIMARY KEY,
	Name Varchar(20) NOT NULL,
	[Rank] Varchar(20) NOT NULL
)
GO

 CREATE TABLE Weapons
 (
	WeaponsId smallint IDENTITY NOT NULL 
	PRIMARY KEY,
	Name Varchar(20) NOT NULL,
 )
 GO

 CREATE TABLE Give
(
	GiveId int IDENTITY NOT NULL
	PRIMARY KEY,
	ArmoryCustomerID int NOT NULL FOREIGN KEY 
	REFERENCES ArmoryCustomer(ArmoryCustomerID),
	ArmoryProviderID int NOT NULL FOREIGN KEY 
	REFERENCES ArmoryProvider(ArmoryProviderID),
	WeaponsId smallint NOT NULL FOREIGN KEY 
	REFERENCES Weapons(WeaponsId)
)
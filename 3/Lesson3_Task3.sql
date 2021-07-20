USE StokDB             
GO   

 CREATE TABLE Staff 
(                                      
	StaffID int IDENTITY NOT NULL 
    PRIMARY KEY,				  
	Name varchar(25) NOT NULL,
	Post varchar(40) NOT NULL,
	Contact  varchar(25) NOT NULL,
	Phone char(12) NOT NULL
)
GO	

CREATE TABLE Provider 
(                                      
	ProvaiderID int IDENTITY NOT NULL 
    PRIMARY KEY,				  
	ProviderName varchar(25) NOT NULL,
	Product varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	Contact  varchar(25) NOT NULL,
	City     varchar(15) NOT NULL,
	Phone char(12) NOT NULL,
	StaffID int NOT NULL						                        
    FOREIGN KEY REFERENCES Staff(StaffID)
)
GO		


CREATE TABLE Customers
(                                      
	CustomerID int IDENTITY NOT NULL 
    PRIMARY KEY,				  
	Name varchar(25) NOT NULL,
	Address1 varchar(25) NOT NULL,
	City     varchar(15) NOT NULL,
	Contact  varchar(25) NOT NULL,
	Phone char(12) NOT NULL,
	StaffID int NOT NULL						                        
    FOREIGN KEY REFERENCES Staff(StaffID) -- Связь Один ко Многим.
)
GO	
CREATE DATABASE StokDB 
ON							  
(
	NAME = 'StokDB',				
	FILENAME = 'D:\StokDB.mdf',	
	SIZE = 30MB,                    
	MAXSIZE = 100MB,				
	FILEGROWTH = 10MB				
)
LOG ON						  
( 
	NAME = 'LogStokDB',		       
	FILENAME = 'X:\StokDB.ldf',      
	SIZE = 5MB,                        
	MAXSIZE = 50MB,                    
	FILEGROWTH = 5MB                   
)               
COLLATE Cyrillic_General_CI_AS 
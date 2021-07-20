CREATE DATABASE MyFunkDB
ON							  
(
	NAME = 'MyFunkDB',				
	FILENAME = 'D:\MyFunkDB.mdf',	
	SIZE = 5MB,                   
	MAXSIZE = 30MB,				
	FILEGROWTH = 5MB				
)
LOG ON						  
( 
	NAME = 'LogMyFunkDB',		       
	FILENAME = 'X:\MyFunkDB.ldf',      
	SIZE = 5MB,                        
	MAXSIZE = 30MB,                    
	FILEGROWTH = 5MB                 
)               
COLLATE Cyrillic_General_CI_AS 

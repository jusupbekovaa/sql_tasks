CREATE DATABASE MyDB 
ON							  
(
	NAME = 'MyDB',				
	FILENAME = 'D:\MyDB.mdf',		
	SIZE = 10MB,                    
	MAXSIZE = 100MB,				
	FILEGROWTH = 10MB				
)
LOG ON						  
( 
	NAME = 'LogMyDB',				  
	FILENAME = 'D:\MyDB.ldf',        
	SIZE = 5MB,                       
	MAXSIZE = 50MB,                    
	FILEGROWTH = 5MB                   
)               
COLLATE Cyrillic_General_CI_AS 

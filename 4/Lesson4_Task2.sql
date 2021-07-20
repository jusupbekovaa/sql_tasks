CREATE DATABASE MyDB 
ON							  
(
	NAME = 'MyDB ',				
	FILENAME = 'D:\MyDB .mdf',	
	SIZE = 30MB,                    
	MAXSIZE = 100MB,				
	FILEGROWTH = 10MB				
)
LOG ON						  
( 
	NAME = 'MyDB ',		      
	FILENAME = 'X:\MyDB .ldf',      
	SIZE = 5MB,                        
	MAXSIZE = 50MB,                    
	FILEGROWTH = 5MB                   
)               
COLLATE Cyrillic_General_CI_AS 


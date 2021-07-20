CREATE DATABASE MyJoinsDB
ON							  
(
	NAME = 'MyJoinsDB',				
	FILENAME = 'D:\MyJoinsDB.mdf',	
	SIZE = 5MB,                    
	MAXSIZE = 30MB,				
	FILEGROWTH = 5MB				
LOG ON						  
( 
	NAME = 'LogMyJoinsDB',		       
	FILENAME = 'X:\MyJoinsDB.ldf',      
	SIZE = 5MB,                       
	MAXSIZE = 30MB,                    
	FILEGROWTH = 5MB                   
)               
COLLATE Cyrillic_General_CI_AS 



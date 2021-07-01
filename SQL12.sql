# STRING FUNCTIONS
# STRING FUNCTIONS
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

USE WORLD;
SELECT * FROM COUNTRY;
SELECT REGION FROM COUNTRY;
SELECT UPPER(REGION) FROM COUNTRY;

SELECT LOWER(REGION) FROM COUNTRY;

SELECT LENGTH('WELCOME');
SELECT LENGTH(REGION) FROM COUNTRY;

-- Print names of country whose name has 4 characters
SELECT * FROM COUNTRY WHERE LENGTH(NAME) = 4;

#TRIM 
SELECT TRIM('	WELCOME		');	
select trim('z' from 'zzoraclezz' );
select trim('Z' from 'Zinnun');

# Position of a character
select instr('Welcome' , 'o');	
select instr('zinnun', 'u');

# SUBSTRING / SUBSTR Method
select substr('ORACLE', 2, 3);	-- RAC	//it takes 3 parameters, 1st--> String , 2nd--> Starting Value, 3rd--> No of characters
select substr('ORACLE', 3, 4);	-- ACLE
select substr('ZINNUN', 3, 5);


select substring('ORACLE', 2, 4);	-- RACL

# CONCAT Method
select concat('oracle', 'training');	-- oracletraining

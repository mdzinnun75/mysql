# DDL COMMAND--> Data Definition Language
-- >CREATE - to create objects in the database
-- >ALTER(add, modify) - alters the structure of the database
-- >DROP - delete objects from the database
-- >TRUNCATE - remove all records from a table, including all spaces allocated for the records are removed
-- >COMMENT - add comments to the data dictionary
-- >RENAME - rename an object
# https://www.w3schools.in/mysql/ddl-dml-dcl/


USE MYDB;
SELECT * FROM STUDENT;
DROP TABLE STUDENT;

# CREATE TABLE & COLUMNS
CREATE TABLE STUDENT
(SID INT(4), SNAME VARCHAR(15));
DESCRIBE STUDENT;

#  PUTTING VALUES IN THE TABLE
INSERT INTO STUDENT VALUES(101, 'NISHU');
INSERT INTO STUDENT VALUES(102, 'AYAT');
INSERT INTO STUDENT VALUES(103, 'MASUD');

COMMIT;

# The alter command is used to modify an existing database, table, view 
# ADD A COLUMN
ALTER TABLE STUDENT ADD (GRADE VARCHAR (2))

# DROP A COLUMN
ALTER TABLE STUDENT DROP COLUMN GRADE; 

# MODIFY EXISTING COLUMN
ALTER TABLE STUDENT MODIFY COLUMN SNAME VARCHAR(20);	# CHANGING DATA TYPE IS ALSO POSSIBLE

# RENAMING AN EXISTING COLUMN
ALTER TABLE STUDENT RENAME COLUMN SNAME TO STUNAME;
ALTER TABLE STUDENT RENAME COLUMN STUNAME TO SNAME;

DESCRIBE STUDENT;




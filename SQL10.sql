# TRUNCATE COMMAND

USE MYDB;
SELECT * FROM STUDENT;

# SET AUTOCOMMIT = 0;
INSERT INTO STUDENT VALUES (101, 'AYAT');
INSERT INTO STUDENT VALUES (102, 'NISHU');
INSERT INTO STUDENT VALUES (103, 'MASUD');
COMMIT; 	# PERMANENTLY STORED IN TABLE

TRUNCATE TABLE STUDENT;	# PERMANENTLY DELETED,  ROLLBACK WON'T BRING BACK THE DATA
ROLLBACK;


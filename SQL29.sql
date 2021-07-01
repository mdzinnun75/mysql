-- Integrity Constraints FOREIGN KEY


use mydb;
select * from school;	-- Parent table 
delete from school where sno = 103;	-- error, directly deleting data from parent table is not possible. first we need to delete record from the child table for the same SNO.

select * from library;	-- child table
delete from library where sno = 103; -- successfully deleted. after deleting from child table, deleting from parent table is possible
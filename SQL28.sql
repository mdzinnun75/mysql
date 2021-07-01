-- Integrity Constraints FOREIGN KEY
use mydb;

-- PARENT TABLE 
create table school(
sno int(3), 
sname varchar(15),
marks int(3),
primary key(sno));		-- there must be a primary key in the parent table 

insert into school values(101, 'Najim', 90);
insert into school values(102, 'Ajam', 85);
insert into school values(103, 'Farhan', 82);
select * from school;


-- CHILD TABLE
-- it can not add value for absent primary key of the parent class. but can add NULL & DUPLICATE values if it is not declared as primary key
#drop table library;
create table library(
sno int(3), foreign key (sno) references school(sno),  -- sno column references the parent table sno column
book_name varchar(15));

insert into library values( 101, 'The last don');
insert into library values( 102, 'Inferno');
insert into library values( 103,  'The Fight Club');
insert into library values( 103,  'Mindset'); -- it allows duplicate value as it is not a primary key
insert into library values( 104, 'The Lost Symble'); -- it can not update the value for 104, as it does not exist in the parent table.
insert into library values( null, 'World History'); -- it can update the value for null, as it is not a primary key. the sno column in the child class just refering the sno column of the parent class.

select * from library;


-- CHILD TABLE with primary key
drop table sports;
create table sports(
sno int(3), foreign key (sno) references school(sno),  -- sno column references the parent table sno column
sport_name varchar(15),
primary key(sno));

insert into sports values( 101, 'cricket');
insert into sports values( 102, 'football');
insert into sports values( 103,  'swimming');
insert into sports values( 103,  'cricket'); -- it does not allow duplicate value as it is a PRIMARY KEY.
insert into sports values( 104, 'marathon'); -- it can not update the value for 104, as it does not exist in the parent table.
insert into sports values( null, 'chess'); -- it can NOT update the value for null, as it is a primary key.
select * from sports;



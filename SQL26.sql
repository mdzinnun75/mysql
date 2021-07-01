-- Integrity Constraints
-- NOT NULL
-- UNIQUE
# table doesn't support integrity constraint, only column does. But table level integrity constraint is possible

use mydb;

-- NOT NULL
create table student1 
(sno int(3) not null, 	-- 'not null' is integrity constraint here, so the values of this column can not be NULL 
sname varchar(10), 
marks int(3));

insert into student1 values(101, 'Ayat', 95);	-- correct
insert into student1 values(null, 'Nishu', 90);	-- will throw error

-- UNIQUE
create table student2 
(sno int(3) unique, 	-- 'unique' is integrity constraint here, so the values of this column can not contain duplicate values
sname varchar(10), 
marks int(3));

insert into student2 values(101, 'Ayat', 95);	
insert into student2 values(101, 'Nishu', 90);	-- will throw error for duplicate entry



-- UNIQUE in table level
#drop table student3;
create table student3
(sno int(3), 	-- 'unique' is integrity constraint here, so the values of this column can not contain duplicate value
sname varchar(10), 
marks int(3),
unique(sno, sname));	-- table level, multiple column can be declared as unique at once using table level integrity constraint

insert into student3 values(101, 'Ayat', 95);	-- succeed			* here unique constraint is counted as a combination of (sno + sname)
insert into student3 values(101, 'Nishu', 90);	-- succeed			* so, 101, ayat & 101, nishu are unique as combination 
insert into student3 values(101, 'Nishu', 90);	-- failed
insert into student3 values(null, 'Masud', 90);	-- succeed
insert into student3 values(null, 'Masud', 90);	-- succeed
insert into student3 values(null, 'Masud', 90);	-- succeed
insert into student3 values(null, 'Zinnun', 90);	-- succeed		-- multiple null values are accepted by unique constraint
select * from student3;







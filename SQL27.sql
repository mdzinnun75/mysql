-- Integrity Constraints PRIMARY KEY
-- Primary Key: combination of UNIQUE + NOT NULLL 
-- uses of primary key in multiple column is prohibited
-- but table level combination (composite key) is possible

use mydb;
drop table student4;
create table student4
(sno int(3) primary key, 	-- 'PRIMARY KEY' is integrity constraint here, so the values of this column must be unique & not null
sname varchar(10), 
marks int(3) );

insert into student4 values(101, 'Abraham', 96); -- succeed
insert into student4 values(null, 'david', 96); -- failed
insert into student4 values(103, 'Mosh', 96); -- succeed
insert into student4 values(103, 'Linkon', 96); -- failed

create table student5
(sno int(3), 	
sname varchar(10), 
marks int(3) ,
primary key(sno, sname));	-- this will be assumed unique as a combination, not as indivisual column

insert into student5 values(101, 'Abraham', 96); -- succeed
insert into student5 values(null, 'david', 96); -- failed
insert into student5 values(103, 'Abraham', 96); -- succeed, because the composite key is unique.
insert into student5 values(103, 'Linkon', 96); -- succeed, because the composite key is unique.
insert into student5 values(103, 'Linkon', 96); -- failed, because the composite key is not unique.

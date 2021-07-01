--  Integrity Constraint CHECK KEY
-- 


create table student6(
sno int(5),
sname varchar(15),
marks int(5) check(marks between 50 and 100));


insert into student6 values(101, "Azad", 87);	# succeed
insert into student6 values(102, "Bakkar", 85);	# succeed
insert into student6 values(103, "Riad", 45);	# failed 
use mydb;

create table student
(SID int(4), SNAME varchar(15));
describe student;

insert into student values(101, "Ayat");
insert into student values(102, "Nishu");
insert into student values(103, "Masud");
select * from student;

create table teacher
(TID int(4), TNAME varchar(15));
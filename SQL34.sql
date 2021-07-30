-- AUTO INCREMENT
-- AUTO INCREMENT

use mydb;
drop table student7;
create table student7
( sno int(5) primary key AUTO_INCREMENT,		
sname varchar(15),
marks int(5));		-- auto increment column must have primary key.


insert into student7(sname, marks) values("Sohel", 56);	-- auto_increment increments the sno column automatically
insert into student7(sname, marks) values("Nasir", 69);
insert into student7(sname, marks) values("Fahim", 58);
insert into student7(sname, marks) values("Noman", 72);

delete from student7 where sno= 2;

insert into student7(sname, marks) values("Joy", 77); 
-- deleted columns will not be adjusted, it will add values from the next digit even if the last value of the column is deleted. 
select * from student7;


set sql_safe_updates = 0;
delete  from student7;	-- delete everything from a table


create table student8
( sno int(5) primary key AUTO_INCREMENT,		
sname varchar(15),
marks int(5));

alter table student8 auto_increment= 100;

insert into student8(sname, marks) values("Sohel", 56);	
insert into student8(sname, marks) values("Nasir", 69);
insert into student8(sname, marks) values("Fahim", 58);
insert into student8(sname, marks) values("Noman", 72);

select * from student8;



















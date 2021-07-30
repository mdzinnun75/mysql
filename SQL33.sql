--  Integrity Constraint DEFAULT KEY

use mydb;

create table orders
(id int(5),
orderNumber int(5),
orderDate datetime default now());		-- DATETIME is a data type, now() takes current time & date. 

 select now();

insert into orders values(101, 2563, '2021-07-02 10:57:20');	-- passing datetime manually
insert into orders(id, orderNumber) values(102, 2564);	-- it'll take id & orderNumber manually & current dateTime automatically  as it is declared as default.

select * from orders;
# SET OPERATORS
	-- UNION
    -- UNION ALL
    -- INTERSECT (not supported by MySQL)
    -- MINUS (not supported by MySQL)

use mydb;
create table A(SNAME varchar(10), NUM int(2));
create table B(NUM int(2), GRADE varchar(3));

insert into A values('ABC', 10);
insert into A values('XYZ', 11);
insert into A values('PQR', 12);
insert into A values('MNO', 14);

COMMIT;

insert into B values(11, 'A');
insert into B values(12, 'B');
insert into B values(13, 'C');
insert into B values(15, 'B');
COMMIT;

select * from A;
select * from B;

select num from A union select num from B;
select num from A union all select num from B;

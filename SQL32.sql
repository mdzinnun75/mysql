--  Integrity Constraint CHECK KEY
-- 
use hr;

create table location(
city varchar(15) check(city in('CHITTAGONG','DHAKA', 'RAJSHAHI', 'KHULNA')),
	country varchar(15),
		pin int(5));


insert into location values("chittagong", "Bangladesh", 088);	# succeed
insert into location values("dhaka", "Bangladesh", 088);	# succeed
insert into location values("rangpur", "Bangladesh", 088);	# failed 
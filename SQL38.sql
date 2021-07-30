-- 	COMMIT & ROLL BACK 
-- 	COMMIT & ROLL BACK are TCL command (TCL = Transactional Control Language)
-- TCL commands work only on DML(insert, update & delete) commands

# AUTO COMMIT is enabled in MySQL by default. But it can be disabled by the user.
# ROLLBACK command only works before executing COMMIT command. After commiting  ROLLBACK doesn't work

set autocommit  =0; -- this command stop autocommiting, "false" is also used instead of "0"
set autocommit  =1; -- this command enable autocommiting, "true" is also used instead of "1"

SELECT @@autocommit;	-- to view aucommit status

use mydb;
create table student9
(sid int(5),
sname varchar(15));

drop table student9;

insert into student9 values( 101, "John Doe");
insert into student9 values( 102, "John Smith");
insert into student9 values( 103, "Ken Blanchad");

select * from student9;

commit;

-- need to turn off autocommit before using rollback
delete from student9 where sid=103;	-- in this case, autocommit is turned off before deleting the value
rollback;


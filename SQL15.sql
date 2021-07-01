select curdate();
select current_date();

select curtime();
select current_time();

select now();

select sysdate();

select month('2021-04-15');
select year('2021-04-15');
select day('2021-04-15');

select * from employees where year(hire_date) = "1987";
select * from employees where month(hire_date) = "6";
select * from employees where monthname(hire_date) = "Feb";



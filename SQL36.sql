-- VIEWS 
-- VIEWS

use hr;
select * from employees;

-- creating a view
create view employees_v1 as select employee_id, first_name, salary from employees;

select * from employees_v1;
select * from employees_v1 limit 5, 20;

-- all modifications in VIEW will not affect TABLE, but modifications in TABLE will affect thr VIEW
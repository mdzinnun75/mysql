-- self join
-- self join

use hr;
select * from departments;

select e.employee_id, m.manager_id, e.first_name from employees e, employees m		# using aliases 
where e.employee_id = m.manager_id;

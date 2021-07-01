# Sub Queries
# Sub Queries


-- Display employees whose salary is less than Ellen's salary
use hr;
select salary from employees where first_name = 'Ellen';
select salary, first_name from employees where salary < 11000;

select salary, first_name from employees where salary < (select salary from employees where first_name = 'Ellen'); # sub query--> using first line of command as input of the outer query

-- 2nd max salary frfom employee
select salary from employees;
select max(salary) from employees;


select salary from employees where salary < (select max(salary) from employees); -- selecting every salary less than maximum salary using sub query 
select max(salary) from employees where salary < (select max(salary) from employees);	-- -- selecting 2nd maximum salary using sub query 

select max(salary) from employees where salary < 
	(select max(salary) from employees where salary < 
		(select max(salary) from employees)); -- selecting 3rd maximum salary using sub query 
        


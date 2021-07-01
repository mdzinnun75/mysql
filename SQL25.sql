 -- Query to get department name of the employee
 use hr;
 select department_name from departments where employees.department_id = departments.department_id;
 
 select first_name, employee_id, department_id,
 (select department_name from departments where employees.department_id = departments.department_id)
 from employees;
 
 # -- List out the employees who are having salary less than the maximum salary and also having hire date greater than the hire date of an employee who is having maximum salary
 -- List out the employees who are having salary less than 
	-- the maximum salary 
		-- and also having hire date greater than the hire date of an employee 
			-- who is having maximum salary
 
 select employee_id, first_name, salary, hire_date from employees where salary < 
	( select max(salary) from employees) and hire_date > 
		(select hire_date from employees where salary = 
			(select max(salary) from employees));
 
 
-- find the salary of employees whose salary is greater than the salary of employee whose EMPLOYEE_ID is 150

use hr;
select salary from employees where employee_id = 150;
select first_name, salary from employees where salary > (select salary from employees where employee_id = 150); 

-- Display the employees who all are earning the highest salary
select * from employees where salary = (select max(salary) from employees);

-- Display employees whose salary is equal to the salary of at least one employee in department_id 30
select * from employees where salary in ( select salary from  employees where department_id = 30);	# using IN operator

-- Display employees whose salary is less than the salary of any employee in department_id 30 
select * from employees where salary < any ( select salary from  employees where department_id = 30);	# using ANY operator,it means- it will be less than the salary of any employee from the employees of department_id 30. so, it won't count the max/min value from the department
select * from employees where salary > any ( select salary from  employees where department_id = 30);	# using ANY operator

select * from employees where salary < all ( select salary from  employees where department_id = 30);	# using ALL operator, here min salary of department_id 30 is 2500. so , it returns the values less than 2500














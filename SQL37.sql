-- INDEX
-- INDEX
use hr;
select * from employees;
create index idx_employees on employees (first_name);

select * from idx_employees;

drop index idx_employees on employees;
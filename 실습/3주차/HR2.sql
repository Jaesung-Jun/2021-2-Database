select *
from employees
where employee_id = 100;

select *
from employees
where employee_id <> 100;

select *
from employees
where employee_id < 100;


select *
from employees
where employee_id > 100;


select *
from employees
where employee_id <= 100;


select *
from employees
where employee_id >= 100

select *
from employees
where employee_id >= 120 and employee_id <= 130;

select *
from employees
where salary >= 10000 and salary <= 12000;

select *
from employees
where manager_id = 100 or manager_id = 120;

select *
from employees
where last_name = 'King' OR last_name = 'Smith';

select *
from employees
where not department_id = 50;

select *
from employees
where not department_id = 50 and not department_id = 80;

select *
from employees
where first_name = 'David';

select *
from jobs
where min_salary = 4000;

select *
from jobs
where min_salary > 8000;

select *
from jobs
where min_salary <= 10000;

select *
from jobs
where min_salary >= 4000 AND max_salary <= 10000;

select *
from employees
where job_id = 'IT_PROG' and salary > 5000;
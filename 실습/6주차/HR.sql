select count(salary)
from employees;

select count(manager_id)
from employees;

select count(commission_pct)
from employees;

select salary, manager_id, commission_pct
from employees;

select count(*)
from employees;

select sum(salary), avg(salary)
from employees;

select sum(salary) / count(salary)
from employees;

select first_name, salary,
sum(salary) over (order by first_name)
from employees;

select min(salary), max(salary)
from employees;

select min(first_name), max(first_name)
from employees;

select stddev(salary), variance(salary)
from employees;

select first_name, salary,
stddev(salary) over (order by first_name)
from employees
where department_id = 50;

select department_id, min(salary), max(salary)
from employees
where hire_date > '20070101'
group by department_id;

select country_id, count(country_id)
from locations
group by country_id
order by country_id;

select job_id, department_id,
    sum(salary), avg(salary)
from employees
where department_id between 50 and 100
group by job_id, department_id
order by job_id;

select department_id, manager_id
    sum(salary), avg(salary)
from employees
where department_id = 50
group by department_id, manager_id
order by manager_id;

from first_name, salary
    avg(nvl(commission_pct, 0)) over (order by fist_name)
from employees;
where department_id between 50, 80

select min(max_salary), max(max_salary)
from jobs
where job_title = 'Programmer';

select min(hire_date), max(hire_date)
from employees
where department_id = 50;

select job_id, min(salary), max(salary)
from employees
where hire_date between '20040101' and '20061231'
group by job_id;

select department_id, job_id, min(salary), max(salary), avg(salary)
from employees
group by department_id, job_id
having avg(12000) >= 12000
order by department_id;

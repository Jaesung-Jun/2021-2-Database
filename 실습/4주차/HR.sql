select first_name, last_name
from employees
order by first_name ASC;

select first_name, last_name
from employees
order by first_name DESC;

select department_name
from departments
order by department_name;

select department_name
from departments
order by department_name DESC;

SELECT country_id, city
FROM locations
ORDER BY country_id, city;

select location_id, department_name
from departments
order by location_id;

select location_id, department_name
from departments
order by location_id DESC, department_name;

select *
from employees
where employee_id between 120 and 130;

select *
from employees
where salary between 10000 and 12000;

select *
from employees
where first_name in ('Steven', 'John', 'Peter');

select *
from countries
where country_id in ('US', 'IL', 'SG');

select *
from locations
where city not in ('Sao Paulo', 'London', 'Southlake');

select *
from locations
where state_province is null;

select *
from employees
where commission_pct is not null;

select *
from employees
where commission_pct is null;

select *
from employees
where commission_pct is not null;

select *
from locations
where city like 'South%';

select *
from locations
where street_address like '%St';

select *
from locations
where city like 'South_';

select employee_id, first_name, department_id
from employees
where employee_id <= 160
intersect
select employee_id, first_name, department_id
from employees
where employee_id >= 140;







select job_title
from jobs
order by job_title;

select country_name
from countries
order by country_name desc;

select *
from employees
where salary between 10000 and 12000;

select *
from employees
where job_id in ('IT_PROG', 'ST_MAN');

select *
from employees
where manager_id is null;

select *
from departments
where manager_id is not null;

select *
from employees
where job_id like 'AD%';

select *
from employees
where first_name like '%ni%';

select location_id, street_address, city
from locations
where location_id <= 3000
union all
select location_id, street_address, city
from locations
where location_id >= 2000;

select location_id, street_address, city
from locations
where location_id <= 3000
minus
select location_id, street_address, city
from locations
where location_id >= 2000;

select location_id, street_address, city
from locations
where location_id <= 3000
intersect
select location_id, street_address, city
from locations
where location_id >= 2000;
select first_name, lower(first_name),
    upper(first_name), initcap(first_name)
from employees;

select job_id, substr(job_id, 1, 2), substr(job_id, 4)
from employees;

select job_id, replace(job_id, 'MGR', 'MANAGER')
from employees;

select job_id, replace(job_id, 'PROG', 'PROGRAMMER')
from employees;

select concat(first_name, concat(' ', last_name))
from employees;

select first_name, length(first_name)
from employees;

select first_name, instr(first_name, 'a')
from employees;

select lpad(first_name, 10, '*'), rpad(first_name, 10, '*')
from employees;

select job_id, ltrim(job_id, 'A'), RTRIM(job_id, 'T')
from employees;

select TRIM('        Suan     '), TRIM('    Su an')
from dual;

Select *
from dual;

select job_title, lower(job_title), upper(job_title)
from jobs;

select substr(first_name, 1, 1), last_name
from employees;

select job_id, replace(job_id, 'REP', 'REPRESENTATIVE')
from employees;

select concat(substr(first_name, 1, 1), concat(' ', last_name))
from employees;

select length(first_name) + length(last_name)
from employees;

select job_id, INSTR(job_id, 'A')
from employees;

select LPAD(city, 15, '.'), RPAD(city, 15, '.')
from locations;

select LTRIM(city, 'S'), RTRIM(city, 'e')
from locations;

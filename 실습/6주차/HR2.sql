select *
from employees;

select *
from departments;

select count(*)
from employees, departments;

select *
from jobs;

select *
from job_history;

select *
from jobs, job_history
where jobs.job_id = job_history.job_id;

select *
from countries;

select *
from locations;

select *
from countries C, locations L
where C.country_id = L.country_id;

select *
from employees E, jobs J
where E.salary between j.min_salary and J.max_salary;

select E.first_name, E.hire_date, H.start_date, H.end_date
From employees E, job_history H
where E.hire_date between H.start_date and H.end_date;


select *
from jobs J, job_history H
where J.job_id = H.job_id(+);

select *
from employees E, departments D
where E.department_id(+) = D.department_id;

select E.first_name, E.last_name, M.first_name, M.last_name
from employees E, employees M
where E.manager_id = M.employee_id;




select *
from jobs;

select *
from job_history;

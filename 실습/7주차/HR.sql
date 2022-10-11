select C.country_name, L.state_province, L.street_address
from countries c, locations L
where C.country_id = L.country_id;

select J.job_id, J.job_title, H.start_date, H.end_date
from jobs J, job_history H
where J.job_id = H.job_id;

select E.first_name, E.last_name, D.department_name, J.job_title
from employees E, departments D, jobs J
where E.department_id = D.department_id
AND E.job_id = J.job_id;

select C.country_id, C.country_name, L.city
from countries C, locations Ls
where C.country_id = L.country_id(+);

select employee_id, first_name, last_name, department_name
from employees E, departments D
where E.department_id = D.department_id(+)
order by E.employee_id;

select E.first_name || ' ' || E.last_name employee,
       M.first_name || ' ' || M.last_name manager 
from employees E, employees M
where E.manager_id = M.employee_id
order by E.employee_id;
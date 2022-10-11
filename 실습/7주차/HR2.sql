select *
from employees
where phone_number = ( select phone_number
                        from employees
                        where employee_id = 100 );

select *
from employees
where hire_date = (select hire_date
                    from employees
                    where email = 'SKING');
                    
select *
from employees
where hire_date < (select hire_date
                    from employees
                    where email = 'SKING');

select *
from employees
where salary >= (select salary
                from employees
                where hire_date = '06/01/03');

select *
from employees
where salary in (select max(salary)
                from employees
                group by department_id );

select max(salary)
from employees
group by department_id;

select *
from employees
where salary not in ( select max(salary)
                      from employees
                      group by department_id );

select *
from employees
where exists ( select *
                from employees
                where employee_id = 300 );

select *
from employees
where salary <> any(6000, 10000, 12000);

select *
from employees
where salary < any(6000, 10000, 12000);

select *
from employees
where salary <= any(6000, 10000, 12000);

select *
from employees
where salary <= any(6000, 10000, 12000);

select *
from employees
where salary <> ALL(6000, 10000, 12000);

select *
from employees
where salary < all ( select salary
                        from employees
                        where hire_Date > '08/01/01');
                        
select *
from employees
where salary > any (select max(salary)
from employees
group by department_id );

select max(salary)
from employees
group by department_id;

select *
from employees E, ( select department_id
                    from departments
                    where department_name = 'IT') D
where E.department_id = D.department_id;

select E.last_name, E.salary, D.avg_sal
From employees E, (select department_id, avg(salary) avg_sal
                    from employees
                    group by department_id ) D
where E.department_id = D.department_id
and E.salary > D.avg_sal;

select department_name, (select avg(salary)
                        from employees
                        group by department_name )
from departments;

select ROWNUM, salary
FROM ( select salary
        from employees 
        order by salary desc)
where rownum <= 10;

select first_name, last_name, job_id, salary
from employees
where department_id = ( select department_id
                        from departments
                        where department_name = 'IT' );
select department_id, department_name
from departments
where location_id = (select location_id
                    from locations
                    where state_province = 'California' );

select city, state_province, street_address         
from locations
where country_id in (select country_id
                    from countries
                    where region_id = 3);
                    
select first_name, last_name, job_id, salary
from employees
where department_id in (select department_id
                        from departments
                        where manager_id is not null );

select department_id, department_name
from departments
where location_id not in (
                            Select location_id
                            from locations
                            where city = 'Seattle'
);                    

select city, state_province, street_address
from locations
where country_id in (select country_id
                    from countries
                    where region_id =( 
                                        select region_id
                                        from regions
                                        where region_name = 'Europe'));
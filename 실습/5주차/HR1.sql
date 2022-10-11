select to_char(sysdate, 'CC AD Q')
from dual;

select to_char(sysdate, 'YYYY/MM/DD')
from dual;

select to_char(sysdate, 'W DAY')
from dual;

select to_char(sysdate, 'AM HH:MI:SS')
from dual;

select to_char(sysdate, 'HH24:MI:SS PM')
from dual;

select to_char(sysdate, 'YY-MM-DD')
from dual;

select to_char(sysdate, 'YY"년" MM"월" DD"일"')
from dual;

select to_char(salary, '$9999999')
from employees;

select to_char(salary, 'L9999999')
from employees;

select to_char(salary, '99999.99')
from employees;

select to_char(salary, '9,999,999')
from employees;

select to_number('123')
from dual;

select to_number('123.123')
from dual;

select to_date('20210909', 'YYMMDD')
from dual;

select department_name, nvl(manager_id, 100)
from departments;

select nvl(state_province, 'None')
from locations
order by state_province;

select department_name, manager_id
from departments;

select department_name,
        nvl2(manager_id, '관리자 있음', '관리자 없음')
from departments;

select city, nvl2(state_province, '주소 있음', '주소 없음')
from locations
order by state_province;

select city, nvl2(state_province, '주소 있음', '주소 없음')
from locations
order by state_province;

select job_title, min_salary,
        DECODE(min_salary, 2500, min_salary * 1.1, min_salary)
from jobs;

select job_title, max_salary,
        DECODE(max_salary, 40000, max_salary * 0.9, max_salary)
from jobs;

select job_title, min_salary,
        case
            when min_salary < 4000 then min_salary * 1.2
            when min_salary between 4000 and 6000 then min_salary * 1.1
            else min_salary
        end as 최소급여변경
from jobs;

select first_name, salary,
        rank() over (order by salary desc) rank,
        dense_rank() over (order by salary desc) dense_rank,
        row_number() over (order by salary desc) row_number
from employees;

select CEIL(min_salary/30), FLOOR(min_salary/30)
from jobs;

select ROUND(min_salary/30, 1), ROUND(min_salary/30, -1)
from jobs;

select TRUNC(min_salary/30, 2), TRUNC(min_salary/30, -2)
from jobs;

select sysdate, ADD_MONTHS(sysdate, 1)
from dual;

select sysdate, next_day(sysdate, 2), next_day(sysdate, 6)
from dual;

select to_char(sysdate, 'MM/DD DAY')
from dual;

select to_char(sysdate, 'AM HH:MI')
from dual;

select to_char(to_date('20210101', 'YYMMDD'), 'DAY')
from dual;

select salary, commission_pct, salary + salary * commission_pct
from employees
order by commission_pct;

select first_name, last_name, department_id, salary,
    decode(department_id, 60, salary * 1.1, salary) as 급여인상,
    decode(department_id, 100, salary * 0.9, salary) as 급여감소
from employees;

select job_title, max_salary,
    case
        when max_salary >= 20000 then '상위'
        when max_salary between 10000 and 20000 then '중위'
        else '하위'
    end as 급여인상
from jobs
where job_title like '%Manager';














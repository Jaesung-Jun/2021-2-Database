SELECT *
FROM departments;

SELECT department_id, department_name
FROM departments;

SELECT department_id AS 부서ID, department_name AS 부서이름
FROM departments;

SELECT DISTINCT location_id
FROM departments;

SELECT department_id || department_name
FROM departments;

SELECT 'Departments of ' || department_name AS 부서이름
FROM departments;

SELECT first_name, last_name, salary
FROM employees;

SELECT first_name, last_name, salary + 500
FROM employees;

SELECT first_name, last_name, salary - 500
FROM employees;

SELECT first_name, last_name, salary * 1.1
FROM employees;

SELECT first_name, last_name, salary / 1.2
FROM employees;

SELECT *
FROM countries;

SELECT country_id, country_name
FROM countries;

SELECT country_id AS 국가ID, country_name AS 국가명
FROM countries;

SELECT DISTINCT region_id
FROM countries

SELECT country_name || country_id
FROM countries;

SELECT *
FROM locations;

SELECT street_address, city AS 도시
FROM locations;

SELECT job_id as 직업id, job_title as 직업명
from jobs

select job_title, min_salary * 1.1 as 최소연봉 , max_salary * 1.1 as 최대연봉
from jobs;

select first_name || ' ' ||last_name as 이름
from employees;

select distinct job_id
from employees;


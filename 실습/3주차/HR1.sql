SELECT *
FROM departments;

SELECT department_id, department_name
FROM departments;

SELECT department_id AS �μ�ID, department_name AS �μ��̸�
FROM departments;

SELECT DISTINCT location_id
FROM departments;

SELECT department_id || department_name
FROM departments;

SELECT 'Departments of ' || department_name AS �μ��̸�
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

SELECT country_id AS ����ID, country_name AS ������
FROM countries;

SELECT DISTINCT region_id
FROM countries

SELECT country_name || country_id
FROM countries;

SELECT *
FROM locations;

SELECT street_address, city AS ����
FROM locations;

SELECT job_id as ����id, job_title as ������
from jobs

select job_title, min_salary * 1.1 as �ּҿ��� , max_salary * 1.1 as �ִ뿬��
from jobs;

select first_name || ' ' ||last_name as �̸�
from employees;

select distinct job_id
from employees;


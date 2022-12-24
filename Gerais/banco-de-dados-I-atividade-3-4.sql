/*	Universidade Estadual do Piauí – UESPI
	Centro de Tecnologia e Urbanismo – CTU
	Bacharelado em Ciência da Computação
	Disc. Banco de Dados I
	Prof. Lianna Mara Castro Duarte
	Aluno: Weverton Pereira Alves */

/* 3 */

/* A */

select
	departments.LOCATION_ID, locations.STREET_ADDRESS, locations.CITY, locations.STATE_PROVINCE, countries.COUNTRY_NAME
from
	departments natural join locations natural join countries;

/* B */

select
	employees.EMPLOYEE_ID, employees.LAST_NAME, gerentes.EMPLOYEE_ID, gerentes.LAST_NAME
from
	employees natural join departments 
    left join employees as gerentes on(departments.MANAGER_ID = gerentes.EMPLOYEE_ID) 
where 
	gerentes.EMPLOYEE_ID is not null;

/* C */

select
	DEPARTMENT_NAME, LAST_NAME, CITY
from
	departments left join employees on(departments.MANAGER_ID = employees.EMPLOYEE_ID) 
    left join locations on(departments.LOCATION_ID = locations.LOCATION_ID) 
where 
	EMPLOYEE_ID is not null;

/* D */

select
	departments.DEPARTMENT_NAME, employees.FIRST_NAME, employees.LAST_NAME, HIRE_DATE, SALARY
from
	departments left join employees on(departments.MANAGER_ID = employees.EMPLOYEE_ID)
where
	employees.EMPLOYEE_ID is not null and timestampdiff(year, HIRE_DATE, now()) > 15;

/* 4 */

/* A */

select
	*
from
	employees
where
	char_length(FIRST_NAME) >= 8;

/* B */

update employees set EMAIL = concat(EMAIL, '@example.com');

/* C */

SELECT 
	substring(JOB_TITLE, 1, instr(JOB_TITLE, ' ')) 
FROM 
	hr.jobs
where
	instr(JOB_TITLE, ' ') <> 0;
/*	Universidade Estadual do Piauí – UESPI
	Centro de Tecnologia e Urbanismo – CTU
	Bacharelado em Ciência da Computação
	Disc. Banco de Dados I
	Prof. Lianna Mara Castro Duarte
	Aluno: Weverton Pereira Alves */

/* 1 */

/* A */

select JOB_ID, count(*) from employees group by JOB_ID;

/* B */

select MANAGER_ID as gerente , min(SALARY) as 'menor salario' from employees where MANAGER_ID is not null group by MANAGER_ID;

/* C */

select 
	DEPARTMENT_ID, count(*) as 'quantidade funcionarios', avg(SALARY) as 'salario medio' 
from 
	employees 
group by 
	DEPARTMENT_ID 
having 
	count(DEPARTMENT_ID) > 10;

/* 2 */

/* A */

select
	FIRST_NAME, LAST_NAME
from
	employees left join departments on(employees.DEPARTMENT_ID = departments.DEPARTMENT_ID)
where
	employees.MANAGER_ID is not null and LOCATION_ID in(
	select
		LOCATION_ID
	from
		locations left join countries on(locations.COUNTRY_ID = countries.COUNTRY_ID)
	where
		countries.COUNTRY_ID = 'US');

/* B */

select
	FIRST_NAME, LAST_NAME, SALARY
FROM
	employees
where
	SALARY > (
	select
		avg(SALARY)
	from
		employees);
		
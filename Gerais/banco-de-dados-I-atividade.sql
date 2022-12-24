/*	Universidade Estadual do Piauí – UESPI
	Centro de Tecnologia e Urbanismo – CTU
	Bacharelado em Ciência da Computação
	Disc. Banco de Dados I
	Prof. Lianna Mara Castro Duarte
	Aluno: Weverton Pereira Alves */
    
    
/* 1 */

insert into alocacao(matric, codigop, horas)values(333333, 1, 10);
insert into alocacao(matric, codigop, horas)values(666666, 2, 5);
insert into alocacao(matric, codigop, horas)values(888888, 3, 10);
insert into alocacao(matric, codigop, horas)values(444444, 4, 5);
insert into alocacao(matric, codigop, horas)values(333333, 5, 10);
insert into alocacao(matric, codigop, horas)values(111111, 6, 7);
insert into alocacao(matric, codigop, horas)values(666666, 1, 10);
insert into alocacao(matric, codigop, horas)values(333333, 2, 5);
insert into alocacao(matric, codigop, horas)values(888888, 2, 10);
insert into alocacao(matric, codigop, horas)values(888888, 4, 5);
insert into alocacao(matric, codigop, horas)values(111111, 5, 10);
insert into alocacao(matric, codigop, horas)values(888888, 6, 10);

/* 2 */

update projeto set projeto.localp = 'Fortaleza', projeto.status = 'FASE 1' where projeto.codProj in(1, 3, 6);
update projeto set projeto.localp = 'Teresina', projeto.status = 'FASE 2' where projeto.codProj in(2, 5);
update projeto set projeto.localp = 'Recife', projeto.status = 'FASE 3' where projeto.codProj = 4;

/* 3 */

select nome from empregado where salario > 3000;

/* 4 */

select nome from alocacao left join empregado on(alocacao.matric = empregado.matricula) where codigop = 2;

/* 5 */

select 

	empregado.nome, 
	empregado.endereco 
from 
	empregado left join departamento on(empregado.depto = departamento.codDep) 
where 
	departamento.nome = 'Pesquisa';
    
/* 6 */

select nome from empregado where nome like 'A%';

/* 7 */

select nome from projeto order by nome asc;

/* 8 */

select 

	empregado.nome, 
    alocacao.horas 
from 
	alocacao left join empregado on(alocacao.matric = empregado.matricula) 
where 
	alocacao.codigop = 3 order by horas asc;
    
/* 9 */

select sum(horas) from alocacao left join empregado on(alocacao.matric = empregado.matricula) where empregado.nome = 'Maria';

/* 10 */

select matric from alocacao where horas > 7 group by matric;

/* 11 */

select 
	count(*)
from
	empregado left join departamento on(empregado.depto = departamento.codDep)
where
	departamento.nome = 'Computacao';
    
/* 12 */

select empregado.nome, salario from projeto left join empregado on(projeto.gerente = empregado.matricula);

/* 13 */

select
	*
from
	alocacao left join empregado on(alocacao.matric = empregado.matricula)
    left join projeto on(alocacao.codigop = projeto.codProj)
group by
	projeto.nome
order by
	projeto.nome asc;
    
/* 14 */

select
	empregado.nome, min(empregado.salario) as salario, departamento.nome
from
	empregado left join departamento on(empregado.depto = departamento.codDep)
group by
	departamento.nome
order by
	empregado.salario asc;

/* 15 */

select nome, salario from empregado order by salario desc limit 3;

/* 16 */

select
	codDep, count(empregado.nome), empregado.nome, salario
from
	departamento, empregado
where
	departamento.codDep = empregado.depto and empregado.salario > 30000 and departamento.codDep in(
    select
		empregado.depto
	from
		empregado
	having
		count(*) > 2);

/* 17 */

select
	projeto.nome, min(horas) as minimo, max(horas) maximo, avg(horas) as media
from
	alocacao left join projeto on(alocacao.codigop = projeto.codProj)
group by
	projeto.nome;

/* 18 */

select
	empregado.nome, empregado.salario, empregado.depto
from
	empregado left join departamento on(empregado.depto = departamento.codDep)
where
	empregado.salario > (
    select
		avg(salario)
	from
		empregado left join departamento on(empregado.depto = departamento.codDep)
	group by
		departamento.nome);

/* 19 */

select
	codDep, departamento.nome, departamento.gerente, departamento.dataini
from
	departamento left join empregado on(empregado.depto = departamento.codDep)
where
	empregado.nome is null;

/* 20 */

select * from empregado left join alocacao on(empregado.matricula = alocacao.matric) where alocacao.matric is null;

/* 21 */

select
	projeto.nome, count(projeto.nome)
from
	alocacao left join projeto on(alocacao.codigop = projeto.codProj)
group by
	projeto.nome
having
	count(*) <= 1;
    
/* 22 */

select
	codigop, avg(horas)
from
	alocacao
group by
	codigop
having
	avg(horas) > 20;

/* 23 */

select
	projeto.nome
from
	alocacao left join projeto on(alocacao.codigop = projeto.codProj)
where
	alocacao.codigop in(
    select
		codigop
	from
		alocacao
	group by
		codigop
	having
		avg(horas) > 20);
/*	Universidade Estadual do Piauí – UESPI
	Centro de Tecnologia e Urbanismo – CTU
	Bacharelado em Ciência da Computação
	Disc. Banco de Dados I
	Prof. Lianna Mara Castro Duarte
	Aluno: Weverton Pereira Alves */

/* 1 */

SELECT nome from cliente where pais = 'Portugal';

/* 2 */

select cidade, count(*) from cliente where pais = 'Portugal' group by cidade;

/* 3 */

select designacao from quarto left join tipoquarto on(quarto.idtipo = tipoquarto.id) where andar = 3;

/* 4 */

select nome from cliente left join reserva on(cliente.ref = reserva.ref) where num = 22 and data_e > '2007-01-10';

/* 5 */

select * from reserva where ref = 101 order by num asc;

/* 6 */

select idtipo as tipo_quarto, count(*) as quantidade from reserva left join quarto on(reserva.num = quarto.num) group by idtipo;

/* 7 */

select designacao from tipoquarto where lotacao > 1;

/* 8 */

select andar from quarto where idtipo = 1;

/* 9 */

select cliente.ref, nome from cliente left join reserva on(cliente.ref = reserva.ref) where regime = 'PA';

/* 10 */

select 
	cliente.ref, cliente.nome 
from 
	cliente left join reserva on(cliente.ref = reserva.ref) left join quarto on(reserva.num = quarto.num) 
where 
	numeropessoas > 2 and quarto.andar = 3;
    
/* 11 */

select num from quarto left join tipoquarto on(quarto.idtipo = tipoquarto.id) where lotacao = 1 order by num asc;

/* 12 */

select regime, count(*) from reserva left join quarto on(quarto.num = reserva.num) group by regime;

/* 13 */

select data_e from reserva where numeropessoas > 2;

/* 14 */

select ref from reserva where regime = 'MP' group by ref;

/* 15 */

select num, designacao from quarto left join tipoquarto on(quarto.idtipo = tipoquarto.id) where designacao = 'Suite';

/* 16 */

select 
	cidade 
from 
	reserva left join cliente on(cliente.ref = reserva.ref) left join quarto on(reserva.num = quarto.num) 
where 
	idtipo = 1 and andar < 3;

/* 17 */

select data_e from reserva left join cliente on(cliente.ref = reserva.ref) where pais = 'Portugal' order by data_e asc;

/* 18 */

select 
	data_e, designacao, count(*) as numero_pessoas 
from 
	reserva left join quarto on(reserva.num = quarto.num) left join tipoquarto on(tipoquarto.id = quarto.idtipo) 
where 
	designacao = 'Single' 
group by
	data_e;




	
/* 1 - Retorna apenas a venda de livros de uma categoria especifica */

select
	c.cod_cliente, c.nome, i.cod_pedido, i.cod_livro, valor_item, quantidade_pedido, valor_total
from
	vw_clientes_e_pedidos as c left join vw_item_pedidos_e_pedidos as i on(c.cod_pedido = i.cod_pedido)
    where cod_livro in(
    select
		cod_livro
	from
		vw_livros_e_categorias
	where
		nome = 'Horror'
	);

/* 2 - Retorna apenas a venda de livros por uma editora especifica */

select
	cod_editora, nome_editora, i.cod_livro, e.titulo, e.valor, i.quantidade_pedido, (e.valor * i.quantidade_pedido) as 'valor total venda'
from
	vw_item_pedidos_e_pedidos as i left join vw_editoras_e_livros as e
    on(i.cod_livro = e.cod_livro)
where nome_editora in(
	select
		nome_editora
	from
		editora
	where
		nome_editora = 'Galera');

/* 3 Retorna todas as vendas feitas por um funcionario */

select
	f.cod_pedido, sum(i.valor_item) as 'valor total'
from
	vw_funcionarios_e_pedidos as f left join vw_item_pedidos_e_pedidos as i
    on(f.cod_pedido = i.cod_pedido)
where
	i.cod_funcionario = (
	select
		cod_funcionario
	from
		funcionario
	where
		nome = 'Quemia C Alves'
    ) group by f.cod_pedido;

/* 4 Retorna uma venda com o valor acima da media das vendas totais */

select
	cod_cliente, c.nome, cod_funcionario, f.nome, f.cod_pedido, f.valor_pedido
from
	vw_clientes_e_pedidos as c left join vw_funcionarios_e_pedidos as f
    on(c.cod_pedido = f.cod_pedido)
where
	f.valor_pedido > (
    select
		avg(valor_total)
	from
		vw_item_pedidos_e_pedidos);
        
/* 5 Retorna os livros que foram vendidos e que possuem valor acima da media total de livros */

select
	l.cod_livro, titulo, autor, nome, valor
from
	vw_livros_e_categorias as l right join vw_item_pedidos_e_pedidos as i
    on(l.cod_livro = i.cod_livro)
where
	l.valor < (
	select
		avg(valor)
	from
		vw_livros_e_categorias
    );

/* Auto Relacionamento */

# Apenas funcionarios que possuem gerente
select
	*
from
	funcionario
where
	cod_gerente is not null;

# Funcionarios e seus gerentes

select
	f.nome as Gerente,f.cargo, fg.nome as Funcionario_gerenciado, fg.cargo
from
	funcionario as f right join funcionario as fg on(f.cod_funcionario = fg.cod_gerente)
where
	f.cod_funcionario is not null;
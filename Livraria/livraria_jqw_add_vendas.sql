/* 1 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(1, 3, '2019-05-20');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 50.30, 1, 1);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 1)
    where cod_pedido = 1;

/* 2 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(3, 2, '2019-03-02');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(2, 29.40, 2, 2);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 2)
    where cod_pedido = 2;
    
/* 3 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(5, 1, '2019-09-08');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(5, 46.90, 3, 3);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(3, 46.90, 4, 3);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 3)
    where cod_pedido = 3;
    
/* 4 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(14, 3, '2021-04-12');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 48.93, 10, 4);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 51.86, 19, 4);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 36.80, 39, 4);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 4)
    where cod_pedido = 4;
    
/* 5 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(10, 2, '2022-08-15');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 29.40, 2, 5);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 41.58, 21, 5);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 34.08, 47, 5);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 5)
    where cod_pedido = 5;

/* 6 */
insert into pedido(cod_cliente_fk, cod_funcionario_fk, data)values(4, 2, '2022-12-02');
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 41.99, 16, 6);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 49.90, 18, 6);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 31.41, 43, 6);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 31.41, 44, 6);
insert into item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)values(1, 46.76, 51, 6);
update pedido set valor_pedido = (
	select sum(quantidade_pedido * valor_item) 
    from item_pedido 
    where pedido_cod_pedido = 6)
    where cod_pedido = 6;
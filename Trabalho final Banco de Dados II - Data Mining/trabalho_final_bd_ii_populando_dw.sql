# POPULANDO DIMENSÃO CLIENTE
INSERT dimensao_cliente(id_cliente, nome, sexo, idade)
SELECT id, nome, sexo, idade FROM trabalho_final_bd_ii.clientes;

# POPULANDO DIMENSÃO PRODUTO
INSERT dimensao_produto(id_produto, nome, preco, quantidade)
SELECT id, nome, preco, quantidade FROM trabalho_final_bd_ii.produtos;

# POPULANDO DIMENSAO TEMPO
INSERT dimensao_tempo(data)
SELECT data 
FROM trabalho_final_bd_ii.pedido_produto pp
LEFT JOIN trabalho_final_bd_ii.produtos p ON(pp.id_produto = p.id)
LEFT JOIN trabalho_final_bd_ii.pedidos pd ON(pp.id_pedido = pd.id)
LEFT JOIN trabalho_final_bd_ii.clientes c ON(pd.id_cliente = c.id);

# POPULANDO PEDIDO FATO
INSERT pedido_fato(valor_vendido, unidades_vendidas, dimensao_cliente_id, dimensao_produto_id, dimensao_tempo_id)
SELECT pp.valor, pp.quantidade, c.id, p.id, dimensao_tempo.id_tempo FROM trabalho_final_bd_ii.pedido_produto pp
LEFT JOIN trabalho_final_bd_ii.produtos p ON(pp.id_produto = p.id)
LEFT JOIN trabalho_final_bd_ii.pedidos pd ON(pp.id_pedido = pd.id)
LEFT JOIN trabalho_final_bd_ii.clientes c ON(pd.id_cliente = c.id)
LEFT JOIN dimensao_tempo ON(dimensao_tempo.id_cliente = c.id AND dimensao_tempo.id_produto = p.id);
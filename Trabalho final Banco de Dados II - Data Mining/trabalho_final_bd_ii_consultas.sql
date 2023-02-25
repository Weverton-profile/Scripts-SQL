# CLUSTER, mostra qual sexo comprou mais e o que cada sexo comprou mais
SELECT sexo, dp.nome
FROM pedido_fato pf LEFT JOIN dimensao_cliente dc ON(pf.dimensao_cliente_id = dc.id_cliente)
LEFT JOIN dimensao_produto dp ON(pf.dimensao_produto_id = dp.id_produto);

# RandomTree, constroi uma arvore relacionado IDADE, SEXO e PRODUTO
SELECT sexo, idade, dp.nome
FROM pedido_fato pf LEFT JOIN dimensao_cliente dc ON(pf.dimensao_cliente_id = dc.id_cliente)
LEFT JOIN dimensao_produto dp ON(pf.dimensao_produto_id = dp.id_produto);

# Consultas relacionando DATA e o PRODUTO
# Por um problema DAY = ANO, as informações de ano e dia estão invertidas
SELECT DAY(dt.data) as ano, MONTH(dt.data) as mes, dp.nome
FROM pedido_fato pf LEFT JOIN dimensao_cliente dc ON(pf.dimensao_cliente_id = dc.id_cliente)
LEFT JOIN dimensao_produto dp ON(pf.dimensao_produto_id = dp.id_produto) LEFT JOIN dimensao_tempo dt ON(pf.dimensao_tempo_id = dt.id_tempo);

# Um SEXO especifico por DATA e PRODUTO
SELECT sexo, MONTH(dt.data) as mes, dp.nome
FROM pedido_fato pf LEFT JOIN dimensao_cliente dc ON(pf.dimensao_cliente_id = dc.id_cliente)
LEFT JOIN dimensao_produto dp ON(pf.dimensao_produto_id = dp.id_produto) 
LEFT JOIN dimensao_tempo dt ON(pf.dimensao_tempo_id = dt.id_tempo) WHERE sexo = 'M';

SELECT sexo, MONTH(dt.data) as mes, dp.nome
FROM pedido_fato pf LEFT JOIN dimensao_cliente dc ON(pf.dimensao_cliente_id = dc.id_cliente)
LEFT JOIN dimensao_produto dp ON(pf.dimensao_produto_id = dp.id_produto) 
LEFT JOIN dimensao_tempo dt ON(pf.dimensao_tempo_id = dt.id_tempo) WHERE sexo = 'F';
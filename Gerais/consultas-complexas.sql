# Consulta complexa

-- compras
-- Passo 1 - Trazer as compras
SELECT * FROM compras;

-- Passo 2 - Colocar o nome dos clientes nas compras
SELECT com.id AS 'Compras', cli.nome AS 'Cliente', com.data AS 'Data Compra'
	FROM compras AS com, clientes AS cli
    WHERE com.id = cli.id;

-- Passo 3 - Valor total da Compra
SELECT * FROM produtos_compra;

-- Passo 4 -
SELECT com.id AS 'Venda', 
	cli.nome AS 'Cliente',
    SUM(prod.preco_venda * proc.quantidade) AS 'Total',
    com.data AS 'Data da Compra'
	FROM produtos_compra AS proc, produtos AS prod, compras AS com, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
	GROUP BY com.id;





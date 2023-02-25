CREATE DEFINER=`root`@`localhost` PROCEDURE `add_pedido_produto`(qtd INT,pedido_id INT, produto_id INT)
BEGIN
    INSERT INTO pedido_produto(quantidade, valor, id_pedido, id_produto) VALUES 
    (qtd, (SELECT preco * qtd FROM produtos WHERE id = produto_id), pedido_id, produto_id);
END
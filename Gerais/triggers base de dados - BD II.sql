DELIMITER //
CREATE TRIGGER TG_GERAR_LOG AFTER INSERT ON pedido
FOR EACH ROW
BEGIN
	INSERT INTO log(descricao) SELECT
    concat(Cliente.nome, ', ', Endereco, ', ', CPF, ', ', Quantidade) as log
    FROM
    pedido LEFT JOIN cliente ON(Cliente.idCliente = Cliente_idCliente)
    LEFT JOIN produtos ON(Produtos_idProdutos = idProdutos);
END//

DELIMITER //
CREATE TRIGGER TRG_ATUALIZAR_VALOR_PRODUTO AFTER UPDATE ON produtos  
FOR EACH ROW
BEGIN
	IF OLD.valor <> NEW.valor THEN
		INSERT INTO log(descricao)  
    	VALUES(concat(produtos.nome, ', ', produtos.loja_idLoja, ', ', OLD.valor + ((OLD.valor) * NEW.valor)));
	END IF;
END//

DELIMITER //
CREATE TRIGGER TRG_PEDIDO_COM_MAIS_DE_5_ITENS AFTER INSERT
ON pedido
FOR EACH ROW
BEGIN
	IF pedido.qtd_pedido > 5 THEN 
		INSERT INTO log_table(descricao)  
    	VALUES(concat(cliente.nome, ', ', cliente.endereco, " - É uma grande entrega."));
	END IF;
END//
CREATE PROCEDURE `criar_venda`(cliente_cod int, funcionario_cod int, quantidade int, livro_cod int, codigo_pedido int)
BEGIN
	DECLARE mensagem VARCHAR(60);
	DECLARE preco DECIMAL(5,2);
    IF  livro_cod IN (SELECT cod_livro FROM livro) AND cliente_cod IN(SELECT cod_cliente FROM cliente) AND  funcionario_cod IN(SELECT cod_funcionario FROM Funcionario) THEN
		SET preco = (SELECT valor FROM livro WHERE cod_livro = livro_cod);
		IF codigo_pedido IN (SELECT cod_pedido FROM pedido) THEN
			IF cliente_cod = (SELECT cod_cliente_fk FROM pedido WHERE cod_pedido = codigo_pedido) AND funcionario_cod = (SELECT cod_funcionario_fk FROM pedido WHERE cod_pedido = codigo_pedido) THEN
				INSERT INTO item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)VALUES(quantidade, preco, livro_cod, codigo_pedido);
				SET mensagem = "Venda efetuada com sucesso";
            ELSE
				SET mensagem = "A venda ja existe, parâmetros passados não corresponderam";
			END IF;
		ELSE
			SET codigo_pedido = (SELECT count(*) + 1 FROM pedido);
			INSERT INTO pedido(cod_pedido, cod_cliente_fk, cod_funcionario_fk, data)VALUES(codigo_pedido, cliente_cod, funcionario_cod, current_date());
			INSERT INTO item_pedido(quantidade_pedido, valor_item, livro_cod_livro, pedido_cod_pedido)VALUES(quantidade, preco, livro_cod, codigo_pedido);
			SET mensagem = "Venda efetuada com sucesso";
        END IF;
		UPDATE
			pedido 
		SET 
			valor_pedido = 
		(SELECT 
			sum(quantidade_pedido * valor_item)
		FROM 
			item_pedido
		WHERE 
			pedido_cod_pedido = codigo_pedido)
		WHERE
			cod_pedido = codigo_pedido;
	ELSE
		SET mensagem = "Verifique os códigos passados como parâmetro";
	END IF;
	SELECT mensagem;
END
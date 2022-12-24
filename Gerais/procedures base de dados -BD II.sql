
CREATE PROCEDURE `adicionar_categoria` (nome_param varchar(50), desconto_param int)
BEGIN
	INSERT INTO categoria (nome, desconto) VALUES (nome_param, desconto_param);
END

CREATE PROCEDURE `adicionar_produto` 
(nome_param varchar(45), valor_param decimal(10,2), descricao_param varchar(150), id_loja int, id_categoria int)
BEGIN
	INSERT INTO produtos (Nome, Valor, Descricao, Loja_idLoja, Categoria_idCategoria) 
    VALUES (nome_param, valor_param, descricao_param, id_loja, id_categoria);
END

CREATE PROCEDURE `adicionar_cliente_caso_cidade` 
(nome_param varchar(45), idade_param int, cpf_param varchar(12), endereco_param varchar(45))
BEGIN
	DECLARE mensagem varchar(45);
	IF endereco_param = 'São Jeronimo' THEN
		INSERT INTO cliente (Nome, Idade, CPF, Endereco) 
        VALUES (nome_param, idade_param, cpf_param, endereco_param);
        SET mensagem = "Cliente adicionado com sucesso";
	ELSE
		SET mensagem = 'Não é possivel adicionar esse cliente';
	END IF;
    SELECT mensagem;
END

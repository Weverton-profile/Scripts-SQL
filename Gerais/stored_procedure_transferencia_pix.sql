CREATE DEFINER=`root`@`localhost` PROCEDURE `operacao_tranferencia`( in idConta_A int, in idConta_B int, in valor_op double)
BEGIN
	declare teste double;
	set autocommit = 0;
    set teste = (select saldo from conta_corrente where cliente_idCliente = idConta_A ) - valor_op;
	IF teste < 0 THEN
		ROLLBACK;
           SELECT 'Falhouuuu';
	else 
    	START TRANSACTION;
		UPDATE conta_corrente SET saldo = saldo - valor_op WHERE cliente_idCliente = idConta_A;
        UPDATE conta_corrente SET saldo = saldo + valor_op WHERE cliente_idCliente = idConta_B; 
        INSERT INTO log(descricao) 
        VALUES (concat('O client de ID: ', idConta_A, ', Transferiu ', valor_op, ', Para o Cliente de ID:', idConta_B));
        INSERT INTO lancamento (valor, desconto, taxa, tipo, dt_lancamento, contaC_idCC) 
		VALUES (valor_op, 0, 0,'pix', curdate(), idConta_A);
	COMMIT;
    END IF;
END
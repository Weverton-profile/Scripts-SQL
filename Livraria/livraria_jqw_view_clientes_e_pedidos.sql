CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_clientes_e_pedidos` AS
    SELECT 
        `cliente`.`cod_cliente` AS `cod_cliente`,
        `cliente`.`nome` AS `nome`,
        `pedido`.`cod_pedido` AS `cod_pedido`,
        `pedido`.`valor_pedido` AS `valor_pedido`
    FROM
        (`cliente`
        LEFT JOIN `pedido` ON ((`cliente`.`cod_cliente` = `pedido`.`cod_cliente_fk`)))
    WHERE
        (`pedido`.`valor_pedido` IS NOT NULL)
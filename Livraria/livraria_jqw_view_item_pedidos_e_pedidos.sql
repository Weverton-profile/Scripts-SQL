CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_item_pedidos_e_pedidos` AS
    SELECT 
        `item_pedido`.`livro_cod_livro` AS `cod_livro`,
        `pedido`.`cod_pedido` AS `cod_pedido`,
        `pedido`.`cod_cliente_fk` AS `cod_cliente`,
        `pedido`.`cod_funcionario_fk` AS `cod_funcionario`,
        `item_pedido`.`valor_item` AS `valor_item`,
        `item_pedido`.`quantidade_pedido` AS `quantidade_pedido`,
        `pedido`.`valor_pedido` AS `valor_total`
    FROM
        (`item_pedido`
        LEFT JOIN `pedido` ON ((`item_pedido`.`pedido_cod_pedido` = `pedido`.`cod_pedido`)))
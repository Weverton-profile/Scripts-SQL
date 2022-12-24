CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_funcionarios_e_pedidos` AS
    SELECT 
        `funcionario`.`cod_funcionario` AS `cod_funcionario`,
        `funcionario`.`nome` AS `nome`,
        `funcionario`.`cargo` AS `cargo`,
        `pedido`.`cod_pedido` AS `cod_pedido`,
        `pedido`.`valor_pedido` AS `valor_pedido`
    FROM
        (`funcionario`
        LEFT JOIN `pedido` ON ((`funcionario`.`cod_funcionario` = `pedido`.`cod_funcionario_fk`)))
    WHERE
        (`pedido`.`valor_pedido` IS NOT NULL)
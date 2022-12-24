CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_livros_e_categorias` AS
    SELECT 
        `livro`.`cod_livro` AS `cod_livro`,
        `livro`.`titulo` AS `titulo`,
        `livro`.`nome_livro` AS `nome_livro`,
        `livro`.`autor` AS `autor`,
        `livro`.`ano_publicacao` AS `ano_publicacao`,
        `livro`.`valor` AS `valor`,
        `categoria`.`nome` AS `nome`
    FROM
        (`livro`
        LEFT JOIN `categoria` ON ((`livro`.`cod_categoria_fk` = `categoria`.`cod_categoria`)))
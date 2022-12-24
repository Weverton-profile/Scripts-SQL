CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_editoras_e_livros` AS
    SELECT 
        `editora`.`cod_editora` AS `cod_editora`,
        `editora`.`nome_editora` AS `nome_editora`,
        `livro`.`cod_livro` AS `cod_livro`,
        `livro`.`titulo` AS `titulo`,
        `livro`.`valor` AS `valor`
    FROM
        (`livro`
        LEFT JOIN `editora` ON ((`livro`.`cod_editora_fk` = `editora`.`cod_editora`)))
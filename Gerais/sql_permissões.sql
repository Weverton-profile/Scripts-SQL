create role
	empresa_empre,
    empresa_sup;

/* o empresa_sup pode fazer qualquer alteração em alocação */
grant all on empresa1.alocacao to empresa_sup;
CREATE USER first_sup@localhost IDENTIFIED BY 'root';
GRANT empresa_sup
TO first_sup@localhost;
SHOW GRANTS
FOR first_sup@localhost
USING empresa_sup;
SET DEFAULT ROLE ALL TO first_sup@localhost;

/* o empresa_sup so tem acesso a algumas informações do empregado */
grant select(nome, supervisor, depto) on empresa1.empregado to empresa_sup;

 /* o empresa_empre pode apenas ver as alocações */
grant select on empresa1.alocacao to empresa_empre;
CREATE USER first_emp@localhost IDENTIFIED BY 'root';
GRANT empresa_empre
TO first_emp@localhost;
SHOW GRANTS
FOR first_emp@localhost
USING empresa_empre;
SET DEFAULT ROLE ALL TO first_emp@localhost;

 /* o empresa_empre pode ver apenas algumas informações do projeto */
grant select(nome, localp, depart, dataInicio, DataPrevTermin) on empresa1.projeto to empresa_sup;
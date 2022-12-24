/* Adicionar Clientes */

insert into cliente(nome, telefone_1, email)values('Francisco Wesley', '11 11111111', 'francisco@wesley.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Gessilene Pereira', '22 22222222', '22 11111111', 'gessilene@pereira.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Rozirene Pereira','33 33333333', '33 22222222', 'rozirene@pereira.com');
insert into cliente(nome, telefone_1, email)values('Antonio Bernardino', '44 44444444', 'antonio@bernardino.com');
insert into cliente(nome, telefone_1, email)values('Silvano Macedo', '55 55555555', 'silvano@macedo.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Antonio Luis','66 66666666', '66 55555555', 'antonio@luis.com');
insert into cliente(nome, telefone_1, email)values('Luis Felipe', '77 77777777', 'luis@felipe.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Antonio Pereira Neto','88 888888', '88 77777777', 'antonio@neto.com');
insert into cliente(nome, telefone_1, email)values('Leonilia Maria', '99 99999999', 'leonilia@maria.com');
insert into cliente(nome, telefone_1, email)values('Nelito Pereira', '21 21212121', 'nelite@pereira.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Vanderlei Vitor','32 32323232', '32 32323131', 'vanderlei@vitor.com');
insert into cliente(nome, telefone_1, email)values('Paulo Henrique', '43 43434343', 'paulo@henrique.com');
insert into cliente(nome, telefone_1, telefone_2, email)values('Luciele dos Reis','54 54545454', '54 54545353', 'luciele@reis.com');
insert into cliente(nome, telefone_1, email)values('Karla Estela', '65 65656565', 'karla@estela.com');

/* Adicionar Pessoa Fisica */

insert into pessoa_fisica(cpf, cliente_cod_cliente)values('012.345.678-99', 1);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('023.456.789-00', 2);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('034.567.890-11', 5);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('045.678.901-22', 6);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('056.789.012-33', 9);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('078.890.123-44', 10);
insert into pessoa_fisica(cpf, cliente_cod_cliente)values('089.901.234-55', 13);

/* Adicionar Pessoa Juridica */

insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('12345678910121', 3);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('23456789021232', 4);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('34567890132343', 7);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('45678901243454', 8);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('56789012354565', 11);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('67890123465656', 12);
insert into pessoa_juridica(cnpj, cliente_cod_cliente)values('78901234576767', 14);

/* Adicionar Editoras */

insert into editora(nome_editora, telefone_1, email)values('Record', '11 22222222', 'record@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Pandorga Editora', '22 3333333', '22 32323232', 'pandorga@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Darkside', '33 44444444', '33 43434343', 'darkside@editora.com');
insert into editora(nome_editora, telefone_1, email)values('HarperCollins', '44 55555555', 'harpercollins@editora.com');
insert into editora(nome_editora, telefone_1, email)values('Universo dos Livros', '55 66666666', 'universolivros@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Galera', '66 77777777', '66 76767676', 'galera@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Via Leitura', '77 88888888', '77 87878787', 'vialeitura@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Intrínseca', '88 99999999', '88 98989898', 'intri@editora.com');
insert into editora(nome_editora, telefone_1, email)values('Alt', '99 10101010',  'alt@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Globo Livros', '10 12121212', '10 13131313', 'globolivros@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Panini', '12 14141414', '12 15151515', 'panini@editora.com');
insert into editora(nome_editora, telefone_1, email)values('WMF Martins Fontes', '13 16161616', 'wmf@editora.com');
insert into editora(nome_editora, telefone_1, telefone_2, email)values('Editora JBC', '14 17171717', '14 18181818', 'jbc@editora.com');

/* Adicionar Funcionarios */

insert into funcionario(nome, telefone_1, email, cargo)values('Juscelino Dias', '86 81921022', 'juscelinodias@aluno.uespi.br', 'Supervisor de vendas');
insert into funcionario(nome, telefone_1, telefone_2, email, cargo)values('Quemia C Alves', '86 99718941', '86 99839973', 'quemiacaroline@aluno.uespi.br', 'Vendedor');
insert into funcionario(nome, telefone_1, telefone_2, email, cargo)values('Weverton Alves', '86 88450178', '86 99561289', 'darkside@funcionario.com', 'Vendedor');

/* Adicionar Cateogoria */

insert into categoria(nome)values('Fantasia');
insert into categoria(nome)values('Horror');
insert into categoria(nome)values('Ficção Científica');
insert into categoria(nome)values('Romance');
insert into categoria(nome)values('Policial');
insert into categoria(nome)values('Suspense');
insert into categoria(nome)values('Mistério');
insert into categoria(nome)values('Erótico');
insert into categoria(nome)values('HQs, Mangás e Graphic Novels');

/* Adicionando Livros */

insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 6, 'Cidade da Lua Crescente', 'Casa de terra e sangue', 'Sarah J. Maas', '2020', 50.30);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 6, 'O príncipe cruel', 'Vol. 1 O Povo do Ar', 'Holly Black', '2018', 29.40);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 4, 'O Senhor dos Anéis', 'A Sociedade do Anel', 'J.R.R. Tolkien', '2019', 46.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 4, 'O Senhor dos Anéis', 'As Duas Torres', 'J.R.R. Tolkien', '2019', 46.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 4, 'O Senhor dos Anéis', 'O Retorno do Rei', 'J.R.R. Tolkien', '2019', 46.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 10, 'Harry Potter', 'Pedra Filosofal', 'J.K. Rowling', '2017', 23.49);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 10, 'Harry Potter', 'Câmara Secreta', 'J.K. Rowling', '2017', 24.88);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(1, 10, 'Harry Potter', 'Prisioneiro de Azkaban', 'J.K. Rowling', '2017', 29.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(2, 2, 'Carmilla', 'A vampira de Karnstein', 'Le Fanu J. Sheridan', '2021', 19.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(2, 8, 'A Sociedade de Atlas', 'A Sociedade de Atlas – Vol. 1', 'Olivie Blake', '2021', 48.93);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(2, 9, 'Misery', 'Louca obsessão', 'Stephen King', '2014', 29.32);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(2, 9, 'It', 'A Coisa', 'Stephen King', '2014', 57.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(2, 3, 'Drácula', 'Dark Edition', 'Bram Stoker', '2018', 47.50);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 8, 'Jogador Número Um', 'Duologia Jogador Número Um – Vol. 1', 'Ernest Cline', '2021', 36.77);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 5, 'Estilhaça-me', 'A série completa', 'Tahereh Mafi', '2020', 129.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 8, 'Stranger Things', 'Raízes Do Mal: Série Stranger Things - Volume 1', 'Gwenda Bond', '2019', 41.99);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 1, 'A batalha do apocalipse', 'Da queda dos anjos ao crepúsculo do mundo', 'Eduardo Spohr', '2010', 52.43);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 3, 'STAR WARS', 'DARK EDITION', 'George Lucas', '2019', 49.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 7, 'O Guia do Mochileiro das Galáxias', 'O guia definitivo', 'Douglas Adams', '2020', 51.86);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(3, 12, 'Duna', 'Messias de Duna', 'Frank Herbert', '2021', 79.92);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 9, 'Todo esse tempo', 'Rachael Lippincott', '2020', 41.58);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 6, 'Todas as suas (im)perfeições', 'Colleen Hoover', '2019', 34.83);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 9, 'Até o verão terminar', 'Colleen Hoover', '2021', 28.50);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 8, 'Um Lugar Bem Longe Daqui', 'Delia Owens', '2019', 37.99);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 12, 'Orgulho e preconceito', 'Jane Austen', '2018', 35.12);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 8, 'Um Caminho Para A Liberdade', 'Jojo Moyes', '2019', 29.99);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(4, 12, 'O morro dos ventos uivantes', 'Emily Brontë', '2019', 14.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 10, 'E não sobrou nenhum', 'Agatha Christie', '2014', 31.04);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 1, 'A paciente silenciosa', 'Alex Michaelides', '2019', 26.58);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 12, 'Morte no internato', 'Lucinda Riley', '2022', 42.17);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 6, 'Um de nós está mentindo', 'Karen M. McManus', '2018', 33.34);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 12, 'Uma mulher no escuro', 'Raphael Montes', '2019', 46.32);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 12, 'Mr. Mercedes', 'Stephen King', '2016', 38.75);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(5, 12, 'Canção de ninar', 'Leila Slimani', '2018', 43.40);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(6, 8, 'O Homem de Giz', 'C. J. Tudor', '2018', 47.40);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(6, 1, 'A corrente', 'Adrian McKinty', '2019', 24.99);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(6, 12, 'Eu Sou a Lenda', 'Richard Matheson', '2015', 47.17);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(6, 3, 'Menina Má', 'William March', '2016', 46.70);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(6, 8, 'A Lista de Convidados', 'Lucy Foley', '2021', 36.80);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(7, 3, 'O Colecionador', 'John Fowles', '2018', 41.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(7, 4, 'Assassinato no Expresso do Oriente', 'Agatha Christie', '2021', 31.04);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(7, 9, 'Battle Royale', 'Koushun Takami', '2014', 62.00);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(7, 4, 'Sherlock Holmes', 'Um estudo em vermelho', 'Arthur Conan Doyle', '2019', 31.41);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(7, 4, 'Sherlock Holmes', 'O vale do medo', 'Arthur Conan Doyle', '2021', 31.41);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(8, 12, 'The Ballad of Sexual Dependency', 'Nan Goldin', '2012', 267.99);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(8, 12, 'Pussycat! Kill!kill!kill!', 'Hajime Sorayama', '2014', 466.00);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(8, 12, 'Com toda pureza', 'Tim Chester', '2020', 34.08);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(8, 12, 'A Louca do Sagrado Coração', 'Alejandro Jodorowsky', '2019', 53.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(8, 12, 'Um casamento conveniente', 'Tessa Dare', '2019', 37.33);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(9, 11, 'Berserk', 'Vol. 3: Edição de Luxo', 'Kentaro Miura', '2022', 24.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(9, 11, 'Sandman', 'Edição Especial 30 Anos: Volume 7', 'Neil Gaiman', '2022', 46.76);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, autor, ano_publicacao, valor)
values(9, 8, 'Biblioteca Gaiman', 'Neil Gaiman', '2021', 22.90);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(9, 13, 'Tokyo Revengers', 'Vol. 01', 'Ken Wakui', '2022', 25.40);
insert into livro(cod_categoria_fk, cod_editora_fk, titulo, nome_livro, autor, ano_publicacao, valor)
values(9, 13, 'Death Note', 'Black Edition - Volume 1', 'Tsugumi Ohba', '2022', 37.40);
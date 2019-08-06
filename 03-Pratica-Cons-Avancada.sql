/* Criando um banco de dados */
create database dh_sistema;
/* Indicando qual banco de dados iremos trabalhar */
use dh_sistema;

/* Criando tabela Professores */
create table professores (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf char(11) unique
);

/* Criando tabela Alunos */
create table alunos (
	id int(11) auto_increment primary key not null,
	nome varchar(30),
    email varchar(30),
    cpf char(11) unique
);

/* Criando tabela Cursos */
create table cursos (
	id int(11) auto_increment primary key not null,
    descricao varchar(30)
);

/* Criando tabela Turmas */
create table turmas (
	id int(11) auto_increment primary key not null,
    descricao varchar(30)
);

/* Criando tabela Turmas_geradas */
create table turmas_geradas(
	id int(11) auto_increment primary key not null,
    id_alunos int(11),
    id_professores int(11),
    id_cursos int(11),
    id_turmas int(11)
);

/* Adicionando chave estrangeira na coluna id_alunos */
alter table turmas_geradas add foreign key (id_alunos)
references alunos (id);

/* Adicionando chave estrangeira na coluna id_professores */
alter table turmas_geradas add foreign key (id_professores)
references professores (id);

/* Adicionando chave estrangeira na coluna id_cursos */
alter table turmas_geradas add foreign key (id_cursos)
references cursos (id);

/* Adicionando chave estrangeira na coluna id_turmas */
alter table turmas_geradas add foreign key (id_turmas)
references turmas (id);

/* Inserindo registros na tabela cursos, informando colunas e 
valores respectivos para estas colunas */
insert into cursos (descricao) values 
('UX'), ('Data Science'), ('Data Analytics'),
('Mobile Android'), ('Web Full Stack'), ('Mobiel IOS'), 
('GND'), ('Marketing Digital');

/* Inserindo registros na tabela professores, informando colunas e 
valores respectivos para estas colunas */
insert into professores (nome, email, cpf) values
('Marcelo', 'marcelo@digitalhouse.com', 11111111111),
('Victor', 'victor@digitalhouse.com', 22222222222),
('João', 'joao@digitalhouse.com', 33333333333),
('Caio', 'caio@digitalhouse.com', 44444444444),
('Felipe', 'felipe@digitalhouse.com', 55555555555),
('Hendy', 'hendy@digitalhouse.com', 66666666666),
('Jéssica', 'jessica@digitalhouse.com', 77777777777),
('Erica', 'fernando@digitalhouse.com', 88888888888),
('Thomaz', 'thomaz@digitalhouse.com', 99999999999),
('William', 'william@digitalhouse.com', 10101010101);

/* Inserindo registros na tabela alunos */
insert into alunos (nome, email, cpf) values 
('Leonardo', 'leonardo@aluno.com', 00000000001),
('Patrick', 'patrick@aluno.com', 00000000002),
('Poliana', 'poliana@aluno.com', 00000000003),
('Paulo', 'paulo@aluno.com', 00000000004),
('Lais', 'lais@aluno.com', 00000000005),
('Vinicius', 'vinicius@aluno.com', 00000000006),
('Cibele', 'cibele@aluno.com', 00000000007),
('Walburga', 'walburga@aluno.com', 00000000008),
('Sérgio', 'sergio@aluno.com', 00000000009),
('Jorge', 'jorge@aluno.com', 00000000010),
('Diogo', 'poliana@aluno.com', 00000000011),
('Fernando', 'fernando@aluno.com', 00000000012),
('Rodolfo', 'rodolfo@aluno.com', 00000000013),
('Juliano', 'juliano@aluno.com', 00000000014),
('Davi', 'davi@aluno.com', 00000000015),
('Rodrigo', 'rodrigo@aluno.com', 00000000016),
('Eduardo', 'eduardo@aluno.com', 00000000017),
('Renato', 'renato@aluno.com', 00000000018),
('Artur', 'artur@aluno.com', 00000000019),
('Irailton', 'irailton@aluno.com', 00000000020),
('Edney', 'edney@aluno.com', 00000000021),
('Marcelo', 'marcelo@aluno.com', 00000000022),
('Elba', 'elba@aluno.com', 00000000023),
('Harry', 'harry@aluno.com', 00000000024),
('Johnny', 'johnny@aluno.com', 00000000025),
('Jane', 'jane@aluno.com', 00000000026),
('Filomena', 'filomena@aluno.com', 00000000027),
('Abirosvaldo', 'abirosvaldo@aluno.com', 00000000028),
('Janaína', 'janaina@aluno.com', 00000000029),
('Juliana', 'juliana@aluno.com', 00000000030),
('Elton', 'elton@aluno.com', 00000000031),
('Ramiro', 'ramiro@aluno.com', 00000000032);

/* Inserindo registros na tabela turmas */
insert into turmas (descricao) values
('Full Stack 01'), ('Marketing Digital 01'),
('Full Stack Blend 01'), ('Marketing Digital Blend 01'),
('UX 01');

insert into turmas_geradas 
(id_alunos, id_professores, id_cursos, id_turmas) values
(1, 1, 2, 1), (2, 1, 2, 1), (3, 1, 2, 1), (4, 1, 2, 1),
(5, 1, 2, 1), (6, 1, 2, 1),
(7, 4, 8, 2), (8, 4, 8, 2), (9, 4, 8, 2), (10, 4, 8, 2),
(11, 4, 8, 2), (12, 4, 8, 2), (13, 2, 2, 3), (14, 2, 2, 3),
(15, 2, 2, 3), (16, 2, 2, 3), (17, 2, 2, 3), (18, 2, 2, 3),
(19, 5, 8, 4), (20, 5, 8, 4), (21, 5, 8, 4), (22, 5, 8, 4),
(23, 5, 8, 4), (24, 5, 8, 4), (25, 3, 1, 5), (26, 3, 1, 5),
(27, 3, 1, 5), (28, 3, 1, 5), (29, 3, 1, 5), (30, 3, 1, 5);


use dh_sistema;

/* Cláusula LIKE */

/* 1º método - utilizando coringa antes do caracter
indicamos que queremos buscar nomes finalizados com a letra O */
select * from alunos
where nome like '%o';

/* 2º método - utilizando coringa depois do caracter
indicamos que queremos buscar nomes iniciados com a letra P */
select * from alunos
where nome like 'p%';

/* 3º método - utilizando o caracter entre coringas
indicamos que queremos buscar nomes que possuam uma letra específica */
select * from alunos
where nome like '%n%';

/* 4º método - utilizando _ como um caracter desconhecido */
select * from alunos
where nome like '____';

/* Busca para exibir nomes com o segundo caracter sendo a letra A */
select * from alunos
where nome like '_a%';

/* Busca para exibir nomes com o último caracter sendo a letra D */
select * from alunos
where nome like '%d_';

/* Busca para exibir o primeiro caracter sendo P 
e o último caracter sendo O */
select * from alunos
where nome like 'p%o';

/* Busca para exibir apenas alunos que possuam gmail */
insert into alunos (nome, email, cpf) values ('Bira', 'bira@gmail.com', '98765432101');
select * from alunos
where email like '%gmail.com';

/* NOT LIKE - utilizando o caracter que não queremos
que o campo específico possua, neste caso estamos efetuando
uma consulta que retornará apenas alunos sem a letra O no nome */
select * from alunos
where nome not like '%o%';

/* Criando tabela test_salarios para trabalhar com funções de agregação */
create table teste_salario (
	id int(11) primary key auto_increment not null,
    nome varchar(20),
    valor decimal(10,2)
);

/* Inserindo registros na tabela teste_salario */
insert into teste_salario (nome, valor) values
('A', 2000), ('B', 4000), 
('C', 1000), ('D', 6000), 
('E', 15000), ('F', 12500.90);

/* COUNT() - retorna quantidade de registros em uma tabela */
select COUNT(*) from teste_salario;

/* MIN() - retorna o registro com valor mínimo em uma coluna */
select MIN(valor) from teste_salario;

/* MAX() - retorna o registro com maior valor em uma coluna */
select MAX(valor) from teste_salario;

/* SUM() - retorna a soma dos valores em uma coluna */
select SUM(valor) from teste_salario;

/* AVG() - retorna a média aritmética dos valores em uma coluna */
select AVG(valor) from teste_salario;

/* GROUP BY - retorna os registros agrupados por uma coluna específica */

/* Agrupando quantidade de alunos por turmas */
select id_turmas as turma, COUNT(*) as qtd_alunos from turmas_geradas
group by id_turmas;

/* Agrupando quantidade de professores lecionando nestas turmas */
select id_professores as professor, id_turmas as turma 
from turmas_geradas
group by id_professores, id_turmas;

/* Alias - Atribuindo apelido a uma coluna da nossa tabela 
para exibir no momento da consulta */

/* Atribuindo apelido turma para a coluna id_turmas e 
apelido professor para a coluna id_professores */
select id_turmas as turma, id_professores as professor
from turmas_geradas;

/* JOINS */

/* INNER JOIN - exibe registros que possuam 
valores correspondentes na tabela A e tabela B */

/* INNER JOIN - turmas_geradas e alunos */
select t.id_alunos, a.nome from turmas_geradas as t
inner join alunos as a on (t.id_alunos = a.id);

/* INNER JOIN - turmas_geradas e professores */
select t.id_professores, p.nome from turmas_geradas as t
inner join professores as p on (t.id_professores = p.id);

/* INNER JOIN - turmas_geradas e cursos */
select t.id_cursos, c.descricao from turmas_geradas as t
inner join cursos as c on (t.id_cursos = c.id);


/* INNER JOIN - turmas_geradas, cursos, professores, alunos, turmas */
select a.nome as Aluno, p.nome as Professor, 
c.descricao as Curso, tu.descricao as Turma
from turmas_geradas as t
inner join alunos as a on (t.id_alunos = a.id)
inner join professores as p on (t.id_professores = p.id)
inner join cursos as c on (t.id_cursos = c.id)
inner join turmas as tu on (t.id_turmas = tu.id);


